## Below are the functions that cache the inverse of a matrix

## creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmartrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


## Creates a special "matrix" object that can cache its inverse

cacheSolve <- function(x = matrix(), ...) {
    m <- x$getmatrix()
    if(!is.null(m)) {
        message("Getting cached matrix")
        return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}





