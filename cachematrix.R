    ## Put comments here that give an overall description of what your
    ## functions do

    ## Makes a matrix cache

    makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
          x <<- y
          inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

    }


    ## Invert the matrix and store it, or retrieve inverse value from cache

    cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      i <- x$getinverse()
      if (!is.null(i)){
        message("getting cached data")
        return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i
    }
