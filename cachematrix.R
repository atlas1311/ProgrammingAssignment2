## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## Takes a matrix that you define however you please, 
## calculates the inverse of said matrix,
## and then stores it in a cache called m.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}



## Write a short comment describing this function
## This checks to see if you've already calculated the inverse of the matrix.
## If you have, it fetches the cached matrix, m, and returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                m <- x$getsolve()
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setsolve(m)
                m
}
