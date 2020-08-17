temp <- rank_data %>% filter(year %in% c(2012, 2013, 2014, 2015)) %>%
group_by(country,year)%>%  summarise(stat_by_country = n_distinct(institution)) %>%  spread(year,stat_by_country)

colnames(temp) <- c("country","Y_2012","Y_2013","Y_2014","Y_2015")
temp <- as.data.frame(temp)

temp$varied <- temp$Y_2015 - temp$Y_2012
temp %>% arrange(desc(varied)) %>%  head(10) %>% filter(varied > 0) %>%  select(country,varied)
