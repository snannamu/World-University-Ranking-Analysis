QoE <- ggplot(rank_data[1:30,], aes(x=country, y=as.factor(quality_of_education), label=institution))+geom_point() + geom_label( aes(fill = factor(country)), colour = "black", fontface = "bold")+labs(title = "Top 30 universities in world providing best quality of education ")
QoE + theme(  text = element_text(size=15, colour = "black"),
axis.text = element_text(size = 10),  axis.text.x = element_text(size = 10),
axis.text.y = element_text(size = 10),  legend.key = element_rect(fill = "white"),
legend.background = element_rect(fill = "peachpuff4"),  legend.position = "top",  legend.text =  element_text(size = 9),  legend.direction = "horizontal",  panel.grid.minor = element_blank(),
panel.background = element_rect(fill = "orange"))+ xlab("Countries") + ylab("Education quality score")
