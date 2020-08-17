canada_ranks <- rank_data[country == "Canada",]
canada_plot1 <- ggplot(canada_ranks[1:20,], aes(x=country, y=national_rank, label=institution))+geom_point() + geom_label( aes(fill = factor(country)), colour = "black", fontface = "bold")+labs(title = "Top Universities in Canada ")
canada_plot1 + theme(  text = element_text(size=16, colour = "red"),
  axis.text = element_text(size = 9),  axis.text.x = element_text(size = 9),
  axis.text.y = element_text(size = 9),  panel.grid.major = element_line(colour = "navy"),
  panel.grid.minor = element_blank(),  panel.background = element_rect(fill = "peachpuff4")
)+ xlab("Canada") + ylab("Canadian Ranks")
