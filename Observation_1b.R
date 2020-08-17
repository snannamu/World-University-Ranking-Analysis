worldrankplot1 <- ggplot(rank_data[1:20,], aes(x=as.factor(world_rank), y=institution, label=country))+geom_point() + geom_label( aes(fill = factor(country)), colour = "black", fontface = "bold")+labs(title = "World Rankings : Countries with top 20 universities ")
worldrankplot1 + theme(  text = element_text(size=16, colour = "red"),
  axis.text = element_text(size = 9),  axis.text.x = element_text(size = 9),
  axis.text.y = element_text(size = 9),  legend.key = element_rect(fill = "white"),
  legend.background = element_rect(fill = "green"),  legend.position = "top",
  legend.text =  element_text(size = 9),  legend.direction = "horizontal",
  panel.grid.major = element_line(colour = "navy"),  panel.grid.minor = element_blank(),
  panel.background = element_rect(fill = "grey")) + xlab("World Ranks") + ylab("Universities")
