time_data <- read.csv("timesData.csv"
expenditure_data <- read.csv("expenditure.csv")

head(expenditure_data)

expenditure_data <- expenditure_data %>% mutate(year1995 = ifelse(is.na(year1995),0,year1995)
                    ,year2000 = ifelse(is.na(year2000),0,year2000),year2005 = ifelse(is.na(year2005),0,year2005)
                    ,year2009 = ifelse(is.na(year2009),0,year2009),year2010 = ifelse(is.na(year2010),0,year2010)
                    ,year2011 = ifelse(is.na(year2011),0,year2011))


time_data$total_score <- as.numeric(time$total_score)

name_matching <- c("Ireland", "Korea, Republic of", "United States" )
time_data["country"] <- str_replace(time_data$country,pattern = "Republic of Ireland", name_matching[1])
time_data["country"] <- str_replace(time_data$country,pattern = "South Korea", name_matching[2])
time_data["country"] <- str_replace(time_data$country,pattern = "United States of America", name_matching[3])

overall <- expenditure_data %>% mutate(year1995 = ifelse(is.na(year1995),0,year1995),year2000 = ifelse(is.na(year2000),0,year2000) ,year2005 = ifelse(is.na(year2005),0,year2005),year2009 = ifelse(is.na(year2009),0,year2009)  ,year2010 = ifelse(is.na(year2010),0,year2010),year2011 = ifelse(is.na(year2011),0,year2011))

