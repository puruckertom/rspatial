library(raster)
# #http://www.inside-r.org/packages/cran/raster/docs/setValues
# 
# ## S4 method for class 'RasterLayer':
# setValues((x, values, ...))
# 
# ## S4 method for class 'RasterBrick':
# setValues((x, values, layer=-1, ...))
# 
# ## S4 method for class 'RasterStack':
# setValues((x, values, layer=-1, ...))
# 
# ## S4 replacement method for class 'RasterLayerSparse':
# setValues((x, values, index=NULL, ...)
#           
# values(x) <- value)

#create
r <- raster(ncol=36, nrow=18)
#list slots
r@data
#structure of raster object
str(r)
dim(r)
#put values in it
r[] <- 1:ncell(r)
str(r)
dim(r)
#fund the cells that = 2
update_these <- which(r[] == 2)
#change the 2 to 1000
r[update_these] <- 1000
r[]

#this might be safer but the whole set of numbers needs to be updated
#so we have to extract the entire data slot first
r <- setValues(r, vals)
# equivalent to
r[] <- vals