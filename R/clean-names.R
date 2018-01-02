
#' Cleans names
#'
#' Simple extension of the function [base::make.name()].
#' 
#' It will pass the input vector to it but allow the use of other separators
#' other than `.` 
#'
#' @param names  character vector to be modified. This is coerced to character if necessary.
#'    First processed using base::make.name
#' @param sep  The string separator. Default is `.`. 
#' @param replace.all  Logical. If TRUE (default) will replace multiple consecutive occurrences
#'    of the separator with a single instance.
#' @param is.valid  Not used. Logical. Test if the final character vector is syntactically valid.
#'
#'@examples
#'
#'some_col <- c(
#'    "I once",
#'    "got   some weird",
#'    "tables",
#'    "from.a.collaborator")
#' 
#' clean_names(some_col)
#' clean_names(some_col, replace.all=F, sep="_")
#' clean_names(some_col, sep="_")
#' clean_names(some_col, sep="+")
#'
#' @export
#' @return clean_name
clean_names <- function(names, sep=".", replace.all=TRUE, is.valid=FALSE){
   
   clean_name <- base::make.names(names)

   if (replace.all == TRUE){
      clean_name <- gsub("\\.{1,}", sep, clean_name)
   }

   if (hasArg(sep) & sep != "."){
      clean_name <- gsub("\\.", sep, clean_name)
   }

   return(clean_name)
}

