## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##set value of matrix
        m<- NULL
        set<- function(y){
                x<<-y
                m<<-NULL
        }
  ##get value of matric
        get<-function()x
#set value of inverse        
        setinverse <-function(solve) m <<- solve
#get value of inverse    
        getinverse <- function() m
        list(set = set, get=get,
             setinverse=setinverse,
             getinverse=getinverse)
              
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##looks for cached inverse
        m<- x$getinverse()
        if(!is.null(m)){
                message ("getting cached date")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setinverse(m)
        m
  ## if no cache exists-> calculate inverse
}
