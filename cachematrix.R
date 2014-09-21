## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Inverse Property
  m <- NULL
  ## Set Matrix
  set <- function(matrix) {
    x <<- matrix
    m <<- NULL
  }
  
  ## Function to get Matrix
  get <- function() {
    ## Matrix
    x
  }
  
  ##Setting Inverse of the Matrix, Get Fxn
  setinv <- function(inverse) {
  getinv <- function() m
  ##List of fxns
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
  }

}

cacheSolve <- function(x, ...) {
  ## Return inverse of x
  m <-   x$getinv()
  
  ##if for an aleady set inverse
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ## Get maxtrix
  data <- x$get()
  ## Calc the inverse
  m <- solve(data) %*% data
  ## Set new inverse to object
  x$setinv(m)
  ## Return that mofo
  return(m)
}
