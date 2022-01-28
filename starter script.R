
###########
# Binding #
###########

jn <- read.csv("journeynorth.csv")
  glimpse(jn)

jn2 <- read.csv("journeynorth2.csv")
  glimpse(jn2)

jn_full <- rbind(jn, jn2)

################################
# Structure, Dimensions, Names #
################################

  str(jn_full)

  class(jn_full)
  
  dim(jn_full)
  
  ncol(jn_full)
  
  nrow(jn_full)

length(jn_full[1,])

length(jn_full[,1])

jn_names <- names(jn_full)
  jn_names
  
names(jn_full) <- c("Date","Town", "State", "Lat", "Lon", "Count")
  glimpse(jn_full)
  
##########################
# Subsetting and Uniques #
##########################

jn_sub <- jn_full[ ,c("State.Province","Number")]
  glimpse(jn_sub)

jn_sub <- jn_full[ ,c(3,6)]
  glimpse(jn_sub)

jn_sub <- jn_full[ ,c(1:3,6)]    
  glimpse(jn_sub)
  
cities <- unique(jn_full$Town)
  cities
  length(cities)

#########################
# Subsetting and Logic #
########################
  
jn_bg <- jn_full[jn_full$Town =="Bowling Green", ]
    glimpse(jn_bg)
    nrow(jn_bg)

    nrow(jn_full)
    perc_bg <- nrow(jn_bg) / nrow(jn_full) * 100
    perc_bg
    
    mean(jn_bg$Count)
    max(jn_bg$Count)
    max(jn_full$Count)
    max(jn_full$Count, na.rm=T)
    4750/4
        
#########
# Lists #  
#########

pets <- c('cats', 'dogs', 'goldfish', 'elephant', 'armadillo')

my_list <- c(pets, jn_full)

my_list <- list(pets, jn_full)

  my_list[1]
  my_list[2]
  
  my_list[[1]]
  my_list[[2]]
  
  my_list[[1]][2]
  my_list[1][2]
  
  my_list[[2]][1]
  my_list[[2]][ ,1]
  
############
# Apply #
#########
  
sapply(jn_full, class)

sapply(jn_full, function(x) sum(is.na(x)))  

################
# Subset #
##########

jn_sub <- subset(jn_full, subset = !is.na(jn_full$Number))
  glimpse(jn_sub)

  any(is.na(jn_sub)) 
  nrow(jn_sub)

############
# Order #
###########
  
jn_order <- jn_sub[order(jn_sub$Number, decreasing = TRUE), ]
    glimpse(jn_order)

jn_sub2 <- jn_order[jn_order$State.Province %in% c("KS", "NE", "OK", "TX", "MO"), ]


plot(as.factor(jn_sub2$State.Province), jn_sub2$Number)  

###############
# Aggregate ##
##############

mean_jn <- aggregate(jn_sub$Number, by = jn_sub["State.Province"], FUN = mean)
  mean_jn
  