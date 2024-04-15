library(tidyverse)
# FACTORY PRODUCTS 1 IN EVERY 2 MINUTE
pos <- rpois(1000,2)
  data <- data.frame(pos)
ggplot(data,aes(pos))+
  geom_histogram()+
  labs(x='MINUTES')
ppois(4,2) - dpois(4,2)
##EQUAL WITH BELOW IF SAMPLE INCREASE
# pexp(target,1/mean)
pexp(4,1/2)
