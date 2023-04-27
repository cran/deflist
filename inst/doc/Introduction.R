## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- include=FALSE-----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(deflist)

square_fun <- function(i) i^2
square_deflist <- deflist(square_fun, len = 5)
square_deflist


## -----------------------------------------------------------------------------
# Access by index
square_deflist[[1]]
square_deflist[[2]]

# Access multiple elements
square_deflist[c(1, 3, 5)]

## -----------------------------------------------------------------------------
memoised_square_fun <- deflist(square_fun, len = 5, memoise = TRUE, cache = "memory")
memoised_square_fun

# Access an element multiple times
system.time({ for (i in 1:1000) memoised_square_fun[[1]] })

## -----------------------------------------------------------------------------

square_list <- as.list(square_deflist)
square_list


## -----------------------------------------------------------------------------
try(square_deflist[[1]] <- 0)

