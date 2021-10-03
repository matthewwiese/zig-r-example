# Example R Package using Zig

This repository is an experiment in using [Zig](https://ziglang.org/) as an alternative to C (or [C++](https://github.com/RcppCore/Rcpp)) in R packages.

## Installation

```R
library(devtools)
install_github("matthewwiese/zig-r-example")
```

## Development
### Requirements

The Zig code in this package has been tested using release [0.8.1](https://ziglang.org/download/#release-0.8.1). Make sure you have downloaded Zig and it is available as `zig`.

I've only tested this on Linux (Ubuntu 20.04) so far; please see the [Building](#building) section for more information.

### Local Install

To package and install locally, run the following commands in your terminal. You must be in the parent directory of wherever you cloned this repo.

```bash
R CMD build zig-r-example
R CMD INSTALL zigrexample_0.1.tar.gz
```

### Building

This is where things get... hacky. The "magic" is contained within [`src/Makevars`](src/Makevars), which we are using in a *very* nonstandard way. Eventually, I hope to use `zig cc` and `zig c++` so that heterogenous code is supported without (ideally) any deviation from the normal R package build process.

Since this is still experimental, I'm focusing on refining the ergonomics for my own development environment. Therefore, this package won't work on Windows or macOS yet. However, I see no reason why it *shouldn't* work on Windows or macOS; submit an issue and we can work on it together!