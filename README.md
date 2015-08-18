# RadhaRamakantha
Assignment---2-of-Coursera
****************MakeChacheMAtrix*******
makeCacheMatrix <- function(x = matrix()) { inv <- NULL set <- function(y) { x <<- y inv <<- NULL } get <- function() x setInverse <- function(inverse) inv <<- inverse getInverse <- function() inv list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) } RR_matrix <- makeCacheMatrix(matrix(c(2,3,2,1,2,1,1,1,2),3,3))

RR_matrix$get() RR_matrix$getInverse()

cachemean <- function(x, ...) { m <- x$getmean() if(!is.null(m)) { message("getting cached data") return(m) } data <- x$get() m <- mean(data, ...) x$setmean(m) m }

cacheSolve <- function(x, ...) { inv <- x$getInverse() if (!is.null(inv)) { message("getting cached data") return(inv) } mat <- x$get() inv <- solve(mat, ...) x$setInverse(inv) inv }

cacheSolve(RR_matrix)

cacheSolve(RR_matrix)

RR_matrix$getInverse()

RR_matrix$set(matrix(c(2,3,2,1,2,1,1,1,2),3,3))

RR_matrix$get()

RR_matrix$getInverse()

cacheSolve(RR_matrix)

cacheSolve(RR_matrix)

RR_matrix$getInverse()

*******makeVector***********
x <- c(2,3,2,1,2,1,1,1,2)

makeVector <- function(x = numeric()) { m <- NULL set <- function(y) { x <<- y m <<- NULL } get <- function() x setmean <- function(mean) m <<- mean getmean <- function() m list(set = set, get = get, setmean = setmean, getmean = getmean) }

x <- c(2,3,2,1,2,1,1,1,2) makeVector(x)

x <- c(2,3,2,1,2,1,1,1,2) xx <- makeVector(x) xx
