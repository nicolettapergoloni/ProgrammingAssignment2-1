## Create MAtrix object that can cashe inverse, 
## casheSolve calculates inverse of matrix created above or reports it if matrix is unchanged

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
inv <- x$getInverse()

## Get Inverse of Matirx x

if (!is.null(inv)) {
message("getting cached data")
return(inv)
}

If Inverse exists, return it

mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}

examplematrix <- makeCacheMatrix(matrix(1:4, 2, 2))
examplematrix$get()
cacheSolve(examplematrix)
examplematrix$getInverse()
        ## Return a matrix that is the inverse of 'x'
}
