# cacheMatrix

makeCacheMatrix() <- function(x = numeric()) {
  t <- NULL
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) t <<- solve
  getsolve <- function() t
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


#cachesolve function
cacheSolve <- function(x, ...) {
  t <- x$getsolve()
  if(!is.null(t)) {
    message("getting cached data")
    return(t)
  }
  data <- x$get()
  t <- solve(data, ...)
  x$setsolve(t)
  s
}
