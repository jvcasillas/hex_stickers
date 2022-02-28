# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Open Science and\nReproducibility in\nLanguage Research")

img <- png::readPNG("./img_helpers/osf.png")
rast <- grid::rasterGrob(img, interpolate = T)
font_add_google("Catamaran", "Catamaran")
myFont1 <- "Catamaran"

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -1.05, ymax = 0.6, xmin = -7.5) +
    annotate(geom = 'text', x = -3.05, y = 0.7, label = "SPAN581",
      hjust = 0.5, size = 19, color = "#cc0033", family = myFont1,
      lineheight = 0.3) +
    coord_cartesian(xlim = c(-7, 1), ylim = c(-1, 1)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = course_name, url = url, p_family = "Aller_Rg",
  p_color = ru_colors['RUblack'], p_size = 8, p_y = 0.55,
  s_x = 0.98, s_y = 1.15, s_width = 1.3, s_height = 1.4, lineheight = 0.3,
  h_fill = 'grey78', h_color = 'black', u_color = 'white', u_size = 5,
  filename = "stickers/osrrl.png")

