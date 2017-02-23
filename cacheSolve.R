cacheSolve <- function(x, ...) {
    inv = x$getinv()
    if (!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    mat.data = x$get()
    inv = solve(mat.data, ...)
    x$setinv(inv)
    inv
}

