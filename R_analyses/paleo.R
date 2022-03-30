#RStudio

#Read in paleo file
paleo <- read.csv("osteo-paleo-indicators-2020-Oct_v3.csv")

#read in file for n58 individuals
paleo_n53 <- read.csv("paleo_all_inds_n58_v2.csv")
paleo_n53_123 <- read.csv("paleo_all_inds_n58_123.csv")
paleo_n53_23 <- read.csv("paleo_all_inds_n58_23_v2.csv")

#subset data
#include Cribra.orbitalia2, Porotic.hyperostosis2 and LEH2 for healed lesion analyses
paleo_merge_deam_clump5e8 <- merge(residuals_1KGgp99p5e8_deam_update2, paleo, by.x="ID", by.y="ID")
paleo_merge5e8_deam_LEH <- subset(paleo_merge_deam_clump5e8, is.na(paleo_merge_deam_clump5e8$LEH) == FALSE)
paleo_merge5e8_deam_CO <-subset(paleo_merge_deam_clump5e8, is.na(paleo_merge_deam_clump5e8$Cribra.orbitalia) == FALSE)
paleo_merge5e8_deam_PH <-subset(paleo_merge_deam_clump5e8, is.na(paleo_merge_deam_clump5e8$Porotic.hyperostosis) == FALSE)
paleo_merge_deam_clump5e8_n54 <- merge(residuals_1KGgp99p5e8_deam_update2, paleo_n54, by.x="ID", by.y="ID")
paleo_merge_deam_clump5e8_n54_123 <- merge(residuals_1KGgp99p5e8_deam_update2, paleo_n54_123, by.x="ID", by.y="ID")
paleo_merge_deam_clump5e8_n54_23 <- merge(residuals_1KGgp99p5e8_deam_update2, paleo_n54_23, by.x="ID", by.y="ID")

