
x <- c(2,3,2,1,2,1,1,1,2)

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


x <- c(2,3,2,1,2,1,1,1,2)
makeVector(x)

x <- c(2,3,2,1,2,1,1,1,2)
xx <- makeVector(x)
xx
