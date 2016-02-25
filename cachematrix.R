## This is a set function for cacheing the inverse of a matrix. I think it it neat.


## This creates a new cacheMatrix
## A CacheMatrix is a list of functions that can be used on a matrix x
## A CacheMatrix can also store the inverse of x

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }source
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() invP
  re      list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This finds and caches the inverse of a CacheMatrix

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
