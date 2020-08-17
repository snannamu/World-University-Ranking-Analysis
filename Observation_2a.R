countrywise_scores <- time_data %>% filter(total_score != '') %>%  group_by(country) %>%  summarise(best_score = max(total_score)) %>%  select(country,best_score) %>% arrange(desc(best_score))



countrywise_scores$country <- factor(countrywise_scores$country , levels = countrywise_scores$country [order(countrywise_scores$best_score)])
head(countrywise_scores)
