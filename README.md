# cleaneRnames

This and extremely simple, single-function package. The whose goal of `cleaneRnames` is to improve `base::make.names` in two ways:

- replace multiple spaces with a simple separator.
- add an option to use user defined separator.

Ultimately if passes the input to `make.names` and cleans replaces the 

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


## Credits

Special thanks to [Ryan Estrellado](https://github.com/restrellado) for [suggesting](https://twitter.com/RyanEs/status/943566380879638528) that this could turn into a package and the inclusion of `sep=`. 