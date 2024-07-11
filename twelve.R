library(ggplot2)
library(dplyr)
library(readr)

data<- read_csv("C:/Users/amrut/Documents/R programming/data.csv")
print(data)
tot_matches<-nrow(data)
cat("\n", tot_matches)

distinct_teams <- n_distinct(data$Match_ID)
cat(distinct_teams)

unique_teams_team_1 <- n_distinct(data$Team1)
unique_teams_team_2 <- n_distinct(data$Team2)

cat("\n",unique_teams_team_1)
cat("\n",unique_teams_team_2)

a <- table(data$Winner)
print(a)

avg <- sum(data$Total.Runs) / nrow(data)

print(avg)

venue <- names(which.max(table(data$Venue)))
print(venue)


hist <- ggplot(data, aes(Winner))+
  geom_histogram(stat = 'count')
print(hist)


str(data)
cat('summary\n')
print(summary(data))