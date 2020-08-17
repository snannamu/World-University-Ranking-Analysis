Uni_Toronto <- rank_data[grep("Toronto", rank_data$institution), ]
Uni_McGill <- rank_data[grep("McGill", rank_data$institution), ]
Uni_BC <- rank_data[grep("British Columbia", rank_data$institution), ]
Uni_Alberta <- rank_data[grep("Alberta", rank_data$institution), ]
Uni_WU <- rank_data[grep("Western University", rank_data$institution), ]
Uni_MM <- rank_data[grep("McMaster", rank_data$institution), ]
summary1 <- rbind(Uni_Toronto, Uni_McGill, Uni_BC, Uni_Alberta, Uni_WU, Uni_MM )

canada_plot2 <- ggplot(summary1, aes(x=as.factor(year), y=world_rank, color=institution, group=institution)) +   geom_line(size=1) +geom_point(size=2) +ggtitle("World ranking variations of top 6 canadian universsities") +xlab("Year") +   ylab("World Rank") +ylim(20, 160)

canada_plot2+theme(  text = element_text(size=18, colour = "brown"), axis.text = element_text(size = 18),  axis.text.x = element_text(size = 18), axis.text.y = element_text(size = 18),  legend.key = element_rect(fill = "white"), legend.background = element_rect(fill = "grey"),  legend.position = "top", legend.text =  element_text(size = 15),  panel.grid.minor = element_blank(), panel.background = element_rect(fill = "grey"))