paleo_merge5e8_deam_LEH$TIME = factor(paleo_merge5e8_deam_LEH$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
paleo_merge5e8_deam_PH$TIME = factor(paleo_merge5e8_deam_PH$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
paleo_merge5e8_deam_CO$TIME = factor(paleo_merge5e8_deam_CO$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))

#matches color scheme of main figures
#for PH have to exclude Iron Age to make the plot and keep the colors
#repeat for each indicator

resid_paleo_TF_violin_plot2 = ggplot(paleo_merge5e8_deam_CO,
                                    aes(TIME, paleo_merge5e8_deam_CO$residuals_deam_1KGgp99p5e8,
                                        fill=TIME, col=TIME, shape=Cribra.orbitalia2)) +
  xlab("Time Period") +
  geom_hline(yintercept=0, linetype="dashed", color = "black") +
  ylab("Residual of Genetic Height vs Osteo Height") +
  geom_violin(trim =TRUE, lwd=0.4, width=0.5) +
  scale_fill_manual(values=c("Upper Paleolithic"="#F09B95", "Mesolithic"="#EEB76E", "Neolithic"="#A0D27B",
                             "Copper Age"="#9ACDEE", "Bronze Age"="#C898D2", "Iron Age"="#E57FC1")) + #lighter fill color
  scale_color_manual(values=c("Upper Paleolithic"="#ED645A", "Mesolithic"="#E58606", "Neolithic"="#73AF48",
                              "Copper Age"="#2F8AC4", "Bronze Age"="#7F3C8D", "Iron Age"="#CF1C90")) + #darker outline
  geom_point(size = 1.5, stroke=0.4, position = position_jitterdodge(seed=1, dodge.width = 1)) +
  scale_shape_manual(values = c(1,16)) +
  stat_summary(color = c("#ED645A", "#E58606", "#73AF48",
                         "#2F8AC4", "#7F3C8D", "#CF1C90")[sort(rep(1:6,2))],
               fun.y = median, fun.ymin = mean, fun.ymax = mean,
               geom = "crossbar",
               width = 0.5,
               position = position_dodge(width = 0.5)) +
  theme_bw(base_size = 6) +
  ylim(c(-16,15))+
  geom_vline(xintercept=c(1.5,2.5,3.5,4.5,5.5), color="grey", lty=2) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none")
resid_paleo_TF_violin_plot2

#Doesn't match color scheme but can split by females/males
#Repeat for each paleo indicator
resid_paleo_TF_violin_plot=ggplot(paleo_merge5e8_deam_CO, aes(paleo_merge5e8_deam_CO$TIME, paleo_merge5e8_deam_CO$residuals_deam_1KGgp99p5e8, fill=TIME, col=TIME, shape=Cribra.orbitalia)) +
  xlab("Time Period") + geom_hline(yintercept=0, linetype="dashed", color = "black")+
  ylab("Residual of Genetic Height vs Osteo Height") +
  geom_violin(trim =TRUE, lwd=0.4, width=0.5) +
  scale_fill_manual(values=c("#F09B95", "#EEB76E", "#A0D27B", "#9ACDEE", "#C898D2", "#E57FC1")) + #lighter fill color
  scale_color_manual(values=c("#ED645A", "#E58606", "#73AF48", "#2F8AC4", "#7F3C8D", "#CF1C90")) + #darker outline
  geom_point(size = 1, stroke=0.4, position = position_jitterdodge(seed=1, dodge.width = 1)) +
  scale_shape_manual(values = c(1,16)) +
  stat_summary(fun.y = median, fun.ymin = mean, fun.ymax = mean,
               geom = "crossbar",
               width = 0.5, col="black",
               position = position_dodge(width = 1)) +
  theme_bw(base_size = 6) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none")
resid_paleo_TF_violin_plot

##Paleo t-tests

paleo_merge5e8_LEH_deam_TRUE <- subset(paleo_merge5e8_deam_LEH, LEH=="TRUE")
paleo_merge5e8_LEH_deam_FALSE <- subset(paleo_merge5e8_deam_LEH, LEH=="FALSE")

paleo_merge5e8_LEH_NeoT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Neolithic")
paleo_merge5e8_LEH_NeoF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Neolithic")
paleo_merge5e8_LEH_MesoT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Mesolithic")
paleo_merge5e8_LEH_MesoF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Mesolithic")
paleo_merge5e8_LEH_CAT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Copper Age")
paleo_merge5e8_LEH_CAF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Copper Age")
paleo_merge5e8_LEH_BAT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Bronze Age")
paleo_merge5e8_LEH_BAF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Bronze Age")
paleo_merge5e8_LEH_UPT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Upper Paleolithic")
paleo_merge5e8_LEH_UPF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Upper Paleolithic")
paleo_merge5e8_LEH_PreNeoT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME2=="PreNeo")
paleo_merge5e8_LEH_PreNeoF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME2=="PreNeo")
paleo_merge5e8_LEH_IronT <- subset(paleo_merge5e8_LEH_deam_TRUE, TIME=="Iron Age")
paleo_merge5e8_LEH_IronF <- subset(paleo_merge5e8_LEH_deam_FALSE, TIME=="Iron Age")

#between time periods
t.test(paleo_merge5e8_LEH_PreNeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_NeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_IronT$residuals_deam_1KGgp99p5e8)

#within time periods
t.test(paleo_merge5e8_LEH_PreNeoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_PreNeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_NeoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_NeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_CAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_BAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_UPF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_UPT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_MesoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_LEH_MesoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_LEH_IronF$residuals_deam_1KGgp99p5e8, paleo_merge5e8_LEH_IronT$residuals_deam_1KGgp99p5e8)

##cribra orbitalia
paleo_merge5e8_CO_TRUE <- subset(paleo_merge5e8_deam_CO, Cribra.orbitalia=="TRUE")
paleo_merge5e8_CO_FALSE <- subset(paleo_merge5e8_deam_CO, Cribra.orbitalia=="FALSE")
paleo_merge5e8_CO_NeoT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Neolithic")
paleo_merge5e8_CO_NeoF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Neolithic")
paleo_merge5e8_CO_MesoT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Mesolithic")
paleo_merge5e8_CO_MesoF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Mesolithic")
paleo_merge5e8_CO_CAT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Copper Age")
paleo_merge5e8_CO_CAF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Copper Age")
paleo_merge5e8_CO_BAT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Bronze Age")
paleo_merge5e8_CO_BAF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Bronze Age")
paleo_merge5e8_CO_UPT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Upper Paleolithic")
paleo_merge5e8_CO_UPF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Upper Paleolithic")
paleo_merge5e8_CO_PreNeoT <- subset(paleo_merge5e8_CO_TRUE, TIME2=="PreNeo")
paleo_merge5e8_CO_PreNeoF <- subset(paleo_merge5e8_CO_FALSE, TIME2=="PreNeo")
paleo_merge5e8_CO_IAT <- subset(paleo_merge5e8_CO_TRUE, TIME=="Iron Age")
paleo_merge5e8_CO_IAF <- subset(paleo_merge5e8_CO_FALSE, TIME=="Iron Age")

