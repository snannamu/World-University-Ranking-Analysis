top20status <-cut(rank_data$world_rank, breaks=c(0,20,1000), labels=c("1", "0"))
rank_data$top20status <- top20status


fitree <- rpart(top20status~ quality_of_education+quality_of_faculty+alumni_employment , data = rank_data, method = "class")
fancyRpartPlot(fitree, main = "World Rank Top 20 status")

predictions<-predict(fitree, rank_data[15:100,], type = "class")
plot(predictions)

rank_datatest <- rank_data[15:100,]
table(predictions, rank_datatest$top20status)
