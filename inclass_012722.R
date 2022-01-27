

jn <- read.csv("journeynorth.csv")
jn2 <- read.csv("journeynorth2.csv")

jn_full <- rbind(jn, jn2)

unique(jn_full$Town)

jn_roanoke <- jn_full[jn_full$Town == "Roanoke", ]
  head(jn_roanoke)

jn_roanoke <- subset(jn_full, jn_full$Town == "Roanoke")  
  head(jn_roanoke)  

p_r <- length(jn_roanoke$Town) / length(jn_full$Town) *100  
p_r

max(jn_roanoke$Number)

?is.na()

is.na(jn_full$Number)

length(is.na(jn_full$Number))

sum(is.na(jn_full$Number))

jn_nona <- subset(jn_full, subset = !is.na(jn_full$Number))
  head(jn_nona)
  nrow(jn_nona)  

any(is.na(jn_nona))  

sapply(jn_full, function(x) sum(is.na(x)))

jn_order <- jn_nona[order(jn_nona$Number, decreasing = TRUE), ]
  head(jn_order, 10)

  jn_order <- jn_nona[order(-jn_nona$Number), ]
  head(jn_order, 10)

jn_mean_st <- aggregate(jn_nona$Number, by = jn_nona["State.Province"], FUN = mean)
  head(jn_mean_st)     
  
mean(jn_full$Number, na.rm = TRUE)
  