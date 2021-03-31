#RStudio

library(ggplot2)

#load data
dfukb1e2v2J <- read.csv("ukbb_height_2021_marchv4.csv")

ukbb_males <- subset(dfukb1e2v2J, SEX=="M")
ukbb_females <- subset(dfukb1e2v2J, SEX=="F")

#load long bone data
dfukb1e2v2J_femur <- read.csv("ukbb_height_FEMUR.csv")
dfukb1e2v2J_tibia <- read.csv("ukbb_height_TIBIA.csv")
dfukb1e2v2J_humerus <- read.csv("ukbb_height_HUMERUS.csv")
dfukb1e2v2J_radius <- read.csv("ukbb_height_RADIUS.csv")

#no deam data
fitGP99_1KGp5e8_update2=lm(dfukb1e2v2J$OSTE_HT_NS~dfukb1e2v2J$X1KG_clump_5e8_dec+SEX, data=dfukb1e2v2J)
summary(fitGP99_1KGp5e8_update2) #pval <2.2e-16, r2 0.4659; SexM < 2e-16
residuals_1KGgp99p5e8 <- residuals(fitGP99_1KGp5e8_update2) 
plot(residuals_1KGgp99p5e8)
residuals_1KGgp99p5e8_update2 <- cbind(dfukb1e2v2J,residuals_1KGgp99p5e8)

fitMS_nod=lm(OSTE_HT_NS~X1KG_clump_5e8_dec,data=subset(dfukb1e2v2J, SEX=="M"))
summary(fitMS_nod)
fitFS_nod=lm(OSTE_HT_NS~X1KG_clump_5e8_dec,data=subset(dfukb1e2v2J, SEX=="F"))
summary(fitFS_nod)

#deam data
fitGP99_1KGp5e8_deam_update2=lm(dfukb1e2v2J$OSTE_HT_NS~dfukb1e2v2J$deam_clump5e8_dec+SEX, data=dfukb1e2v2J)
summary(fitGP99_1KGp5e8_deam_update2) #pval <2.2e-16, r2 0.4338; SexM < 2e-16
residuals_deam_1KGgp99p5e8 <- residuals(fitGP99_1KGp5e8_deam_update2) 
plot(residuals_deam_1KGgp99p5e8)
residuals_1KGgp99p5e8_deam_update2 <- cbind(dfukb1e2v2J,residuals_deam_1KGgp99p5e8)

fitMS=lm(OSTE_HT_NS~deam_clump5e8_dec,data=subset(dfukb1e2v2J, SEX=="M"))
summary(fitMS)
fitFS=lm(OSTE_HT_NS~deam_clump5e8_dec,data=subset(dfukb1e2v2J, SEX=="F"))
summary(fitFS)

#deam with ancestries data
fitGP99_1KGp5e8_deam_anc_update2=lm(dfukb1e2v2J$OSTE_HT_NS~dfukb1e2v2J$deam_clump5e8_dec+SEX+C1+C2+C3+C4, data=dfukb1e2v2J)
summary(fitGP99_1KGp5e8_deam_anc_update2) #pval <2.2e-16, r2 0.4338; SexM < 2e-16
residuals_deam_anc_1KGgp99p5e8 <- residuals(fitGP99_1KGp5e8_deam_anc_update2) 
plot(residuals_deam_anc_1KGgp99p5e8)
residuals_1KGgp99p5e8_deam_anc_update2 <- cbind(dfukb1e2v2J,residuals_deam_anc_1KGgp99p5e8)

#linear model of osteo height and sex
osteo_sexfactor=lm(dfukb1e2v2J$OSTE_HT_NS~SEX, data=dfukb1e2v2J)
summary(osteo_sexfactor)
residuals_osteo_sexfactor <- residuals(osteo_sexfactor)
residuals_osteo_sexfactor_update <- cbind(dfukb1e2v2J,residuals_osteo_sexfactor)

