# Set working directory
source("./scripts/helpers.R")

url <- "jvcasillas.com/lingStuff/"

set.seed(1)


img <- png::readPNG("./img_helpers/lingStuff.png")
rast <- grid::rasterGrob(img, interpolate = T)


p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -1.5, ymax = 1.5, xmin = -7.5) +
    coord_cartesian(xlim = c(-7, 1), ylim = c(-1, 1)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "", url = url, p_family = "Aller_Rg",
  p_color = ru_colors['RUblack'], p_size = 2.2, p_y = 0.55,
  s_x = 1, s_y = 1, s_width = 1.85, s_height = 2,
  h_fill = 'white', h_color = ru_colors['RUgrey'], u_color = 'black',
  u_size = 1.75,
  filename = "stickers/lingStuff.png")

