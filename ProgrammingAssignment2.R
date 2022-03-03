makeVector <- function(x=matrix()){
  invm <- NULL
  set <- function(y){
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setInverseM <- function(inverse) invm <<- inverse 
  getInverseM <- function() invm 
  list(set = set, get = get, 
       setInverseM = setInverseM,
       getInverseM=getInverseM)
}
cacheMean <- function(x,...){
  invm <- x$getInverseM()
  if(!is.null(invm)){
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data,...)
  x$setmean(m)
  m
}