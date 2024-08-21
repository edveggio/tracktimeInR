#Creating the table that will save the data
tracktime <- data.frame("percentage", "time") 

#start the clock
ptm <- proc.time()

#set the loop/iteration you want to clock; usually the iteration step is called "i" but you cam use any variable for that
# dim(db)[1] is the same as nrow(db)
for (i in 1:dim(db)[1] {
  ##put your script here!

  ##the range chosen was every 0,01% but it can easily modified changing the divisor. 10 = 10%, 100 = 1%, 1000 = 0,1% ...
  percentil <- dim(db)[1]/10000

  ##for each 0,01% of the db read it will write the time spent on "time" column
  if (i %% percentil  == 0) {
    
    ##stop the clock
    time_iteration <- proc.time() - ptm
    tracktime[nrow(tracktime) + 1,] = c(i/percentil,time_iteration[3])
  }
}
