## This function cache the inverse of a matrix X, as was said ni the assigment
## 


makeCacheMatrix <- function(x = matrix()) {
inverse<-NULL
set<-function(y){
  x<<-y
  inverse<<-NULL
  
}
get<-function()x
setinverse<-function(inv) inverse<<-inv
getinverse<-function() inverse
list(set=set,get=get,
  setinverse=setinverse,
  getinverse=getinverse
  )
  
}


## and this is calculating the inverse , making it available to reuse for the cahce

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<- x$getinverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)    
  }
  m<-x$get()
  i<-solve(m,...)
  x$setinverse(inverse)
  inverse
}
