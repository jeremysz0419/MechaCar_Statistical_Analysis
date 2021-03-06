library(dplyr)
#read csv 
mechacar_mpg = read.csv(file='/Users/jeremyhuang/Desktop/Respository Data/MechaCar_Statistical_Analysis/MechaCar_mpg .csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg)
#multilinear regression 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg)
# summary of regression
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg))
# read csv to dataframe
suspension_coil <- read.csv(file = '/Users/jeremyhuang/Desktop/Respository Data/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
head(suspension_coil)
# suspension summary 
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# lot summary
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
# T-Test on suspension coils
t.test(suspension_coil$PSI, mu=1500)

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
