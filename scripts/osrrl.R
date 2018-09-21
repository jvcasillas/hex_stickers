# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Open Science and\nReproducible\nResearch\nin Linguistics")

img <- png::readPNG("./img_helpers/osf.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -0.75, ymax = 0.75, xmin = -2.5) +
    annotate(geom = 'text', x = -7, y = 0, label = course_name,
             hjust = 0, size = 2.5, color = "black", fontface = "bold") +
    coord_cartesian(xlim = c(-7, 1), ylim = c(-1, 1)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "SPAN581", url = url, p_family = "Aller_Rg",
  p_color = ru_colors['RUred'], p_size = 6, p_y = 1.5,
  s_x = 1, s_y = 0.9, s_width = 1.9, s_height = 1,
  h_fill = 'grey78', h_color = 'black', u_color = 'grey20',
  filename = "stickers/osrrl.png")