#deam with latitude data
fitGP99_1KGp5e8_deam_lat_update2=lm(dfukb1e2v2J$OSTE_HT_NS~dfukb1e2v2J$deam_clump5e8_dec+SEX+LAT+LON, data=dfukb1e2v2J)
summary(fitGP99_1KGp5e8_deam_lat_update2) #pval <2.2e-16, r2 0.4338; SexM < 2e-16
residuals_deam_lat_1KGgp99p5e8 <- residuals(fitGP99_1KGp5e8_deam_lat_update2) 
plot(residuals_deam_lat_1KGgp99p5e8)
residuals_1KGgp99p5e8_deam_lat_update2 <- cbind(dfukb1e2v2J,residuals_deam_lat_1KGgp99p5e8)


#long bone lengths regression
ukbb_females_cm_femur=lm(ukbb_females$Avg_femur_cm~ukbb_females$deam_clump5e8_dec, data=ukbb_females)
summary(ukbb_females_cm_femur) 
ukbb_females_cm_tibia=lm(ukbb_females$Avg_tibia_cm~ukbb_females$deam_clump5e8_dec, data=ukbb_females)
summary(ukbb_females_cm_tibia)
ukbb_females_cm_humerus=lm(ukbb_females$Avg_humerus_cm~ukbb_females$deam_clump5e8_dec, data=ukbb_females)
summary(ukbb_females_cm_humerus)
ukbb_females_radius=lm(ukbb_females$Radius_stature~ukbb_females$deam_clump5e8_dec, data=ukbb_females)
summary(ukbb_females_radius)

ukbb_males_cm_femur=lm(ukbb_males$Avg_femur_cm~ukbb_males$deam_clump5e8_dec, data=ukbb_males)
summary(ukbb_males_cm_femur) 
ukbb_males_cm_tibia=lm(ukbb_males$Avg_tibia_cm~ukbb_males$deam_clump5e8_dec, data=ukbb_males)
summary(ukbb_males_cm_tibia)
ukbb_males_cm_humerus=lm(ukbb_males$Avg_humerus_cm~ukbb_males$deam_clump5e8_dec, data=ukbb_males)
summary(ukbb_males_cm_humerus)
ukbb_males_cm_radius=lm(ukbb_males$Avg_radius_cm~ukbb_males$deam_clump5e8_dec, data=ukbb_males)
summary(ukbb_males_cm_radius)

#long bone residuals
ukbb_femur=lm(dfukb1e2v2J_femur$Avg_femur_cm~dfukb1e2v2J_femur$deam_clump5e8_dec+SEX, data=dfukb1e2v2J_femur)
summary(ukbb_femur) 
residuals_ukbb_femur <- residuals(ukbb_femur) 
residuals_ukbb_femur_merge <- cbind(dfukb1e2v2J_femur,residuals_ukbb_femur)

ukbb_tibia=lm(dfukb1e2v2J_tibia$Avg_tibia_cm~dfukb1e2v2J_tibia$deam_clump5e8_dec+SEX, data=dfukb1e2v2J_tibia)
summary(ukbb_tibia) 
residuals_ukbb_tibia <- residuals(ukbb_tibia) 
residuals_ukbb_tibia_merge <- cbind(dfukb1e2v2J_tibia,residuals_ukbb_tibia)

ukbb_humerus=lm(dfukb1e2v2J_humerus$Avg_humerus_cm~dfukb1e2v2J_humerus$deam_clump5e8_dec+SEX, data=dfukb1e2v2J_humerus)
summary(ukbb_humerus)
residuals_ukbb_humerus <- residuals(ukbb_humerus) 
residuals_ukbb_humerus_merge <- cbind(dfukb1e2v2J_humerus,residuals_ukbb_humerus)

ukbb_radius=lm(dfukb1e2v2J_radius$Avg_radius_cm~dfukb1e2v2J_radius$deam_clump5e8_dec+SEX, data=dfukb1e2v2J_radius)
summary(ukbb_radius) 
residuals_ukbb_radius <- residuals(ukbb_radius) 
residuals_ukbb_radius_merge <- cbind(dfukb1e2v2J_radius,residuals_ukbb_radius)





