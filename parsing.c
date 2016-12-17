#include <stdio.h>
#include <stdlib.h>
#include "mpc.h"

#include <editline/readline.h>

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

long eval_op(long x, char* op, long y) {
    if (strcmp(op, "+") == 0) { return x + y; }
    if (strcmp(op, "-") == 0) { return x - y; }
    if (strcmp(op, "*") == 0) { return x * y; }
    if (strcmp(op, "/") == 0) { return x / y; }
    if (strcmp(op, "%") == 0) { return x % y; }
    if (strcmp(op, "^") == 0) { return powl(x, y); }
    if (strcmp(op, "min") == 0) { return fminl(x, y); }
    return 0;
}

long eval(mpc_ast_t* t) {
    /* number tag then return */
    if (strstr(t->tag, "number")) {
        return atoi(t->contents);
    }
    /* operator is 2nd child, store 3rd child in x */
    char* op = t->children[1]->contents;
    long x = eval(t->children[2]);
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
		add_history(input);
		mpc_result_t r;
		if (mpc_parse("<stdin>", input, Lispy, &r)) {
            mpc_ast_print(r.output);
            long result = eval(r.output);
            printf("sum of tree is: %li\n", result);
            long ct = count_leaves(r.output);
            printf("count of leaves is: %li\n", ct);
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
