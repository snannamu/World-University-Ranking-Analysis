rank_data %>% filter(year == 2012) %>%  group_by(country) %>%
  summarise(stat_by_country = n_distinct(institution)) %>%  arrange(desc(stat_by_country)) %>%
  ggplot(aes(x = reorder(country,-stat_by_country), y= stat_by_country)) +
  geom_bar(stat = "identity", fill = "red")  +  geom_text_repel(aes(label = stat_by_country), vjust = -.4,   size = 5) +  xlab("Country") + ylab("Number of Universities")


rank_data %>% filter(year == 2015) %>%
  group_by(country) %>%  summarise(stat_by_country = n_distinct(institution)) %>%
  arrange(desc(stat_by_country)) %>%  ggplot(aes(x = reorder(country,-stat_by_country), y= stat_by_country)) +  geom_bar(stat = "identity", fill = "red")  +  geom_text_repel(aes(label = stat_by_country), vjust = -.4, size = 5) +  xlab("Country") + ylab("Number of Universities")