#within time periods
t.test(paleo_merge5e8_CO_PreNeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_PreNeoF$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_UPT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_UPF$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_NeoF$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_MesoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_MesoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_CAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_BAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_IAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_IAT$residuals_deam_1KGgp99p5e8)

#between time periods
t.test(paleo_merge5e8_CO_PreNeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_NeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_CO_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_CO_IAT$residuals_deam_1KGgp99p5e8)

#Porotic hyperostosis
paleo_merge5e8_PH_deam_TRUE <- subset(paleo_merge5e8_deam_PH, Porotic.hyperostosis=="TRUE")
paleo_merge5e8_PH_deam_FALSE <- subset(paleo_merge5e8_deam_PH, Porotic.hyperostosis=="FALSE")

paleo_merge5e8_PH_MesoT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Mesolithic")
paleo_merge5e8_PH_MesoF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Mesolithic")
paleo_merge5e8_PH_NeoT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Neolithic")
paleo_merge5e8_PH_NeoF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Neolithic")
paleo_merge5e8_PH_CAT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Copper Age")
paleo_merge5e8_PH_CAF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Copper Age")
paleo_merge5e8_PH_BAT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Bronze Age")
paleo_merge5e8_PH_BAF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Bronze Age")
paleo_merge5e8_PH_IAT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Iron Age")
paleo_merge5e8_PH_IAF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Iron Age")
paleo_merge5e8_PH_UPT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME=="Upper Paleolithic")
paleo_merge5e8_PH_UPF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME=="Upper Paleolithic")
paleo_merge5e8_PH_PreNeoT <- subset(paleo_merge5e8_PH_deam_TRUE, TIME2=="PreNeo")
paleo_merge5e8_PH_PreNeoF <- subset(paleo_merge5e8_PH_deam_FALSE, TIME2=="PreNeo")

#within time periods
t.test(paleo_merge5e8_PH_NeoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_NeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_MesoF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_MesoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_UPF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_UPT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_CAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_BAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_IAF$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_IAT$residuals_deam_1KGgp99p5e8)

t.test(paleo_merge5e8_PH_PreNeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_NeoT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_CAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_BAT$residuals_deam_1KGgp99p5e8)
t.test(paleo_merge5e8_PH_NeoT$residuals_deam_1KGgp99p5e8,paleo_merge5e8_PH_IAT$residuals_deam_1KGgp99p5e8)

##Generate plot of all three indicators
DFtall <- paleo_merge_deam_clump5e8 %>% gather(key = Paleo, value = Value, Cribra.orbitalia:LEH)
DFtall
DFtall_noNA <-subset(DFtall, is.na(DFtall$Value) == FALSE)

DFtall_noNA$Paleo <- factor(DFtall_noNA$Paleo,levels = c("LEH","Porotic.hyperostosis", "Cribra.orbitalia"))

