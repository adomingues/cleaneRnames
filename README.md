# cleaneRnames

This and extremely simple, single-function package. The single goal of `cleaneRnames` is to improve the output of `base::make.names` in two ways:

- replace multiple spaces with a simple separator.
- add an option to use user defined separator.

## Example

This is a basic example which shows you how to solve a common problem:

```r
## basic example code
some_col <- c(
    "I once",
    "got   some weird",
    "tables",
    "from.a.collaborator")
```

Using `make.names` each and every space will be converted to `.`:

```r
make.names(some_col)
```

And using the package:

```r
library(cleaneRnames)
clean_names(some_col)
clean_names(some_col, replace.all=F, sep="_")
clean_names(some_col, sep="_")
clean_names(some_col, sep="+")
```


## Motivation and Goal 

This package doesn't have lofty aspirations and it is merely an excuse to start writing `R` packages.

It all started with a [tweet](https://twitter.com/keyboardpipette/status/943110804819382273) in which I was happy to have discovered how a simple `base` function, `make.names` could be so useful and yet unknown to me. Following some discussion it soon became clear that there was room for improvement. For instance, `make.names` used `.` to separate strings, and does not allow setting other separators. There are also some weird `colnames` with multiple `spaces` and each gets converted to an `.` resulting and syntactically valid `R names` but not very human-readable (see example above).

So I took the challenge by [Ryan Estrellado](https://github.com/restrellado) and wrote a function/package.

The package `janitor` already [does](https://garthtarr.github.io/meatR/janitor.html) something similar, but since my primary goal was to write my first R package, I continued anyway if if there is duplicated functionality. 

## Credits

Special thanks to [Ryan Estrellado](https://github.com/restrellado) for [suggesting](https://twitter.com/RyanEs/status/943566380879638528) that this could turn into a package and the inclusion of `sep=`. 

I read/used several tutorials packages that helped me immensely:
- Jenny Brian's [usethis](https://github.com/r-lib/usethis)
- Karl Broman's [R package primer](http://kbroman.org/pkg_primer/) 