
#load packages
library(ggplot2)
library(EVR628tools)

#load data
data("data_heatwaves")

#build a plot
p <- ggplot( data = data_heatwaves,
             mapping = aes(x = year, y = temp_mean,
                           group = paste(fishery, eu_rnpa))) +
  geom_line(linewidth = .8) +
  facet_wrap(~ fishery, ncol = 2, scales = "free_y") +
  theme_bw()


#export plot
ggsave(plot = p, filename = "results/img/mean_temp_per_year.png")
p
