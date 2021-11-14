library(tidyverse)
library(leaflet)
library(glue)

# data frames with info about bacterium from family Pectobacteriaceae
pectobacterium <- read_tsv('data/pectobacterium.csv')
dickeya <- read_tsv('data/dickeya.csv')
brenneria <- read_tsv('data/brenneria.csv')
lonsdalea <- read_tsv('data/lonsdalea.csv')
sodalis <- read_tsv('data/sodalis.csv')

# Data frames with coordinates for each genus
coor_pectobacterium <- pectobacterium %>% 
  select(genus, species,decimalLatitude, decimalLongitude) %>% 
  drop_na()
coor_dickeya <- dickeya %>% 
  select(genus, species,decimalLatitude, decimalLongitude) %>% 
  drop_na()
coor_brenneria <- brenneria %>% 
  select(genus, species,decimalLatitude, decimalLongitude) %>% 
  drop_na()
coor_lonsdalea <- lonsdalea %>% 
  select(genus, species,decimalLatitude, decimalLongitude) %>% 
  drop_na()
coor_sodalis <- sodalis %>% 
  select(genus, species,decimalLatitude, decimalLongitude) %>% 
  drop_na()

# count of species
coor_pectobacterium %>% 
  count(species)
coor_dickeya %>% 
  count(species)
coor_brenneria %>% 
  count(species)
coor_lonsdalea %>% 
  count(species)
coor_sodalis %>% 
  count(species)

discription_pectobacterium <- tribble(
  ~species, ~img, ~NCBI,
  'Pectobacterium actinidiae', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F1ADF%2FNZVH', 'https://www.ncbi.nlm.nih.gov/genome/85023',
  'Pectobacterium aquaticum', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'ncbi.nlm.nih.gov/genome/?term=Pectobacterium+aquaticum',
  'Pectobacterium aroidearum', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F19UP%2FNZVH', 'https://www.ncbi.nlm.nih.gov/genome/93273',
  'Pectobacterium atrosepticum', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_23895.jpg', 'https://www.ncbi.nlm.nih.gov/genome/1088',
  'Pectobacterium betavasculorum', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/33811',
  'Pectobacterium brasiliense', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/85021',
  'Pectobacterium cacticida', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/data-hub/taxonomy/69221/?utm_source=genome&utm_medium=referral&utm_campaign=KnownItemSensor:taxname',
  'Pectobacterium carotovorum', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_23892.jpg', 'https://www.ncbi.nlm.nih.gov/genome/1799',
  'Pectobacterium parmentieri', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F2T1Q%2FNZVH', 'https://www.ncbi.nlm.nih.gov/genome/46494',
  'Pectobacterium peruviense', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/?term=Pectobacterium+peruviense',
  'Pectobacterium polaris', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/63959',
  'Pectobacterium polonicum', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/79656',
  'Pectobacterium punjabense', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRon6BDGw_BR2rI5_WYJ2pzn5pTOPJ3ws3xaA&usqp=CAU', 'https://www.ncbi.nlm.nih.gov/genome/?term=pectobacterium+punjabense',
  'Pectobacterium wasabiae', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F1F1Y%2FNZVH', 'https://www.ncbi.nlm.nih.gov/genome/1802'
)
discription_dickeya <- tribble(
  ~species, ~img, ~NCBI,
  'Dickeya chrysanthemi', 'https://www.ncbi.nlm.nih.gov/sutils/static/GP_IMAGE/PlantPathogenes.jpg','https://www.ncbi.nlm.nih.gov/genome/11043',
  'Dickeya dadantii', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_28711.jpg','https://www.ncbi.nlm.nih.gov/genome/944',
  'Dickeya dianthicola', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F1FV6%2FNZVH','https://www.ncbi.nlm.nih.gov/genome/14821',
  'Dickeya fangzhongdai', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_28711.jpg','https://www.ncbi.nlm.nih.gov/genome/65397',
  'Dickeya paradisiaca', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_28711.jpg','https://www.ncbi.nlm.nih.gov/genome/14828',
  'Dickeya solani', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F1A0N%2FNZVH','https://www.ncbi.nlm.nih.gov/genome/14829',
  'Dickeya undicola', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_28711.jpg','https://www.ncbi.nlm.nih.gov/genome/86004',
  'Dickeya zeae', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fwww.dsmz.de%2Fmicroorganisms%2Fphotos%2FDSM_28711.jpg','https://www.ncbi.nlm.nih.gov/genome/1803'
)
discription_brenneria <- tribble(
  ~species, ~img, ~NCBI,
  'Brenneria alni', 'https://www.researchgate.net/profile/Roberta-Pastorelli-2/publication/270754078/figure/fig1/AS:670701166018567@1536919027136/Electron-micrograph-of-Erwinia-alni-PVFi-20T-NCPPB-3934T-ICMP-12481T-The-cell-was_W640.jpg','https://www.ncbi.nlm.nih.gov/genome/?term=Brenneria+alni',
  'Brenneria goodwinii', 'https://cdn.dsmz.de/images/strain/22995/DSM_27058.jpg','https://www.ncbi.nlm.nih.gov/genome/?term=brenneria+goodwinii',
  'Brenneria nigrifluens', 'https://api.gbif.org/v1/image/unsafe/fit-in/500x/http%3A%2F%2Fdata.landcareresearch.co.nz%2FImage%2F1FX3%2FNZVH','https://www.ncbi.nlm.nih.gov/genome/?term=brenneria+nigrifluens',
  'Brenneria roseae', 'https://cdn.dsmz.de/images/strain/22995/DSM_27058.jpg','https://www.ncbi.nlm.nih.gov/genome/?term=brenneria+roseae',
  'Brenneria rubrifaciens', 'https://cdn.dsmz.de/images/strain/22995/DSM_27058.jpg','https://www.ncbi.nlm.nih.gov/genome/?term=brenneria+rubrifaciens',
  'Brenneria salicis', 'https://cdn.dsmz.de/images/strain/4308/DSM_30166.jpg','https://www.ncbi.nlm.nih.gov/genome/?term=brenneria+salicis'
)
discription_lonsdalea <- tribble(
  ~species, ~img, ~NCBI,
  'Lonsdalea quercina', 'https://cdn.dsmz.de/images/strain/23014/DSM_25467.jpg', 'https://www.ncbi.nlm.nih.gov/genome/?term=Lonsdalea+quercina'
)
discription_sodalis <- tribble(
  ~species, ~img, ~NCBI,
  'Sodalis glossinidius', 'https://cdn.dsmz.de/images/strain/130313/DSM_27494.jpg', 'https://www.ncbi.nlm.nih.gov/genome/?term=Sodalis+glossinidius',
  'Sodalis praecaptivus', 'https://cdn.dsmz.de/images/strain/130313/DSM_27494.jpg', 'https://www.ncbi.nlm.nih.gov/genome/?term=Sodalis+praecaptivus+genome'
)

