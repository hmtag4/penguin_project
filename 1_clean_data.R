install.packages("palmerpenguins")
library(palmerpenguins)

install.packages("tidyverse")
library("tidyverse")

#if want to check if git is installed:


penguins <- read.table("data/penguin_data.txt", header = T)
glimpse(penguins)
str(penguins)
#now run linear regressions:
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) + stat_smooth(method = "lm")
#save plot in /figs file
ggsave("figs/1_flipper_bodymass_regression.png")
#this above saves the last plot that was run
#Now subset the data:
penguins_female <- subset(penguins, sex == "female")
#save the edited dataset
write_tsv(penguins_female, "results/1_penguin_female_only.txt")







