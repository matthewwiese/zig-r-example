pub usingnamespace @cImport({
    @cInclude("R.h");
    @cInclude("Rinternals.h");
});

// APL's iota, basically seq(n)
export fn iota_(n: SEXP) SEXP {
    var n_int: i64 = asInteger(n);
    var result: SEXP = PROTECT(allocVector(INTSXP, n_int));
    var i: usize = 0;
    var c: c_int = 1;
    while (i < n_int) {
        INTEGER(result)[i] = c;
        i += 1;
        c += 1;
    }
    UNPROTECT(1);
    return result;
}
