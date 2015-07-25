## function calculates the inverse of a matrix and stores in cache
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

## function looks if inverse has been calculates, if not it calculates
## returns the inverse of the matrix
cacheSolve <- function(x, ...) {
##looks for cached inverse
        m<- x$getinverse()
        if(!is.null(m)){
                message ("getting cached date")
                return(m)
        }
## if no cache exists-> calculate inverse
        data <- x$get()
        m <- solve(data,...)
        x$setinverse(m)
##returns
        m

}
