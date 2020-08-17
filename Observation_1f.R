temp$varied <- temp$Y_2015 - temp$Y_2014
temp %>% arrange(varied) %>%  head(10) %>% filter(varied < 0) %>%  select(country,varied)
