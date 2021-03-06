#RStudio

#Regression plots for long bones
dfukb1e2v2J_radius$TIME=factor(dfukb1e2v2J_radius$TIME, levels=c("Upper Paleolithic", "Mesolithic",
                                                           "Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
dfukb1e2v2J_humerus$TIME=factor(dfukb1e2v2J_humerus$TIME, levels=c("Upper Paleolithic", "Mesolithic",
                                                                 "Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
dfukb1e2v2J_tibia$TIME=factor(dfukb1e2v2J_tibia$TIME, levels=c("Upper Paleolithic", "Mesolithic",
                                                                 "Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
dfukb1e2v2J_femur$TIME=factor(dfukb1e2v2J_femur$TIME, levels=c("Upper Paleolithic", "Mesolithic",
                                                                 "Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
                                                              
all_reg=ggplot(subset(dfukb1e2v2J_radius), aes(dfukb1e2v2J_radius$deam_clump5e8_dec, dfukb1e2v2J_radius$Avg_radius_cm, col=TIME, shape=SEX)) + 
  geom_point(size=2,stroke=0.5) + 
  geom_smooth(method="lm", se=TRUE,color="black",level=0.95) +
  ylab("Osteological estimate (cm)") + xlab("Polygenic score") +
  theme_bw(base_size=6) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  scale_shape_manual(values = c(1, 0)) + cblind_gscores_scale +
  theme(panel.grid.major.y=element_line(color="grey", linetype="dashed")) + 
  scale_x_continuous(labels = function(x) format(x, scientific = FALSE)) +
  theme(legend.position="none")+
  facet_grid(. ~ SEX) 
all_reg

#Violin plot for osteological height data and polygenic height scores
sex_facet_plot=ggplot(dfukb1e2v2J, aes(dfukb1e2v2J$TIME, dfukb1e2v2J$OSTE_HT_NS, col=TIME, fill=TIME, shape=SEX)) + 
  xlab("Time (BP)") +
  ylab("Stature (cm)") +
  geom_violin(trim =TRUE, lwd=0.3, width=0.8, scale="width") +
  scale_fill_manual(values=c("#f09b95", "#eeb76e", "#a0d27b", "#9acdee", "#c898d2", "#e57fc1")) + #lighter fill color
  scale_color_manual(values=c("#ED645A", "#E58606", "#73AF48", "#2F8AC4", "#7F3C8D", "#CF1C90")) + #darker outline
  geom_point(aes(shape=dfukb1e2v2J$SEX),size=1.5,stroke=0.3,position=position_jitter(0.07)) +
  scale_shape_manual(values = c(1, 0)) +
  stat_summary(fun.y = mean, geom = "errorbar", aes(ymax = ..y.., ymin = ..y..), linetype = 1, lwd=0.1, color="black") +
  stat_summary(fun.y = median, fun.ymin = median, fun.ymax = median, geom = "errorbar", linetype=2,lwd=0.1, color="blue") +
  theme_bw(base_size=6) + 
  theme(axis.text.x = element_text(hjust = 1)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none") +
  theme(panel.grid.major.y=element_line(color="grey", linetype="dashed"))  +
  facet_grid(. ~ SEX)
sex_facet_plot

#linear regression plots for females and males - polygenic height score and osteological height
ukbb_males$TIME = factor(ukbb_males$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
males_reg=ggplot(subset(ukbb_males), aes(ukbb_males$deam_clump5e8_dec, ukbb_males$OSTE_HT_NS, col=TIME, shape=SEX, group=SEX)) + 
  geom_point(size=2,stroke=0.5) + 
  geom_smooth(method="lm", se=TRUE,color="black",level=0.95) +
  scale_shape_manual(values=c(0)) + cblind_gscores_scale + 
  ylab("Osteological estimate (cm)") + xlab("Polygenic score") +
  theme_bw(base_size=6) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  ylim(140,185) + 
  theme(legend.position="none") +
  #theme(axis.text = element_text(size = 9), text = element_text(size=9)) + 
  theme(panel.grid.major.y=element_line(color="grey", linetype="dashed"))   
rev_males_reg=males_reg + expand_limits(x=c(-0.00025,0.00025)) +scale_x_continuous(breaks=c(-0.00025,0,0.00025)) #for deam data

ukbb_females$TIME = factor(ukbb_females$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
females_reg=ggplot(subset(ukbb_females), aes(ukbb_females$deam_clump5e8_dec, ukbb_females$OSTE_HT_NS, col=TIME, fill=TIME, shape=SEX, group=SEX)) + 
  geom_point(size=2,stroke=0.5) + 
  geom_smooth(method="lm", se=TRUE, color="black",level=0.95) +
  scale_shape_manual(values=c(1)) + cblind_gscores_scale + cblind_gscores_scale +
  #geom_point(aes(dfukb1e2v2J$OSTEO_HT_NS, dfukb1e2v2J$SCORE_GP99p01, color=dfukb1e2v2J$SEX, size=9)) + 
  #geom_smooth(aes(dfukb1e2v2J$OSTEO_HT_NS, dfukb1e2v2J$SCORE_GP99p01, dfukb1e2v2J$SEX, color=SEX, size=4.5), method="lm", se=FALSE) +
  ylab("Osteological estimate (cm)") + xlab("Polygenic score") +
  theme_bw(base_size=6) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  ylim(140,185) + 
  theme(legend.position="none") +
  #theme(axis.text = element_text(size = 9), text = element_text(size=9)) + 
  theme(panel.grid.major.y=element_line(color="grey", linetype="dashed")) + 
  scale_x_continuous(labels = function(x) format(x, scientific = FALSE)) 
females_reg

rev_females_reg=females_reg + expand_limits(x=c(-0.00025,0.00025)) +scale_x_continuous(breaks=c(-0.00025,0,0.00025)) 

ggsave("NAME.pdf", females_reg, width=6.6, height=6.1, unit="cm", useDingbats = FALSE) #for any of the plots

##Residual plots

#osteo stature
residuals_1KGgp99p5e8_update2$TIME=factor(residuals_1KGgp99p5e8_update2$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age")) #nodeam
residuals_1KGgp99p5e8_deam_anc_update2$TIME=factor(residuals_1KGgp99p5e8_deam_anc_update2$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
residuals_1KGgp99p5e8_deam_lat_update2$TIME=factor(residuals_1KGgp99p5e8_deam_lat_update2$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
residuals_1KGgp99p5e8_deam_update2$TIME=factor(residuals_1KGgp99p5e8_deam_update2$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))

#long bones
residuals_ukbb_femur_merge$TIME=factor(residuals_ukbb_femur_merge$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
residuals_ukbb_tibia_merge$TIME=factor(residuals_ukbb_tibia_merge$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
residuals_ukbb_humerus_merge$TIME=factor(residuals_ukbb_humerus_merge$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
residuals_ukbb_radius_merge$TIME=factor(residuals_ukbb_radius_merge$TIME, levels=c("Upper Paleolithic", "Mesolithic","Neolithic", "Copper Age", "Bronze Age", "Iron Age"))

#Violin plot for residuals
resid_violin_plot=ggplot(residuals_1KGgp99p5e8_deam_update2, aes(residuals_1KGgp99p5e8_deam_update2$TIME, residuals_1KGgp99p5e8_deam_update2$residuals_deam_1KGgp99p5e8, col=TIME, fill=TIME)) + 
  xlab("Time Period") + geom_hline(yintercept=0, linetype="dashed", color = "black")+
  ylab("Residual of Genetic Height vs Osteo Height") +
  geom_violin(trim =TRUE, lwd=0.3, width=0.8) +
  geom_smooth(method="lm", se=FALSE) + #for lat lon
  scale_colour_gradient(low = "red",high = "blue")+ #for lat
  scale_fill_manual(values=c("#f09b95", "#eeb76e", "#a0d27b", "#9acdee", "#c898d2", "#e57fc1")) + #lighter fill color
  scale_color_manual(values=c("#ED645A", "#E58606", "#73AF48", "#2F8AC4", "#7F3C8D", "#CF1C90")) + #darker outline
  geom_point(aes(shape=residuals_1KGgp99p5e8_deam_update2$SEX),size=1.5,stroke=0.3,position=position_jitter(0.07)) +
  scale_shape_manual(values = c(1, 0)) +
  stat_summary(fun.y = mean, geom = "errorbar", aes(ymax = ..y.., ymin = ..y..), linetype = 1, lwd=0.3, color="black") +
  stat_summary(fun.y = median, fun.ymin = median, fun.ymax = median, geom = "errorbar", linetype=4, lwd=0.3, color="blue") +
  theme_bw(base_size=6) + #theme(axis.text = element_text(size = 8), text = element_text(size=8)) +
  geom_vline(xintercept=c(1.5,2.5,3.5,4.5,5.5), color="grey", lty=2) +
  theme(legend.position="none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
resid_violin_plot 

#Residual violin plots for females and males separate
resid_MF_violin_plot=ggplot(residuals_1KGgp99p5e8_deam_update2, aes(residuals_1KGgp99p5e8_deam_update2$TIME, residuals_1KGgp99p5e8_deam_update2$residuals_deam_1KGgp99p5e8, col=TIME, fill=TIME, shape=SEX)) + 
  xlab("Time Period") + geom_hline(yintercept=0, linetype="dashed", color = "black")+
  ylab("Residual of Genetic Height vs Osteo Height") +
  geom_violin(trim =TRUE, lwd=0.5,width=0.4) +
  scale_fill_manual(values=c("#f09b95", "#eeb76e", "#a0d27b", "#9acdee", "#c898d2", "#e57fc1")) + #lighter fill color
  scale_color_manual(values=c("#ED645A", "#E58606", "#73AF48", "#2F8AC4", "#7F3C8D", "#CF1C90")) + #darker outline
  geom_point(size = 0.75, stroke=0.5, position = position_jitterdodge(seed=1, dodge.width = 1)) +
  scale_shape_manual(values = c(1, 0)) +
  stat_summary(fun.y = median, fun.ymin = mean, fun.ymax = mean,
               geom = "crossbar", 
               width = 0.8, col="black", lwd=0.3,
               position = position_dodge(width = 1))+
  theme_bw(base_size = 6) + #theme(axis.text = element_text(size = 8), text = element_text(size=8)) +
  geom_vline(xintercept=c(1.5,2.5,3.5,4.5,5.5), color="grey", lty=2) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none")
resid_MF_violin_plot 

#Residual violin plot for long bones
residual_bone_length_plot2=ggplot(residuals_ukbb_radius_merge, aes(residuals_ukbb_radius_merge$TIME, residuals_ukbb_radius_merge$residuals_ukbb_radius, col=TIME, fill=TIME)) + #fill=dfukb1c$Sex; fill=dfukb1e_gp99_update$Sex
  geom_violin(trim=TRUE, lwd=0.5, width=0.5) + 
  geom_point(aes(shape=residuals_ukbb_radius_merge$SEX),size=2,stroke=0.5,position=position_jitter(0.07)) +
  scale_shape_manual(values=c(1,0)) +
  xlab("Time Period") + geom_hline(yintercept=0, linetype="dashed", color = "black")+
  ylab("Residual of Genetic Height vs Long bone length") +
  geom_vline(xintercept=c(1.5,2.5,3.5,4.5,5.5), color="grey", lty=2) +
  scale_fill_manual(values=c("Upper Paleolithic"="#F09B95", "Mesolithic"="#EEB76E", "Neolithic"="#A0D27B",
                           "Copper Age"="#9ACDEE", "Bronze Age"="#C898D2", "Iron Age"="#E57FC1")) + #lighter fill color
  scale_color_manual(values=c("Upper Paleolithic"="#ED645A", "Mesolithic"="#E58606", "Neolithic"="#73AF48",
                              "Copper Age"="#2F8AC4", "Bronze Age"="#7F3C8D", "Iron Age"="#CF1C90")) + #darker outline
  stat_summary(color = c("#ED645A", "#E58606", "#73AF48",
                         "#2F8AC4", "#7F3C8D", "#CF1C90")[sort(rep(1:6,1))],
               fun.y = median, fun.ymin = mean, fun.ymax = mean,
               geom = "crossbar",
               width = 0.5,
               position = position_dodge(width = 0.5)) +
  theme_bw(base_size = 6) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position="none")


residual_bone_length_plot2



