## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  w <- NULL
  set <- function(y) {
    x <<- y
    w <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) w <<- inverse
  getinv <- function() w
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
  w <- x$getinv()
  if(!is.null(w)) {
    message("getting cached data")
    return(w)
  }
  data <- x$get()
  w <- solve(data, ...)
  x$setinv(w)
  w
}
