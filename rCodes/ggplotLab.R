# In class exs for class #7
library(ggplot2)
stwdata <- starwars
stwdata %<>% 
  group_by(homeworld) %>% 
    mutate(meanHeights = sum(height, na.rm=T)/n()) %>% 
      arrange(desc(meanHeights)) %>% 
        ungroup() %>% 
        slice(1:5)

stwdata2 <- stwdata
stwdata2 %>% 
  select(homeworld,)
  filter(homeworld %in% x[['homeword']])

stwdata$height
ggplot()+ geom_boxplot(data = stwdata,aes(x=homeworld,y=height),group=1)

#test about the identity option

#the bar graph only count the nomber of rows. After we process
# the number for each eye-color, the data is one obs for each 
#eye-color
stwar <- starwars
stwar %>% count(eye_color) %>% 
  ggplot() + geom_bar(aes(x=eye_color))

#now use the summarized value to draw.
stwar %>% count(eye_color) %>%
  ggplot() + geom_bar(aes(x=eye_color,y=n),stat='identity')

#Question#1 
tips <- reshape2::tips
tips %>% 
  ggplot()+geom_point(aes(x=time,y=total_bill,color=smoker,shape=sex))
# The plot has four variables now, you can tell in the lunch time a 
# female smoker's order.
tips %>% 
  ggplot()+geom_point(aes(x=time,y=total_bill,color=smoker,shape=sex),position="jitter")

tips2 <- tips

tips2 %<>% 
  group_by(time, sex) %>% 
    mutate(meanTip= mean(tip/total_bill,na.rm=T))
      

tips2 %>% 
    ggplot()+ geom_point(aes(x=time,y=meanTip,color=sex,shape=sex))+xlab("Meal Time")+
  ylab("Mean Percent Tip")
library(scales)

tips %>% 
  select(time,smoker) %>% 
  group_by(smoker,time) %>% 
   

tips3 <- tips %<>% 
  mutate(tipPerc = tip/total_bill)

tips3 %>% 
  %>% ggplot()+
      geom_point(aes(x=time,y=smoker,color=sex,size=tipPerc),position='jitter')

#QUestion#2




