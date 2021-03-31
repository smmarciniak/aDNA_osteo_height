##Map figure

library(ggmap)
library(maps)
library(mapdata)
library(ggplot2)
world = map_data("world")

cblind_gscores2 = c("#7F3C8D", "#2F8AC4", "#CF1C90", "#E58606", "#73AF48", "#ED645A")
names(cblind_gscores2) <- levels(dfukb1e2v2J$TIME)
cblind_gscores_scale <- scale_colour_manual(name="TIME", values=cblind_gscores2)

genomes <- read.csv("ukbb_height_2021_marchv4.csv")

genomes$TIME = factor(genomes$TIME, levels=c("Upper Paleolithic", "Mesolithic",
                                             "Neolithic", "Copper Age", "Bronze Age", "Iron Age"))
p2 = ggplot() +
  geom_polygon(data = world, aes(x=as.numeric(as.character(long)), y = as.numeric(as.character(lat)), group = group), fill = "light grey", color = "darkgrey") + 
  coord_fixed(xlim=c(-10, 50), ylim=c(35, 65),ratio=1.3)  + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_rect(fill = "white")) + 
  ylab("Latitude") + xlab("Longitude")

p.pts3 = p2 + geom_point(data=genomes, aes(LON, LAT, color=TIME, fill=TIME, shape=SEX), size=4, stroke=0.5, position=position_jitter(w=0.3,h=0.3)) +  
  scale_shape_manual(values = c(1, 0)) +
  #theme_bw(base_size=6) +
  theme(legend.position="none") +
  cblind_gscores_scale + cblind_gscores_scale2 

ggsave("map_gens_0328.pdf", p.pts3, width=11.1, height=8.1, unit="cm", useDingbats = FALSE)

