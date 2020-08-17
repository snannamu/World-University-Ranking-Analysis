institute_expenditure <- overall %>% mutate(avg_exp = (year1995+ year2000 +year2005+year2009+year2010+year2011)/6) %>%   group_by(country,institute_type, direct_expenditure_type) %>% summarise(total_exp = sum(avg_exp)) %>% filter(direct_expenditure_type != "Total")


boxplot1 <- institute_expenditure %>% ggplot(aes(direct_expenditure_type,log(total_exp * 10^6))) + geom_boxplot(aes(color = institute_type)) + labs(title = 'Expenditure by countries based on Institute type',
y = 'expenditure in billion dollars', x = "Institute type") + theme(axis.text=element_text(size=8), axis.title=element_text(size=10,face="bold")) + theme_bw() +   theme(legend.position = "bottom") +
scale_color_discrete("Institute Type:")
