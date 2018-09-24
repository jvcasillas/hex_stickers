# Set working directory
source("./scripts/helpers.R")

# To change fonts: https://stackoverflow.com/questions/34522732/changing-fonts-in-ggplot2

url <- "rap-group.github.io"
img <- png::readPNG("./img_helpers/praat.png")
rast <- grid::rasterGrob(img, interpolate = T)
font_add_google("Metrophobic", "Metrophobic")
myFont1 <- "Metrophobic"
myFont2 <- "Coda"
myFont3 <- "Maven Pro"

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -5, ymax = 5, xmin = -2.4) +
    annotate(geom = 'text', x = 0, y = 0, label = "RAP\n\n\ngroup",
             size = 5.75, color = "grey10", family = myFont1) +
    annotate(geom = 'text', x = 0.01, y = 0.01, label = "RAP\n\n\ngroup",
             size = 5.75, color = "grey25", family = myFont1) +
    coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "", url = url, p_color = 'black',
  p_family = "Comic Sans MS", p_size = 5, p_y = 1.0,
  s_x = 1, s_y = 0.75, s_width = 2.5, s_height = 2.2,
  h_fill = ru_colors['RUred'], h_color = ru_colors['RUgrey'],
  spotlight = T, l_y = 1, l_x = 1, l_alpha = 0.3, l_width = 4, l_height = 4,
  u_color = 'white',
  filename = "stickers/rap-group.png")


img_path_v2 <- "./img_helpers/praat_dark.png"

sticker(
  img_path_v2, package = "RAP\n\nGROUP", p_color = ru_colors['RUred'],
  p_family = "Aller_Rg", p_size = 5, p_y = 0.95,
  s_x = 1, s_y = 1.05, s_width = 0.9, s_height = 1,
  h_fill = NA, h_color = NA, spotlight = F,
  filename = "stickers/rap-group-v2.png")

