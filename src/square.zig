const R = @cImport({
    @cInclude("R.h");
    @cInclude("Rinternals.h");
});

export fn square_(n: R.SEXP) R.SEXP {
    var squared: f64 = R.asReal(n) * R.asReal(n);
    return R.ScalarReal(squared);
}
