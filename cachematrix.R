## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  invd<-NULL #set to null
  
  
  
  
  
  set <- function(matrix_to_invert) {
    x <<- matrix_to_invert #original matrix
    invd <<- NULL #reseting to null
  }
  
  get <- function()x     #get otiginal matrix
  
  
  
  
  setInversed<- function(solve) invd <<-solve
  
  
  getInversed <- function() invd   #getting inverted
  
    
  list(set = set, 
       get = get,
       setInversed = setInversed,
       getInversed = getInversed)
} 
  




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInversed() #checking if there is already cached inverse in mobject containign matrix, if yes return it
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()   #if inverse is not present, get original mattrrix , inverse it with solve and then set to inverted cache in object containing orginal matrix and return value
  m <- solve(data, ...)
  x$setInversed(m)
  m
  }
