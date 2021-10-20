#get and import the daily_state_reports.csv
#remove last two NA columns and write as a new file called daily_state_reports1
daily_state_reports  <- read.csv("C:/Users/18472/Desktop/daily_state_reports.csv")
daily_state_reports1 <- subset(daily_state_reports, select = -c(Country_Region,Lat,Long_, FIPS, UID,ISO3))
write.csv(daily_state_reports1,"C:/Users/18472/Desktop/daily_state_reports1.csv", row.names = TRUE)

#get and import the state_policies.csv
#remove last two NA columns and remove never change columns
#write as a new file called state_policies1
state_policies1 <- read.csv("C:/Users/18472/Desktop/state_policies.csv")
state_policies1  <- subset(state_policies1, select = -c(Status.of.Reopening, Bar.Closures))
state_policies1  <- subset(state_policies1, select = -c(Emergency.Declaration, State.Is.Easing.Social.Distancing.Measures))
state_policies1 = state_policies1[!state_policies1$Stay.at.Home.Order == "Text--narrow",]
state_policies1 = state_policies1[!state_policies1$X == "United States",]
write.csv(state_policies1,"C:/Users/18472/Desktop/new_data/state_policies1.csv", row.names = TRUE)

#get and import the state_policies.csv
#remove last two NA columns and remove never change columns
#write as a new file called state_policies2 except effective rows
state_policies1 <- read.csv("C:/Users/18472/Desktop/state_policies.csv")
state_policies1  <- subset(state_policies1, select = -c(Status.of.Reopening, Bar.Closures))
state_policies1  <- subset(state_policies1, select = -c(Emergency.Declaration, State.Is.Easing.Social.Distancing.Measures))
state_policies2  <- state_policies1[c(1:1535), ]
state_policies2= state_policies2[!state_policies2$Stay.at.Home.Order == "Text--narrow",]
state_policies2 = state_policies2[!state_policies2$X == "United States",]
write.csv(state_policies2,"C:/Users/18472/Desktop/new_data/ state_policies2Non_effective.csv", row.names = TRUE)

#get and import the state_policies.csv
#remove last two NA columns and remove never change columns
#write as a new file called state_policies3 for effective rows
state_policies1 <- read.csv("C:/Users/18472/Desktop/state_policies.csv")
state_policies1  <- subset(state_policies1, select = -c(Status.of.Reopening, Bar.Closures))
state_policies1  <- subset(state_policies1, select = -c(Emergency.Declaration, State.Is.Easing.Social.Distancing.Measures))
state_policies3  <- state_policies1[c(1536:1915), ]
state_policies3= state_policies3[!state_policies3$Stay.at.Home.Order == "Text--narrow",]
state_policies3 = state_policies3[!state_policies3$X == "United States",]
write.csv(state_policies3,"C:/Users/18472/Desktop/new_data/ state_policies3_effective.csv", row.names = TRUE)

#get the NA case for 1 to 584 for last three columns
state_policies1 <- read.csv("C:/Users/18472/Desktop/state_policies.csv")
state_policies1  <- subset(state_policies1, select = -c(Status.of.Reopening, Bar.Closures))
state_policies1  <- subset(state_policies1, select = -c(Emergency.Declaration, State.Is.Easing.Social.Distancing.Measures))
state_policies4  <- state_policies1[c(1:584), ]
state_policies4= state_policies4[!state_policies4$Stay.at.Home.Order == "Text--narrow",]
state_policies4 = state_policies4[!state_policies4$X == "United States",]
write.csv(state_policies4,"C:/Users/18472/Desktop/new_data/ state_policies4na_last_three.csv", row.names = TRUE)




#get the non NA case for 585 to 1535 last three columns
state_policies1 <- read.csv("C:/Users/18472/Desktop/state_policies.csv")
state_policies1  <- subset(state_policies1, select = -c(Status.of.Reopening, Bar.Closures))
state_policies1  <- subset(state_policies1, select = -c(Emergency.Declaration, State.Is.Easing.Social.Distancing.Measures))
state_policies5  <- state_policies1[c(585: 1535), ]
state_policies5= state_policies5[!state_policies5$Stay.at.Home.Order == "Text--narrow",]
state_policies5 = state_policies5[!state_policies5$X == "United States",]
write.csv(state_policies5,"C:/Users/18472/Desktop/new_data/ state_policies5non_na_last_three.csv", row.names = TRUE)

