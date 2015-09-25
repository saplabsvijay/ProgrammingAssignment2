<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function stores the matrix in cache and inverse 
## of the matrix as well. 
## Provides getters and setters to both matrices 
makeCacheMatrix <- function(x = matrix()) {
        mat_inverse <- NULL
        set_matrices <- function(y) {
                x <<- y
                mat_inverse <<- NULL
        }
        get_matrix <- function() x
        set_inverse <- function(solve) mat_inverse <<- solve
        get_inverse <- function() mat_inverse
        list(set_matrices = set_matrices, get_matrix = get_matrix,
             set_inverse = set_inverse,
             get_inverse = get_inverse)
}


## Write a short comment describing this function
## This function tries to read the inverse of the matrix
## If not found, computes the inverse using R solve function and
## writes into cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat_inverse <- x$get_inverse()
        if (!is.null(mat_inverse))
        {
                print("Reading inverse of the matrix from cache!")
                return (mat_inverse)
        }
        mat_source <- x$get_matrix()
        mat_inverse <- solve(mat_source,...)
        x$set_inverse(mat_inverse)
        mat_inverse
       
              
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
