library(haven)
library(ggplot2)
library(dplyr)
library(ggthemes)

# Reading Data In
data.orig <- read_sav("C:/Users/suder/Documents/cst18_studentdata_en_pu_20190906.sav")

# Creating Dummy Variable with values 0 and 1
data <- subset(data.orig, data.orig$PH_051 != 5)
for(i in 1:55297){
  if (data[i,103] == 1){
    data[i,103]=0
  }
  else if (data[i,103] == 2){
    data[i,103]=0
  }
  else if (data[i,103] == 3){
    data[i,103]=1
  }
  else if (data[i,103] == 4){
    data[i,103]=1
  }
}

# Summaries for columns used
mean(data$PH_051)
sd(data$PH_051)
summary(data$PH_051)

mean(data$DVURBAN)
sd(data$DVURBAN)
summary(data$DVURBAN)

mean(data$GRADE)
sd(data$GRADE)
summary(data$GRADE)

mean(data$SEX)
sd(data$SEX)
summary(data$SEX)

mean(data$DVTY1ST, na.rm = TRUE)
sd(data$DVTY1ST, na.rm = TRUE)
summary(data$DVTY1ST, na.rm= TRUE)

# Regression and Summary
summary(lm(data$PH_051 ~ as.factor(data$DVURBAN) + data$GRADE + as.factor(data$SEX) + as.factor(data$DVTY1ST), data = data))

# Plotting Urban v Rural Students and their risk perception

df<-group_by(data, data$GRADE,  data$DVURBAN, data$PH_051) %>% summarise(n=n())
colnames(df)<- c("Grade", "Urban","Perception", "Count")
for(i in 0:11){
  j=i*2+1
  df$Count[j] <- df$Count[j]/(df$Count[j]+df$Count[j+1])
  df$Count[j+1] <- 1-df$Count[j]
}
df$Perception <- as.factor(df$Perception)
df
urbrur_lab <- c('1' = "Urban Locality Schools",
                '2' = "Rural Locality Schools")
plot <- ggplot(data=df)+
  geom_point(mapping=aes(x=Grade,y=Count,color=Perception)) +
  facet_grid(~Urban, labeller = as_labeller(urbrur_lab))+
  theme_solarized()+
  ggtitle("E-Cigarette Smoking Perception Trends over Grades 7-12")+
  labs(y= "Percentages")+
  scale_color_hue(labels = c("Low Risk", "High Risk"))
plot
