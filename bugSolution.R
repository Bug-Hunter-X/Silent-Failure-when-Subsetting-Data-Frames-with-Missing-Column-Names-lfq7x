```r
# Solution using dplyr
library(dplyr)
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "D", "C")
# select() will only include existing columns, ignoring "D"
subset <- data %>% select(all_of(cols))
print(subset)

# Alternative solution with error handling
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "D", "C")
if (all(cols %in% names(data))) {
  subset <- data[, cols]
} else {
  missing_cols <- cols[!cols %in% names(data)]
  stop(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data."))
}
print(subset)
```