coor_pectobacterium <- coor_pectobacterium %>% 
  left_join(discription_pectobacterium, by = 'species')
coor_dickeya <- coor_dickeya %>% 
  left_join(discription_dickeya, by = 'species')
coor_lonsdalea <- coor_lonsdalea%>% 
  left_join(discription_lonsdalea, by = 'species')
coor_brenneria <- coor_brenneria %>% 
  left_join(discription_brenneria, by = 'species')
coor_sodalis <- coor_sodalis %>% 
  left_join(discription_sodalis, by = 'species')

all_genus <- bind_rows(
  coor_pectobacterium,
  coor_dickeya,
  coor_lonsdalea,
  coor_brenneria,
  coor_sodalis
)

all_genus %>% 
  count(species) %>% View()

all_genus <- all_genus %>%
  mutate(description_html = glue('<figure>
  <center><img src="{img}" width=120></center>
  <figcaption>
  <b><a href="{NCBI}">{species}</a></b>
  </figcaption>
</figure>'))

pal <- colorFactor(palette = "Set2", all_genus$genus)
pal1 <- colorFactor(palette = "Set1", all_genus$species)

leaflet(data = all_genus) %>% 
  addTiles() %>%
  addProviderTiles("Stamen.TonerHybrid") %>% 
  addCircleMarkers(lng = ~decimalLongitude, 
             lat = ~decimalLatitude,
             popup = ~description_html,
             clusterOptions = markerClusterOptions(all_genus$genus),
             color = ~pal(genus), opacity = 0.7, fillOpacity = 0.8, radius = 10) %>% 
  addLegend("topright", pal = pal, values = ~genus, title='Genus')

  
  