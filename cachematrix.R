
# Create a special matrix
mat <- makeCacheMatrix(matrix(c(4, 2, 2, 3), nrow = 2))

# Compute the inverse (this will cache it)
inv <- cacheSolve(mat)

# Retrieve the cached inverse (without recomputation)
inv_cached <- cacheSolve(mat)

# Change the matrix (this will invalidate the cache)
mat$setMatrix(matrix(c(5, 1, 1, 4), nrow = 2))

# Compute the inverse again (this will recompute and cache)
inv_updated <- cacheSolve(mat)


