#include <stdio.h>
#include <stdlib.h>
#include "mpc.h"

#include <editline/readline.h>

typedef struct {
    int type;
    long num;
    int err;
} lval;

enum { LVAL_NUM, LVAL_ERR};
enum { LERR_DIV_ZERO, LERR_BAD_OP, LERR_BAD_NUM };

lval lval_num(long x) {
    lval v;
    v.type = LVAL_NUM;
    v.num = x;
    return v;
}

lval lval_err(int x) {
    lval v;
    v.type = LVAL_ERR;
    v.err = x;
    return v;
}

void lval_print(lval v) {
    switch (v.type) {
            case LVAL_NUM: printf("%li", v.num); break;
            case LVAL_ERR:
                if (v.err == LERR_DIV_ZERO) {
                    printf("Error: Division by zero.");
                } else if (v.err == LERR_BAD_OP) {
                    printf("Error: Invalid Operator.");
                } else if (v.err == LERR_BAD_NUM) {
                    printf("Error: Invalid number.");
                }
            break;
    }
}

void lval_println(lval v) {
    lval_print(v);
    putchar('\n');
}

void print_node(mpc_ast_t* n) {
    printf("node tag: %s, contents: %s, num children: %d ", n->tag, n->contents, n->children_num);
    if (strstr(n->tag, "number")) { printf("number node! "); }
    if (strstr(n->tag, "operator")) { printf("operator node! "); }
    printf("\n");
}

int count_leaves(mpc_ast_t* n) {
    //leaf node right here!
    if (strstr(n->tag, "number") || strstr(n->tag, "operator")) {
        return 1;
    } else if (strstr(n->tag, "regex")) {
    //ignore regex
        return 0;
    } else {
    //answer is the sum of the children
        int ret = 0;
        for (int i = 0; i < n->children_num; i++) {
            ret = ret + count_leaves(n->children[i]);
        }
        return ret;
    }
}

lval eval_op(lval x, char* op, lval y) {
    if (x.type == LVAL_ERR) { return x; }
    if (y.type == LVAL_ERR) { return y; }
    if (strcmp(op, "+") == 0) { return lval_num(x.num + y.num); }
    if (strcmp(op, "-") == 0) { return  lval_num(x.num - y.num); }
    if (strcmp(op, "*") == 0) { return lval_num(x.num * y.num); }
    if (strcmp(op, "/") == 0) {
        return y.num == 0
            ? lval_err(LERR_DIV_ZERO)
            : lval_num(x.num / y.num);
    }
    if (strcmp(op, "%") == 0) {
        return y.num == 0
            ? lval_err(LERR_DIV_ZERO)
            : lval_num(x.num % y.num);
    }
    if (strcmp(op, "^") == 0) { return lval_num(powl(x.num, y.num)); }
    if (strcmp(op, "min") == 0) { return lval_num(fminl(x.num, y.num)); }

    return lval_err(LERR_BAD_OP);

}

lval eval(mpc_ast_t* t) {
    /* number tag then return err if not valid number or number if valid */
    if (strstr(t->tag, "number")) {
        errno = 0;
        long x = strtol(t->contents, NULL, 10);
        return errno != ERANGE ? lval_num(x) : lval_err(LERR_BAD_NUM);
    }

    /* operator is 2nd child, store 3rd child in x */
    char* op = t->children[1]->contents;
    lval x = eval(t->children[2]);
    /* iterate remaining children */
    int i = 3;
    while (strstr(t->children[i]->tag, "expr")) {
        x = eval_op(x, op, eval(t->children[i]));
        i++;
    }
    return x;
}

int main(int argc, char** argv) {

    mpc_parser_t* Number = mpc_new("number");
    mpc_parser_t* Operator = mpc_new("operator");
    mpc_parser_t* Expr = mpc_new("expr");
    mpc_parser_t* Lispy = mpc_new("lispy");

    mpca_lang(MPCA_LANG_DEFAULT,
              " \
              number    : /-?[0-9]+/ ;  \
              operator  : '+' | '-' | '*' | '/' | '%' | '^' ; \
              expr      : <number> | '(' <operator> <expr>+ ')' ; \
              lispy     : /^/ <operator> <expr>+ /$/ ; \
              ",
              Number, Operator, Expr, Lispy);

	puts("Lispy Version 0.1");
	puts("Press Ctl+C to Exit\n");

	while (1) {
		char* input = readline("lispy> ");
		if (strcmp(input, "ex") == 0) {
            return 0;
		}
		add_history(input);
		mpc_result_t r;
		if (mpc_parse("<stdin>", input, Lispy, &r)) {
            mpc_ast_print(r.output);
            lval result = eval(r.output);
            lval_println(result);
            mpc_ast_delete(r.output);
		} else {
            mpc_err_print(r.error);
            mpc_err_delete(r.error);
        }
		free(input);
	}
    mpc_cleanup(4, Number, Operator, Expr, Lispy);

	return 0;
}
