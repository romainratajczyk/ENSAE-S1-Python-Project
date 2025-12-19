# analyse de régression - Projet Delta Gentrification 
library(haven)
library(tidyverse)
library(lmtest)
library(sandwich)
library(car)
library(dplyr)
library(estimatr)

file_path <- "/Users/romain/Desktop/Projets DS/Python-project/analyse/data_pour_reg_score.csv"


df <- read.csv(file_path)
  
  


# Regression linéaire MCO
delta_score <- df$pct_voix_exp_2020 - df$pct_voix_exp_2014
delta_med <- df$MED19-df$MED13
delta_pop <- df$pop2020 / df$pop2014

# On explique Y (Score 2020) par les Deltas (X), les Stocks (X) et le Vote passé (X)
formula_v1 <- pct_voix_exp_2020 ~  part_diplome_20 + part_cadres_2020 


model <- lm_robust(formula_v1, data = df)

# Affichage du résumé complet du modèle

print(summary(model))