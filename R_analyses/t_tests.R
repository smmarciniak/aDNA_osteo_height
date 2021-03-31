#RStudio

#Setting up data for t-tests

#nodeam
residual_1KGgp99p5e8_Neo <- subset(residuals_1KGgp99p5e8_update2, TIME2=="Neolithic")
residual_1KGgp99p5e8_Meso <- subset(residuals_1KGgp99p5e8_update2, TIME=="Mesolithic")
residual_1KGgp99p5e8_UP <- subset(residuals_1KGgp99p5e8_update2, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_CA <- subset(residuals_1KGgp99p5e8_update2, TIME2=="Copper Age")
residual_1KGgp99p5e8_BA <- subset(residuals_1KGgp99p5e8_update2, TIME2=="Bronze Age")
residual_1KGgp99p5e8_IA <- subset(residuals_1KGgp99p5e8_update2, TIME2=="Iron Age")
residual_1KGgp99p5e8_PreNeo <- subset(residuals_1KGgp99p5e8_update2, TIME2=="PreNeo")

#deam ancestries
residual_1KGgp99p5e8_Neo_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME2=="Neolithic")
residual_1KGgp99p5e8_Meso_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME=="Mesolithic")
residual_1KGgp99p5e8_UP_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_CA_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME2=="Copper Age")
residual_1KGgp99p5e8_BA_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME2=="Bronze Age")
residual_1KGgp99p5e8_IA_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME2=="Iron Age")
residual_1KGgp99p5e8_PreNeo_anc <- subset(residuals_1KGgp99p5e8_deam_anc_update2, TIME2=="PreNeo")

#deam lat lon
residual_1KGgp99p5e8_Neo_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME2=="Neolithic")
residual_1KGgp99p5e8_Meso_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME=="Mesolithic")
residual_1KGgp99p5e8_UP_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_CA_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME2=="Copper Age")
residual_1KGgp99p5e8_BA_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME2=="Bronze Age")
residual_1KGgp99p5e8_IA_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME2=="Iron Age")
residual_1KGgp99p5e8_PreNeo_lat <- subset(residuals_1KGgp99p5e8_deam_lat_update2, TIME2=="PreNeo")

#deam 
residuals_1KGgp99p5e8_deam_Neo <- subset(residuals_1KGgp99p5e8_deam_update2, TIME2=="Neolithic")
residuals_1KGgp99p5e8_deam_Meso <- subset(residuals_1KGgp99p5e8_deam_update2, TIME=="Mesolithic")
residuals_1KGgp99p5e8_deam_CA <- subset(residuals_1KGgp99p5e8_deam_update2, TIME2=="Copper Age")
residuals_1KGgp99p5e8_deam_BA <- subset(residuals_1KGgp99p5e8_deam_update2, TIME2=="Bronze Age")
residuals_1KGgp99p5e8_deam_IA <- subset(residuals_1KGgp99p5e8_deam_update2, TIME2=="Iron Age")
residuals_1KGgp99p5e8_deam_PreNeo <- subset(residuals_1KGgp99p5e8_deam_update2, TIME2=="PreNeo")
residuals_1KGgp99p5e8_deam_UP <- subset(residuals_1KGgp99p5e8_deam_update2, TIME=="Upper Paleolithic")

#osteo with sex as a factor (osteo~sex)
residual_osteosex_Neo <- subset(residuals_osteo_sexfactor_update, TIME2=="Neolithic")
residual_osteosex_Meso <- subset(residuals_osteo_sexfactor_update, TIME=="Mesolithic")
residual_osteosex_UP <- subset(residuals_osteo_sexfactor_update, TIME=="Upper Paleolithic")
residual_osteosex_CA <- subset(residuals_osteo_sexfactor_update, TIME2=="Copper Age")
residual_osteosex_BA <- subset(residuals_osteo_sexfactor_update, TIME2=="Bronze Age")
residual_osteosex_IA <- subset(residuals_osteo_sexfactor_update, TIME2=="Iron Age")
residual_osteosex_PreNeo <- subset(residuals_osteo_sexfactor_update, TIME2=="PreNeo")

