# practicing indexing and stuff

#######
# INstall stuff
###########

install.packages("installr")
library(installr)
updateR()

############
# Code Stuff
##############

jn <- read.csv("journeynorth.csv")
  head(jn)

jn2 <- read.csv("journeynorth2.csv")
  head(jn2)
  str(jn)

str(jn2)

jn_full <- rbind(jn, jn2)
  head(jn_full)

  dims <- dim(jn_full)

  ncol(jn_full)

  nrow(jn_full)  

  length(jn_full)  

  length(jn_full$Date)  

  length(jn_full[1, ])  
  
  length(jn_full[ ,1]) 
  
jn_names <- names(jn_full)
  jn_names

names(jn_full) <- c("Date", "Town", "State" , "Lat", "Lon", "Count")
  names(jn_full)
  
jn_sub <- jn_full[ , c("St", "Count")]
  head(jn_sub)  

jn_st <- jn_full$St  
  head(jn_st)

 
  
jn_bg <- jn_full[jn_full$Town =="Bowling Green", ]
  head(jn_bg)  
  nrow(jn_bg)    
  
perc_bg <- nrow(jn_bg) / nrow(jn_full) * 100
  perc_bg
      