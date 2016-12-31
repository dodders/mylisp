#include <stdio.h>
#include <stdlib.h>
#include "mpc.h"

#include <editline/readline.h>

typedef struct lval {
    int type;
    long num;
    char* err;
    char* sym;
    int count;
    struct lval** cell;
} lval;

enum { LVAL_NUM, LVAL_ERR, LVAL_SYM, LVAL_SEXPR };
enum { LERR_DIV_ZERO, LERR_BAD_OP, LERR_BAD_NUM };

lval* lval_num(long x) {
    lval* v = malloc(sizeof(lval));
    v->type = LVAL_NUM;
    v->num = x;
    return v;
}

lval* lval_err(char* m) {
    lval* v = malloc(sizeof(lval));
    v->type = LVAL_ERR;
    v->err = malloc(strlen(m) + 1);
    strcpy(v->err, m);
    return v;
}

lval* lval_sym(char* s) {
    lval* v = malloc(sizeof(lval)) ;
    v->type = LVAL_SYM;
    v->sym = malloc(strlen(s) + 1);
    strcpy(v->sym, s);
    return v;
}

lval* lval_sexpr(void) {
    lval* v = malloc(sizeof(lval));
    v->type = LVAL_SEXPR;
    v->count = 0;
    v->cell = NULL;
    return v;
}

void lval_del(lval* v) {
    switch (v->type) {
        case LVAL_NUM: break;
        case LVAL_ERR: free(v->err); break;
        case LVAL_SYM: free(v->sym); break;
        case LVAL_SEXPR:
            for (int i = 0; i < v->count; i++) {
                lval_del(v->cell[i]);
            }
            free(v->cell);
            break;
        }
    free(v);
}

lval* lval_read_num(mpc_ast_t* t) {
    errno = 0;
    long x = strtol(t->contents, NULL, 10);
    return errno != ERANGE ?
        lval_num(x) : lval_err("invalid number");
}

lval* lval_add(lval* v, lval* x) {
    v->count++;
    v->cell = realloc(v->cell, sizeof(lval*) * v->count);
    v->cell[v->count - 1] = x;
    return v;
}

lval* lval_read(mpc_ast_t* t) {

    //sym or num then return conversion to that type
    if ((strstr(t->tag, "number"))) { return lval_read_num(t); }
    if ((strstr(t->tag, "symbol"))) { return lval_sym(t->contents); }
    //root (>) or sexpr then create empty list
    lval* x = NULL;
    if (strcmp(t->tag, ">") == 0) { x = lval_sexpr(); }
    if (strcmp(t->tag, "sexpr")) { x = lval_sexpr(); }
    //fill children
    for (int i = 0; i < t->children_num; i++) {
        if (strcmp(t->children[i]->contents, "(") == 0) { continue; }
        if (strcmp(t->children[i]->contents, ")") == 0) { continue; }
        if (strcmp(t->children[i]->contents, "{") == 0) { continue; }
        if (strcmp(t->children[i]->contents, "}") == 0) { continue; }
        if (strcmp(t->children[i]->tag, "regex") == 0) { continue; }
        x = lval_add(x, lval_read(t->children[i]));
    }
    return x;
}

void lval_print(lval* v);

void lval_expr_print(lval* v, char open, char close) {
    putchar(open);
    for (int i = 0; i < v->count; i++) {
        //print value
        lval_print(v->cell[i]);
        if (i != (v->count - 1)) {
            putchar(' ');
        }
    }
    putchar(close);
}

void lval_print(lval* v) {
    switch (v->type) {
        case LVAL_NUM: printf("%li", v->num); break;
        case LVAL_ERR: printf("Error: %s", v->err); break;
        case LVAL_SYM: printf("%s", v->sym); break;
        case LVAL_SEXPR: lval_expr_print(v, '(', ')'); break;
    }
}

void lval_println(lval* v) {
    lval_print(v);
    putchar('\n');
}

void print_node(mpc_ast_t* n) {
    printf("node tag: %s, contents: %s, num children: %d ", n->tag, n->contents, n->children_num);
    if (strstr(n->tag, "number")) { printf("number node! "); }
    if (strstr(n->tag, "operator")) { printf("operator node! "); }
    printf("\n");
}