#Subset male data
residual_1KGgp99p5e8_justM <- subset(residuals_1KGgp99p5e8_update2, SEX=="M")
residual_1KGgp99p5e8_justM_Neo <- subset(residual_1KGgp99p5e8_justM, TIME2=="Neolithic")
residual_1KGgp99p5e8_justM_Meso <- subset(residual_1KGgp99p5e8_justM, TIME=="Mesolithic")
residual_1KGgp99p5e8_justM_UP <- subset(residual_1KGgp99p5e8_justM, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_justM_CA <- subset(residual_1KGgp99p5e8_justM, TIME2=="Copper Age")
residual_1KGgp99p5e8_justM_BA <- subset(residual_1KGgp99p5e8_justM, TIME2=="Bronze Age")
residual_1KGgp99p5e8_justM_IA <- subset(residual_1KGgp99p5e8_justM, TIME2=="Iron Age")
residual_1KGgp99p5e8_justM_PreNeo <- subset(residual_1KGgp99p5e8_justM, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_justM <- subset(residuals_1KGgp99p5e8_deam_update2, SEX=="M")
residual_1KGgp99p5e8_deam_justM_Neo <- subset(residual_1KGgp99p5e8_deam_justM, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_justM_Meso <- subset(residual_1KGgp99p5e8_deam_justM, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_justM_UP <- subset(residual_1KGgp99p5e8_deam_justM, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_justM_CA <- subset(residual_1KGgp99p5e8_deam_justM, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_justM_BA <- subset(residual_1KGgp99p5e8_deam_justM, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_justM_IA <- subset(residual_1KGgp99p5e8_deam_justM, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_justM_PreNeo <- subset(residual_1KGgp99p5e8_deam_justM, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_anc_justM <- subset(residuals_1KGgp99p5e8_deam_anc_update2, SEX=="M")
residual_1KGgp99p5e8_deam_anc_justM_Neo <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_anc_justM_Meso <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_anc_justM_UP <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_anc_justM_CA <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_anc_justM_BA <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_anc_justM_IA <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_anc_justM_PreNeo <- subset(residual_1KGgp99p5e8_deam_anc_justM, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_lat_justM <- subset(residuals_1KGgp99p5e8_deam_lat_update2, SEX=="M")
residual_1KGgp99p5e8_deam_lat_justM_Neo <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_lat_justM_Meso <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_lat_justM_UP <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_lat_justM_CA <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_lat_justM_BA <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_lat_justM_IA <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_lat_justM_PreNeo <- subset(residual_1KGgp99p5e8_deam_lat_justM, TIME2=="PreNeo")

#Subset female data
residual_1KGgp99p5e8_justF <- subset(residuals_1KGgp99p5e8_update2, SEX=="F")
residual_1KGgp99p5e8_justF_Neo <- subset(residual_1KGgp99p5e8_justF, TIME2=="Neolithic")
residual_1KGgp99p5e8_justF_Meso <- subset(residual_1KGgp99p5e8_justF, TIME=="Mesolithic")
residual_1KGgp99p5e8_justF_UP <- subset(residual_1KGgp99p5e8_justF, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_justF_CA <- subset(residual_1KGgp99p5e8_justF, TIME2=="Copper Age")
residual_1KGgp99p5e8_justF_BA <- subset(residual_1KGgp99p5e8_justF, TIME2=="Bronze Age")
residual_1KGgp99p5e8_justF_IA <- subset(residual_1KGgp99p5e8_justF, TIME2=="Iron Age")
residual_1KGgp99p5e8_justF_PreNeo <- subset(residual_1KGgp99p5e8_justF, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_justF <- subset(residuals_1KGgp99p5e8_deam_update2, SEX=="F")
residual_1KGgp99p5e8_deam_justF_Neo <- subset(residual_1KGgp99p5e8_deam_justF, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_justF_Meso <- subset(residual_1KGgp99p5e8_deam_justF, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_justF_UP <- subset(residual_1KGgp99p5e8_deam_justF, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_justF_CA <- subset(residual_1KGgp99p5e8_deam_justF, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_justF_BA <- subset(residual_1KGgp99p5e8_deam_justF, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_justF_IA <- subset(residual_1KGgp99p5e8_deam_justF, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_justF_PreNeo <- subset(residual_1KGgp99p5e8_deam_justF, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_anc_justF <- subset(residuals_1KGgp99p5e8_deam_anc_update2, SEX=="F")
residual_1KGgp99p5e8_deam_anc_justF_Neo <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_anc_justF_Meso <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_anc_justF_UP <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_anc_justF_CA <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_anc_justF_BA <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_anc_justF_IA <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_anc_justF_PreNeo <- subset(residual_1KGgp99p5e8_deam_anc_justF, TIME2=="PreNeo")

residual_1KGgp99p5e8_deam_lat_justF <- subset(residuals_1KGgp99p5e8_deam_lat_update2, SEX=="F")
residual_1KGgp99p5e8_deam_lat_justF_Neo <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME2=="Neolithic")
residual_1KGgp99p5e8_deam_lat_justF_Meso <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME=="Mesolithic")
residual_1KGgp99p5e8_deam_lat_justF_UP <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME=="Upper Paleolithic")
residual_1KGgp99p5e8_deam_lat_justF_CA <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME2=="Copper Age")
residual_1KGgp99p5e8_deam_lat_justF_BA <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME2=="Bronze Age")
residual_1KGgp99p5e8_deam_lat_justF_IA <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME2=="Iron Age")
residual_1KGgp99p5e8_deam_lat_justF_PreNeo <- subset(residual_1KGgp99p5e8_deam_lat_justF, TIME2=="PreNeo")

#Long bone subset data
residual_femur_Neo <- subset(residuals_ukbb_femur_merge, TIME2=="Neolithic")
residual_femur_NeoM <- subset(residual_femur_Neo, SEX=="M")
residual_femur_NeoF <- subset(residual_femur_Neo, SEX=="F")

residual_femur_Meso <- subset(residuals_ukbb_femur_merge, TIME=="Mesolithic")
residual_femur_MesoM <- subset(residual_femur_Meso, SEX=="M")
residual_femur_MesoF <- subset(residual_femur_Meso, SEX=="F")

residual_femur_UP <- subset(residuals_ukbb_femur_merge, TIME=="Upper Paleolithic")
residual_femur_UPM <- subset(residual_femur_UP, SEX=="M")
residual_femur_UPF <- subset(residual_femur_UP, SEX=="F")

residual_femur_CA <- subset(residuals_ukbb_femur_merge, TIME2=="Copper Age")
residual_femur_CAM <- subset(residual_femur_CA, SEX=="M")
residual_femur_CAF <- subset(residual_femur_CA, SEX=="F")

residual_femur_BA <- subset(residuals_ukbb_femur_merge, TIME2=="Bronze Age")
residual_femur_BAM <- subset(residual_femur_BA, SEX=="M")
residual_femur_BAF <- subset(residual_femur_BA, SEX=="F")

residual_femur_IA <- subset(residuals_ukbb_femur_merge, TIME2=="Iron Age")
residual_femur_IAM <- subset(residual_femur_IA, SEX=="M")
residual_femur_IAF <- subset(residual_femur_IA, SEX=="F")

residual_femur_PreNeo <- subset(residuals_ukbb_femur_merge, TIME2=="PreNeo")
residual_femur_PreNeoM <- subset(residual_femur_PreNeo, SEX=="M")
residual_femur_PreNeoF <- subset(residual_femur_PreNeo, SEX=="F")

residual_tibia_Neo <- subset(residuals_ukbb_tibia_merge, TIME2=="Neolithic")
residual_tibia_NeoM <- subset(residual_tibia_Neo, SEX=="M")
residual_tibia_NeoF <- subset(residual_tibia_Neo, SEX=="F")

residual_tibia_Meso <- subset(residuals_ukbb_tibia_merge, TIME=="Mesolithic")
residual_tibia_MesoM <- subset(residual_tibia_Meso, SEX=="M")
residual_tibia_MesoF <- subset(residual_tibia_Meso, SEX=="F")

residual_tibia_UP <- subset(residuals_ukbb_tibia_merge, TIME=="Upper Paleolithic")
residual_tibia_UPM <- subset(residual_tibia_UP, SEX=="M")
residual_tibia_UPF <- subset(residual_tibia_UP, SEX=="F")

residual_tibia_CA <- subset(residuals_ukbb_tibia_merge, TIME2=="Copper Age")
residual_tibia_CAM <- subset(residual_tibia_CA, SEX=="M")
residual_tibia_CAF <- subset(residual_tibia_CA, SEX=="F")

residual_tibia_BA <- subset(residuals_ukbb_tibia_merge, TIME2=="Bronze Age")
residual_tibia_BAM <- subset(residual_tibia_BA, SEX=="M")
residual_tibia_BAF <- subset(residual_tibia_BA, SEX=="F")

residual_tibia_IA <- subset(residuals_ukbb_tibia_merge, TIME2=="Iron Age")
residual_tibia_IAM <- subset(residual_tibia_IA, SEX=="M")
residual_tibia_IAF <- subset(residual_tibia_IA, SEX=="F")

residual_tibia_PreNeo <- subset(residuals_ukbb_tibia_merge, TIME2=="PreNeo")
residual_tibia_PreNeoM <- subset(residual_tibia_PreNeo, SEX=="M")
residual_tibia_PreNeoF <- subset(residual_tibia_PreNeo, SEX=="F")

residual_humerus_Neo <- subset(residuals_ukbb_humerus_merge, TIME2=="Neolithic")
residual_humerus_NeoM <- subset(residual_humerus_Neo, SEX=="M")
residual_humerus_NeoF <- subset(residual_humerus_Neo, SEX=="F")

residual_humerus_Meso <- subset(residuals_ukbb_humerus_merge, TIME=="Mesolithic")
residual_humerus_MesoM <- subset(residual_humerus_Meso, SEX=="M")
residual_humerus_MesoF <- subset(residual_humerus_Meso, SEX=="F")

residual_humerus_UP <- subset(residuals_ukbb_humerus_merge, TIME=="Upper Paleolithic")
residual_humerus_UPM <- subset(residual_humerus_UP, SEX=="M")
residual_humerus_UPF <- subset(residual_humerus_UP, SEX=="F")

residual_humerus_CA <- subset(residuals_ukbb_humerus_merge, TIME2=="Copper Age")
residual_humerus_CAM <- subset(residual_humerus_CA, SEX=="M")
residual_humerus_CAF <- subset(residual_humerus_CA, SEX=="F")

residual_humerus_BA <- subset(residuals_ukbb_humerus_merge, TIME2=="Bronze Age")
residual_humerus_BAM <- subset(residual_humerus_BA, SEX=="M")
residual_humerus_BAF <- subset(residual_humerus_BA, SEX=="F")

residual_humerus_IA <- subset(residuals_ukbb_humerus_merge, TIME2=="Iron Age")
residual_humerus_IAM <- subset(residual_humerus_IA, SEX=="M")
residual_humerus_IAF <- subset(residual_humerus_IA, SEX=="F")

residual_humerus_PreNeo <- subset(residuals_ukbb_humerus_merge, TIME2=="PreNeo")
residual_humerus_PreNeoM <- subset(residual_humerus_PreNeo, SEX=="M")
residual_humerus_PreNeoF <- subset(residual_humerus_PreNeo, SEX=="F")

residual_radius_Neo <- subset(residuals_ukbb_radius_merge, TIME2=="Neolithic")
residual_radius_NeoM <- subset(residual_radius_Neo, SEX=="M")
residual_radius_NeoF <- subset(residual_radius_Neo, SEX=="F")

residual_radius_Meso <- subset(residuals_ukbb_radius_merge, TIME=="Mesolithic")
residual_radius_MesoM <- subset(residual_radius_Meso, SEX=="M")
residual_radius_MesoF <- subset(residual_radius_Meso, SEX=="F")

residual_radius_UP <- subset(residuals_ukbb_radius_merge, TIME=="Upper Paleolithic")
residual_radius_UPM <- subset(residual_radius_UP, SEX=="M")
residual_radius_UPF <- subset(residual_radius_UP, SEX=="F")

residual_radius_CA <- subset(residuals_ukbb_radius_merge, TIME2=="Copper Age")
residual_radius_CAM <- subset(residual_radius_CA, SEX=="M")
residual_radius_CAF <- subset(residual_radius_CA, SEX=="F")

residual_radius_BA <- subset(residuals_ukbb_radius_merge, TIME2=="Bronze Age")
residual_radius_BAM <- subset(residual_radius_BA, SEX=="M")
residual_radius_BAF <- subset(residual_radius_BA, SEX=="F")

residual_radius_IA <- subset(residuals_ukbb_radius_merge, TIME2=="Iron Age")
residual_radius_IAM <- subset(residual_radius_IA, SEX=="M")
residual_radius_IAF <- subset(residual_radius_IA, SEX=="F")

residual_radius_PreNeo <- subset(residuals_ukbb_radius_merge, TIME2=="PreNeo")
residual_radius_PreNeoM <- subset(residual_radius_PreNeo, SEX=="M")
residual_radius_PreNeoF <- subset(residual_radius_PreNeo, SEX=="F")

#long bones t-tests
t.test(residual_femur_PreNeo$residuals_ukbb_femur,residual_femur_Neo$residuals_ukbb_femur)
t.test(residual_femur_Neo$residuals_ukbb_femur,residual_femur_CA$residuals_ukbb_femur)
t.test(residual_femur_Neo$residuals_ukbb_femur,residual_femur_BA$residuals_ukbb_femur)
t.test(residual_femur_Neo$residuals_ukbb_femur,residual_femur_IA$residuals_ukbb_femur)

t.test(residual_tibia_PreNeo$residuals_ukbb_tibia,residual_tibia_Neo$residuals_ukbb_tibia)
t.test(residual_tibia_Neo$residuals_ukbb_tibia,residual_tibia_CA$residuals_ukbb_tibia)
t.test(residual_tibia_Neo$residuals_ukbb_tibia,residual_tibia_BA$residuals_ukbb_tibia)
t.test(residual_tibia_Neo$residuals_ukbb_tibia,residual_tibia_IA$residuals_ukbb_tibia)

t.test(residual_humerus_PreNeo$residuals_ukbb_humerus,residual_humerus_Neo$residuals_ukbb_humerus)
t.test(residual_humerus_Neo$residuals_ukbb_humerus,residual_humerus_CA$residuals_ukbb_humerus)
t.test(residual_humerus_Neo$residuals_ukbb_humerus,residual_humerus_BA$residuals_ukbb_humerus)
t.test(residual_humerus_Neo$residuals_ukbb_humerus,residual_humerus_IA$residuals_ukbb_humerus)

t.test(residual_radius_PreNeo$residuals_ukbb_radius,residual_radius_Neo$residuals_ukbb_radius)
t.test(residual_radius_Neo$residuals_ukbb_radius,residual_radius_CA$residuals_ukbb_radius)
t.test(residual_radius_Neo$residuals_ukbb_radius,residual_radius_BA$residuals_ukbb_radius)
t.test(residual_radius_Neo$residuals_ukbb_radius,residual_radius_IA$residuals_ukbb_radius)

##t-tests no deam data
#males and females combined from main model
t.test(residual_1KGgp99p5e8_PreNeo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_Neo$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_CA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_BA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_IA$residuals_1KGgp99p5e8)

#males
t.test(residual_1KGgp99p5e8_justM_PreNeo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justM_Neo$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justM_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justM_IA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justM_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justM_BA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justM_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justM_CA$residuals_1KGgp99p5e8)

#females
t.test(residual_1KGgp99p5e8_justF_PreNeo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justF_Neo$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justF_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justF_CA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justF_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justF_BA$residuals_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_justF_Neo$residuals_1KGgp99p5e8,residual_1KGgp99p5e8_justF_IA$residuals_1KGgp99p5e8)

##t-tests deam data
t.test(residuals_1KGgp99p5e8_deam_PreNeo$residuals_deam_1KGgp99p5e8,residuals_1KGgp99p5e8_deam_Neo$residuals_deam_1KGgp99p5e8)
t.test(residuals_1KGgp99p5e8_deam_Neo$residuals_deam_1KGgp99p5e8,residuals_1KGgp99p5e8_deam_CA$residuals_deam_1KGgp99p5e8)
t.test(residuals_1KGgp99p5e8_deam_Neo$residuals_deam_1KGgp99p5e8,residuals_1KGgp99p5e8_deam_BA$residuals_deam_1KGgp99p5e8)
t.test(residuals_1KGgp99p5e8_deam_Neo$residuals_deam_1KGgp99p5e8,residuals_1KGgp99p5e8_deam_IA$residuals_deam_1KGgp99p5e8)

#females
t.test(residual_1KGgp99p5e8_deam_justF_PreNeo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justF_Neo$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justF_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justF_CA$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justF_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justF_BA$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justF_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justF_IA$residuals_deam_1KGgp99p5e8)

#males
t.test(residual_1KGgp99p5e8_deam_justM_PreNeo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justM_Neo$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justM_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justM_CA$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justM_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justM_BA$residuals_deam_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_justM_Neo$residuals_deam_1KGgp99p5e8,residual_1KGgp99p5e8_deam_justM_IA$residuals_deam_1KGgp99p5e8)

##t-tests deam ancestries 
t.test(residual_1KGgp99p5e8_PreNeo_anc$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_Neo_anc$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_anc$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_CA_anc$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_anc$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_BA_anc$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_anc$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_IA_anc$residuals_deam_anc_1KGgp99p5e8)

t.test(residual_1KGgp99p5e8_deam_anc_justM_PreNeo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justM_Neo$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justM_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justM_CA$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justM_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justM_BA$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justM_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justM_IA$residuals_deam_anc_1KGgp99p5e8)

t.test(residual_1KGgp99p5e8_deam_anc_justF_PreNeo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justF_Neo$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justF_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justF_CA$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justF_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justF_BA$residuals_deam_anc_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_anc_justF_Neo$residuals_deam_anc_1KGgp99p5e8,residual_1KGgp99p5e8_deam_anc_justF_IA$residuals_deam_anc_1KGgp99p5e8)

##t-tests deam lat lon
t.test(residual_1KGgp99p5e8_PreNeo_lat$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_Neo_lat$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_lat$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_CA_lat$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_lat$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_BA_lat$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_Neo_lat$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_IA_lat$residuals_deam_lat_1KGgp99p5e8)

t.test(residual_1KGgp99p5e8_deam_lat_justF_PreNeo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justF_Neo$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justF_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justF_CA$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justF_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justF_BA$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justF_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justF_IA$residuals_deam_lat_1KGgp99p5e8)

t.test(residual_1KGgp99p5e8_deam_lat_justM_PreNeo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justM_Neo$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justM_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justM_CA$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justM_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justM_BA$residuals_deam_lat_1KGgp99p5e8)
t.test(residual_1KGgp99p5e8_deam_lat_justM_Neo$residuals_deam_lat_1KGgp99p5e8,residual_1KGgp99p5e8_deam_lat_justM_IA$residuals_deam_lat_1KGgp99p5e8)






