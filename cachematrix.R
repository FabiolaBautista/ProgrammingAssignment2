## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inversa <- NULL
    
    get <- function() x
    set <- function(c) {
        x <<- c
        inversa <<- NULL
    } 
    
    getInverse <- function() inversa     
    setInverse <- function(c) inversa <<- c
    
    list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    i <- x$getInverse()
    if(!is.null(i)){
        return(i)
    }
    
    i <- solve(x$get())
    x$setInverse(i)
    i
}
