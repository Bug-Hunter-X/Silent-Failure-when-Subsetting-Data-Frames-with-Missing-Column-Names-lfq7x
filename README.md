# Silent Failure when Subsetting Data Frames with Missing Column Names in R

This repository demonstrates a common yet subtle error in R when subsetting data frames using character vectors of column names.  If a specified column name does not exist, the operation fails silently, potentially leading to incorrect results without any warning.

The `bug.R` file contains code that reproduces this issue. The `bugSolution.R` file offers solutions to address this silent failure.

## Problem
The problem occurs when trying to subset a data frame with column names that may not be present.  R will simply ignore any missing names without reporting any error. This makes it hard to debug.

## Solution
The proposed solution involves using functions that handle missing column names more gracefully. One example is the `dplyr::select()` function.  Other approaches might involve pre-checking for the existence of column names using `%in%`.