library(tidyverse)
library(magrittr)
search()
data <- diamonds

diamonds %>% 
ggplot() + geom_point(aes(x=carat,y=price),alpha=0.3,size=0.5)

diamonds %>% 
  ggplot(aes(x = carat)) +
    geom_histogram(bins = 50)

diamonds %>% 
  ggplot(aes(x=carat,y = price)) +
    geom_point(color='blue')

diamonds %>% group_by(clarity) %>% summarise(meanPrice = mean(price)) %>% 
  ggplot() +
  geom_line(aes(x = caret, y = meanPrice), group_by(clarity)) + geom_point(aes(x = clarity, y = meanPrice), size = 3)
                                                                    
# in class exercies:
#a
starwars %>% ggplot(aes(x=height,y=mass))+geom_point(color='brown',alpha=0.8)

#b
dataSW <- starwars
dataSW %<>% filter(homeworld=="Tatooine") 
starwars %>% ggplot(aes(x=height,y=mass)) +geom_point(color="black",alpha=0.1)+geom_point(data= dataSW,aes(x=height,y=mass),color="red")







