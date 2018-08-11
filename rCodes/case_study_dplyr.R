library(ggplot2movies)
library(dplyr)
library(ggplot2)
data <-  ggplot2movies::movies
glimpse(data)
View(data)

#draw a scatter plot to show the number of movies in each dacades.
#subset year into a factor with length equal to decade.

earlies <- min(data$year)
latest <-  max(data$year)
#create the decades sequence for breaks
st.pt <- earlies - earlies %% 10
ed.pt <- latest + 10 - latest %% 10
decad <- seq(from = st.pt, to = ed.pt, by = 10)
#create the decades 
decades <- cut(data$year,breaks = decad,labels=c('1890s','1900s','1910s','1920s','1930s','1940s',
                                                 '1950s','1960s','1970s','1980s','1990s','2000s'))

#get the data with decades as interval to store all the movies
data.decaded <-  data 
data.decaded %<>% 
  mutate( decades = cut(data$year,breaks = decad))
data.decaded %<>% 
  filter( !is.na(title) ) %>% 
    group_by(decades) %>%
      mutate(Count = n())
#could not draw the line that connects the dots.
ggplot(data.decaded)+
    geom_point(aes(decades, Count))
#get the content of movies in decades.
data.decaded %>% 
  select(decades,Count) %>% 
    group_by(decades) %>% 
      summarise(n())

#get the content of budges per decades
data.decaded %>% 
  select(decades,budget) %>% 
    group_by(decades) %>% 
      summarize(Total_Budget = sum(budget, na.rm=T))

#add the total_NAs, Total Movies, %NA to the print out.
data.Na <- data.decaded
data.Na %<>% 
  group_by(decades) %>%
    mutate(total_budges = sum(budget,na.rm=T),total_nas = sum(is.na(budget)),total_Movies = n(),Nasperct = total_nas/total_Movies)

data.Na %>% 
  select(decades,total_budges,total_nas,total_Movies,Nasperct) %>% 
    group_by(decades) %>% 
      arrange(decades)
#unable to show the data in grouped fashion 
  
  
  
  
  
  



              