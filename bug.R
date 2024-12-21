```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails when a column name is not found.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "D", "C")
subset <- data[, cols]
```