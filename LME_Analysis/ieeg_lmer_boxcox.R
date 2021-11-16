# install packages if missing
# install.packages("lmerTest") 

# other related packages if needed
# install.packages("readxl")
# install.packages("lme4")
# install.packages("nlme")
# library(readxl)
# library(nlme)
install.packages("emmeans")
# load libraries
library(lmerTest)
library(bestNormalize)
library(emmeans)

# Read Data
Brain.df <- read.csv("C:/Users/ANUP/Desktop/LME_Analysis/Correct_ITG_IPS.csv", fileEncoding="UTF-8-BOM")
# View(Encode_IFGL_HIPPL.df)
x = as.numeric(Brain.df$PTE)
xx = bestNormalize(x)
xxt = xx[["x.t"]]
Brain.df$PTE = xxt
# Run Model with subjects as random effects
ieegmodel = lmer(PTE ~ Condition + (1|Subject), data=Brain.df)
lm_em = emmeans(ieegmodel, ~ Condition)

# Stats
# summary(ieegmodel)
anova(ieegmodel)

