

# how big are differences
e0 %>% 
  filter(year > 2000) %>% 
  ggplot(aes(x = year, 
             y = e0, 
             color = sex, 
             linetype = source, 
             group = interaction(sex, source))) +
  geom_line(size = 1.5) +
  labs(title = "wildly different life expectancy estimates for Nigeria")+
  theme_minimal()

ggsave("fig1.pdf", fig1)