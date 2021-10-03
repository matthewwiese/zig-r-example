const R = @cImport({
    @cInclude("R.h");
    @cInclude("Rinternals.h");
});

// APL's iota, basically seq(n)
export fn iota_(n: R.SEXP) R.SEXP {
    var n_int: i64 = R.asInteger(n);
    var result: R.SEXP = R.PROTECT(R.allocVector(R.INTSXP, n_int));
    var i: usize = 0;
    var c: c_int = 1;
    while (i < n_int) {
        R.INTEGER(result)[i] = c;
        i += 1;
        c += 1;
    }
    R.UNPROTECT(1);
    return result;
}
