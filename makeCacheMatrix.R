

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
RR_matrix <- makeCacheMatrix(matrix(c(2,3,2,1,2,1,1,1,2),3,3))

RR_matrix$get()
RR_matrix$getInverse()

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}

cacheSolve(RR_matrix)

cacheSolve(RR_matrix)
  
RR_matrix$getInverse()

RR_matrix$set(matrix(c(2,3,2,1,2,1,1,1,2),3,3))

RR_matrix$get()

RR_matrix$getInverse()

cacheSolve(RR_matrix)

cacheSolve(RR_matrix)

RR_matrix$getInverse()

