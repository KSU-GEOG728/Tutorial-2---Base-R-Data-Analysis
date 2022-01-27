

jn <- read.csv("journeynorth.csv")
jn2 <- read.csv("journeynorth2.csv")

jn_full <- rbind(jn, jn2)

unique(jn_full$Town)

jn_roanoke <- jn_full[jn_full$Town == "Roanoke", ]
  head(jn_roanoke)

jn_roanoke <- subset(jn_full, jn_full$Town == "Roanoke")  
  head(jn_roanoke)  
  