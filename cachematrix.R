## There are two functions that are used to complete the task.
##makecachematrix is used to set the initial value of a matrix to the object x. 
##the value of the matrix can be checked through get function.
##cachesolve is used for checking if the inverse is present or not and assign the inverse matrix accordingly.


makecachematrix<- function()
{
 x<- matrix()
 i<- NULL
   set<- function(y)
     x<<- y
   get<- function()
     x
   setmatrix<- function(cache)   ##cache value is assigned from the cachesolve function.
   i<<- cache
   getmatrix<- function()
     i
   list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)  ##for making these functions into working environment
}

cachesolve<- function(a)    ##here "a" calls makecachematrix()
{
  cache<- a$getmatrix()     ##calls the getmatrix in makecachematrix function.
  if(!is.null(cache))        ##checks if cache value is present or not
  {
    message("getting cached data")
    return(cache)
  }
  d<- a$get()               ##calls the get finction to get the matrix
  cache<- solve(d)          ##computes the inverse of the matrix and assigns it to the cache 
  a$setmatrix(cache)        ##cache value is returned to the setmatrix function
  return(cache)             ##displays the cache value
}





