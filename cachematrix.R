## the first function creates a matrix
## the second function tries to retrieve the inverse of the matrix from the cache. If there is no such thing in the cache, it will calculate the inverse of the matrix.

## the first function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function()x
    setinverse <- function(inverse){
        m <<- inverse
    }
    getinverse <- function()m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    
}


## the second function tries to retrieve the inverse of the matrix from the cache. If there is no such thing in the cache, it will calculate the inverse of the matrix.


cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