lval* lval_eval_sexpr(lval* v);

lval* lval_eval(lval* v) {
    printf("lval-eval\n");
    lval_println(v);
    //sexpressions
    if (v->type == LVAL_SEXPR) { return lval_eval_sexpr(v); }
    //other types remaint he same
    return v;
}

lval* lval_pop(lval* v, int i) {
    printf("lval-pop\n");
    lval_println(v);
    //find the item at i
    lval* x = v->cell[i];
    //shift memory after i over the top of i and dec cound
    memmove(&v->cell[i], &v->cell[i+1], sizeof(lval*) * (v->count-i-1));
    v->count--;
    //reallocate
    v->cell = realloc(v->cell, sizeof(lval*) * v->count);
    return x;
}

lval* lval_take(lval* v, int i) {
    printf("lval-take\n");
    lval_println(v);
    lval* x = lval_pop(v, i);
    lval_del(v);
    return x;
}

lval* builtin_op(lval* a, char* op) {
    printf("builtin_op %s\n", op);
    lval_println(a);
    //ensure args are numbers
    for (int i = 0; i < a->count; i++) {
        if (a->cell[i]->type != LVAL_NUM) {
            lval_del(a);
            return lval_err("Cannot operate on a non-number.");
        }
    }
    //if first el has no args then unary negation
    lval* x = lval_pop(a, 0);
    if ((strcmp(op, "-") == 0) && a->count == 0) {
        x->num = -x->num;
    }
    //for the remaining elements
    while (a->count > 0) {
        //pop next
        lval* y = lval_pop(a, 0);
        if (strcmp(op, "+") == 0) { x->num += y->num; }
        if (strcmp(op, "-") == 0) { x->num -= y->num; }
        if (strcmp(op, "*") == 0) { x->num *= y->num; }
        if (strcmp(op, "/") == 0) {
            if (y->num == 0) {
                lval_del(x);
                lval_del(y);
                x = lval_err("Division by zero."); break;
            }
            x->num /= y->num;
        }
        lval_del(y);
    }
    lval_del(a);
    return x;
}

lval* lval_eval_sexpr(lval* v) {
    printf("lval-eval-sexpr\n");
    lval_println(v);
    //children first
    for (int i = 0; i < v->count; i++) {
        v->cell[i] = lval_eval(v->cell[i]);
    }
    //errors
    for (int i = 0; i < v->count; i++) {
        if (v->cell[i]->type == LVAL_ERR) { return lval_take(v, i); }
    }
    //emptys
    if (v->count == 0) { return v; }
    //singles
    if (v->count == 1) { return lval_take(v, 0); }
    //ensure 1st elelemt is single
    lval* f = lval_pop(v, 0);
    if (f->type != LVAL_SYM) {
        lval_del(f);
        lval_del(v);
        return lval_err("S-expression does not start with a symbol.");
    }
    //call builtin with op
    lval* result = builtin_op(v, f->sym);
    lval_del(f);
    return result;
}

int main(int argpac, char** argv) {

    mpc_parser_t* Number = mpc_new("number");
    mpc_parser_t* Symbol = mpc_new("symbol");
    mpc_parser_t* Sexpr = mpc_new("sexpr");
    mpc_parser_t* Expr = mpc_new("expr");
    mpc_parser_t* Lispy = mpc_new("lispy");

    mpca_lang(MPCA_LANG_DEFAULT,
              " \
              number    : /-?[0-9]+/ ;  \
              symbol    : '+' | '-' | '*' | '/' | '%' | '^' ; \
              sexpr     : '(' <expr>* ')' ; \
              expr      : <number> | <symbol> | <sexpr> ; \
              lispy     : /^/ <expr>* /$/ ; \
              ",
              Number, Symbol, Sexpr, Expr, Lispy);

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
            lval* x = lval_read(r.output);
            puts("parsing output:\n");
            lval_println(x);
            lval* y = lval_eval(x);
            puts("eval output:\n");
            lval_println(y);
            mpc_ast_delete(r.output);
		} else {
            mpc_err_print(r.error);
            mpc_err_delete(r.error);
        }
	}
    mpc_cleanup(5, Number, Symbol, Sexpr, Expr, Lispy);

	return 0;
}
