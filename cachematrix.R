## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
     	set <- function(y) {
            x <<- y
            m <<- NULL
      	}
      	get <- function() x
      	setinverse <- function(solve) m <<- solve
      	getinverse <- function() m
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv = x$getinv()
		if (!is.null(inv)){
                # get it from the cache and skips the computation. 
                message("getting cached data")
                return(inv)
        }
		mat.data = x$get()
        inv = solve(mat.data, ...)
		x$setinv(inv)
        
        return(inv)

}
