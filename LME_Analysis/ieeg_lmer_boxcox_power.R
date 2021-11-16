# install packages if missing
# install.packages("lmerTest") 

# other related packages if needed
# install.packages("readxl")
# install.packages("lme4")
# install.packages("nlme")
# library(readxl)
# library(nlme)

# load libraries
library(lmerTest)
library(bestNormalize)

# Read Data
Brain.df <- read.csv("C:/Users/ANUP/Desktop/LME_Analysis/Spectrogram_Correct_Power_FG_IPS.csv", fileEncoding="UTF-8-BOM")
# View(Encode_IFGL_HIPPL.df)
x = as.numeric(Brain.df$Power)
xx = bestNormalize(x)
xxt = xx[["x.t"]]
Brain.df$Power = xxt
# Run Model with subjects as random effects
ieegmodel = lmer(Power ~ Condition + (1|Subject), data=Brain.df)

# Stats
# summary(ieegmodel)
anova(ieegmodel)