paleoTF_plot = ggplot(DFtall_noNA, aes(Paleo, DFtall_noNA$residuals_deam_1KGgp99p5e8,
                                       fill = Paleo, col=Paleo, shape=Value)) +
  geom_hline(yintercept=0, linetype="dashed", color = "black") +
  geom_violin(trim =TRUE, lwd=0.4, width=0.5) +
  ylab("Residuals of stature vs. genetic height score") +
  xlab("Paleopathological indicator") +
  geom_point(size=1,stroke=0.4, position = position_jitterdodge(jitter.width=0.07)) +
  scale_shape_manual(values = c(1,16)) +
  scale_fill_manual(values = c("LEH2" = "plum3", "Porotic.hyperostosis2" = "cadetblue3",   "Cribra.orbitalia2"="#FAFAD2")) +
  scale_color_manual(values = c("LEH2" = "purple4", "Porotic.hyperostosis2" = "turquoise4",   "Cribra.orbitalia2"="darkgoldenrod3")) +
  stat_summary(color = c("#191970", "turquoise4", "darkgoldenrod3")[sort(rep(1:3,2))],
               fun.y = mean, fun.ymin=mean, fun.ymax=mean,
               geom = "crossbar", linetype = 1,
               color="black", lwd=0.3, position = position_dodge(width = 0.5)) +
  theme_bw(base_size = 6) +
  geom_vline(xintercept=c(1.5,2.5,3.5,4.5,5.5,6.5), color="grey", lty=2) +
  theme(legend.position="none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
paleoTF_plot

DFtall_noNA_CO <- subset(DFtall_noNA, Paleo=="Cribra.orbitalia")
DFtall_noNA_CO_TRUE <- subset(DFtall_noNA_CO, Value=="TRUE")
DFtall_noNA_CO_FALSE <- subset(DFtall_noNA_CO, Value=="FALSE")
t.test(DFtall_noNA_CO_TRUE$residuals_deam_1KGgp99p5e8,DFtall_noNA_CO_FALSE$residuals_deam_1KGgp99p5e8)

DFtall_noNA_LEH <- subset(DFtall_noNA, Paleo=="LEH")
DFtall_noNA_LEH_TRUE <- subset(DFtall_noNA_LEH, Value=="TRUE") 
DFtall_noNA_LEH_FALSE <- subset(DFtall_noNA_LEH, Value=="FALSE")
t.test(DFtall_noNA_LEH_TRUE$residuals_deam_1KGgp99p5e8,DFtall_noNA_LEH_FALSE$residuals_deam_1KGgp99p5e8)

DFtall_noNA_PH <- subset(DFtall_noNA, Paleo=="Porotic.hyperostosis2")
DFtall_noNA_PH_TRUE <- subset(DFtall_noNA_PH, Value=="TRUE") 
DFtall_noNA_PH_FALSE <- subset(DFtall_noNA_PH, Value=="FALSE")

##Plot for n58 individuals
paleo_inds_resid_plot=ggplot(paleo_merge_deam_clump5e8_n58, aes(paleo_merge_deam_clump5e8_n58$Num.inds, paleo_merge_deam_clump5e8_n58$residuals_deam_1KGgp99p5e8, col=SEX, fill=SEX, group=Num.inds)) + 
  xlab("Time Period") + geom_hline(yintercept =0, linetype="dashed", color = "black")+
  ylab("Residual of Genetic Height vs Osteo Height") +
  geom_violin(trim =TRUE, lwd=0.3, width=0.3) +
  scale_fill_manual(values=c("#f09b95", "#c898d2")) + #lighter fill color
  scale_color_manual(values=c("#ED645A", "#7F3C8D")) + #darker outline
  geom_point(aes(shape=paleo_merge_deam_clump5e8_n54$SEX),size=1,stroke=0.5,position=position_jitter(0.09)) +
  scale_shape_manual(values = c(1, 0)) +
  stat_summary(fun.y = mean, geom = "errorbar", aes(ymax = ..y.., ymin = ..y..), linetype = 1, color="black") +
  stat_summary(fun.y = median, fun.ymin = median, fun.ymax = median, geom = "errorbar", linetype=4, color="blue") +
  theme_bw(base_size=6) + #theme(axis.text = element_text(size = 8), text = element_text(size=8)) +
  #geom_vline(xintercept=c(0.5,1.5,2.5,3.5,4.5,5.5,6.5), color="grey", lty=2) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none")
paleo_inds_resid_plot

paleon58_zero <- subset(paleo_merge_deam_clump5e8_n58, Num.inds=="0")
t.test(paleon58_zero$residuals_deam_1KGgp99p5e8,paleo_merge_deam_clump5e8_n58_123$residuals_deam_1KGgp99p5e8)
t.test(paleon58_zero$residuals_deam_1KGgp99p5e8,paleo_merge_deam_clump5e8_n58_23$residuals_deam_1KGgp99p5e8)



