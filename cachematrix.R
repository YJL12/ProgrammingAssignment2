## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
	 ## 1) makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
                ## x is set as an empty matrix 
                ## in list(), the functions set, get, setinverse and getinverse are defined as an element of the list
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set<-function(y) {
                x<<- y
                m<<- NULL
                }
        get<-function() x
        setinverse <-function(inverse) m<<-solve
        getinverse<- function() m
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
	## 2) Return a matrix that is the inverse of 'x'
                ## the inverse of x is retrieved and checked to see if it returns NULL
                ## if it is NULL, there is a cached inverse of x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 m<-x$getinverse()
        if(!is.null(m)) {
        message ("getting cached data")
        return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
