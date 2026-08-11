# hier komt code om de analyse door C.Wils dd. 6/v/25 in een mooie figuur te zetten

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

# probeersel 2 gemini

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
