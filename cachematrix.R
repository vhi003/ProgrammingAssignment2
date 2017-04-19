

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function - creates a matrix

> makeCacheMatrix <- function (x = matrix(1, 2, 3, 4)){
+     inv <- NULL
+     set <- function (y) {
+         x<<-y
+         inv <<- NULL
+ }
+ get <- function() x
+ setInverse <- function(Inverse) inv<<-inverse
+ getInverse <- function() inv
+ list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
+ }
> my_assign <-makeCacheMatrix(matrix(1))
> 
> 
> 
> my_assign$get()
     [,1]
[1,]    1
> 
> my_assign2 <-makeCacheMatrix(matrix(1:4, 2, 4))
> my_assign2$get()
     [,1] [,2] [,3] [,4]
[1,]    1    3    1    3
[2,]    2    4    2    4
>


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse()
        inv        
}
