newdata <- sapply(rank_data, is.numeric) 
newdata <- rank_data[,newdata]
newdata <- na.omit(newdata)

model1 <- lm(log(world_rank)~., newdata)
summary(model1)
