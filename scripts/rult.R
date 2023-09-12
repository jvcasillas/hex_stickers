# Set working directory
source("./scripts/helpers.R")

url <- "jvcasillas.com/rult"
img <- png::readPNG("./img_helpers/brain2.png")
rast <- grid::rasterGrob(img, interpolate = T)

font_add_google("Catamaran", "Catamaran")
myFont1 <- "Catamaran"

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -2.25, ymax = 2.25, xmin = -2.75) +
    annotate(geom = 'text', x = 0, y = 0, label = "",
             size = 19, color = ru_colors['RUred'], family = myFont1) +
    coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "rult", url = url, p_color = ru_colors['RUblack'],
  p_size = 14, p_y = 1.55,
  s_x = 1.06, s_y = 0.75, s_width = 1.85, s_height = 1.5,
  h_fill = 'white', h_color = ru_colors['RUgrey'],
  u_color = ru_colors['RUblack'],
  u_size = 5.5, filename = "stickers/rult.png"
  )

