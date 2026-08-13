# draft code voor figuur analyse C.Wils dd. 6/v/25 obv Gemini-suggesties 11/viii/26

# probeersel 3 aanpassing gemini 2 met eigen data en ecosysteemtypen

library(ggplot2)

# 1. Voorbeelddata
df <- data.frame(
  ecosysteem = c("3.1 Modified grassland", "3.2 Semi-natural grassland", "4.1 Broadleaved deciduous forests", "4.2 Coniferous forests", "4.3 Forest shrub","5.1 Temperate shrub heathland", "6.2 Inland sand dunes", "7.1 Inland wetlands on mineral soil", "7.2 Mires, bogs and fens", "10.2 Intertidal flats", "11.2 Coastal dunes and beaches"),
  OPP     = c(187853, 79634, 87777, 54924, 10221, 10580, 133, 3333, 301, 1301, 4520),
  MINOPP  = c(165588, 77944, 83227, 47188, 9213, 9968, 117, 2570, 266, 1299, 4376),
  MAXOPP  = c(195786, 98443, 97736, 56294, 14555, 12016, 314, 4713, 570, 1344, 4571)
)

# 2. Definieer je eigen hex-kleurcodes per biotoop
kleuren_ecosysteem <- c(
  "3.1 Modified grassland"      = "#CCFFCC", # Bleekgroen
  "3.2 Semi-natural grassland"    = "#AAFF00", # Felgroen
  "4.1 Broadleaved deciduous forests"   = "#00B050", # Donkergroen
  "4.2 Coniferous forests" = "#00CC66",  # Diepgroen
  "4.3 Forest shrub" = "#33CC33",  # Groen
  "5.1 Temperate shrub heathland" = "#E49EDD",  # Lichtpaars
  "6.2 Inland sand dunes" = "#FFD37F",  # Geelbruin
  "7.1 Inland wetlands on mineral soil" = "#CDAA66",  # Lichtbruin
  "7.2 Mires, bogs and fens" = "#996633",  # Bruin
  "10.2 Intertidal flats" = "#785829",  # Donkerbruin
  "11.2 Coastal dunes and beaches" = "#FF73DF"  # Roos
)

# 3. Figuur maken
ggplot(df, aes(y = reorder(ecosysteem, OPP), x = OPP, fill = ecosysteem)) +
  geom_col(width = 0.6, alpha = 0.85) +
  geom_errorbar(aes(xmin = MINOPP, xmax = MAXOPP), width = 0.2, color = "black") +
  scale_fill_manual(values = kleuren_ecosysteem) +
  labs(
    title = "Oppervlaktevergelijking raster- en vectordata",
    x = "Oppervlakte",
    y = "Ecosysteem"
  ) +
  theme_minimal() +
  theme(legend.position = "none") # Verbergt de legende, want de Y-as toont de namen al

# probeersel 1 gemini

library(ggplot2)

# Voorbeelddata (vervang 'df' door de naam van jouw data frame)
df <- data.frame(
  biotoop = c("Bos", "Heide", "Moeras", "Grasland"),
  OPP     = c(150, 80, 45, 120),
  MINOPP  = c(120, 65, 30, 100),
  MAXOPP  = c(170, 95, 60, 140)
)

# Figuur maken
ggplot(df, aes(y = reorder(biotoop, OPP), x = OPP)) +
  geom_col(fill = "steelblue", width = 0.6, alpha = 0.8) +
  geom_errorbar(aes(xmin = MINOPP, xmax = MAXOPP), width = 0.2, color = "black") +
  labs(
    title = "Oppervlakteschatting per biotoop",
    x = "Oppervlakte",
    y = "Biotoop"
  ) +
  theme_minimal()

# probeersel 2 gemini met eigen hex-kleurcodes

library(ggplot2)

# 1. Voorbeelddata
df <- data.frame(
  biotoop = c("Bos", "Heide", "Moeras", "Grasland"),
  OPP     = c(150, 80, 45, 120),
  MINOPP  = c(120, 65, 30, 100),
  MAXOPP  = c(170, 95, 60, 140)
)

# 2. Definieer je eigen hex-kleurcodes per biotoop
kleuren_biotoop <- c(
  "Bos"      = "#2e6f40", # Donkergroen
  "Heide"    = "#8e44ad", # Paars
  "Moeras"   = "#3498db", # Blauw
  "Grasland" = "#2ecc71"  # Lichtgroen
)

# 3. Figuur maken
ggplot(df, aes(y = reorder(biotoop, OPP), x = OPP, fill = biotoop)) +
  geom_col(width = 0.6, alpha = 0.85) +
  geom_errorbar(aes(xmin = MINOPP, xmax = MAXOPP), width = 0.2, color = "black") +
  scale_fill_manual(values = kleuren_biotoop) +
  labs(
    title = "Oppervlakteschatting per biotoop",
    x = "Oppervlakte",
    y = "Biotoop"
  ) +
  theme_minimal() +
  theme(legend.position = "none") # Verbergt de legende, want de Y-as toont de namen al
