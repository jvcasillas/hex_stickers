# Set working directory
source("./scripts/helpers.R")

url <- "https://opnlnx.github.io/"

set.seed(1)


img1 <- png::readPNG("./img_helpers/opnlnx_1.png")
img2 <- png::readPNG("./img_helpers/opnlnx_2.png")
rast1 <- grid::rasterGrob(img1, interpolate = T)
rast2 <- grid::rasterGrob(img2, interpolate = T)


p1 <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast1, ymin = -1.5, ymax = 1.5, xmin = -7.5) +
    coord_cartesian(xlim = c(-7, 1), ylim = c(-2, 2)) +
    theme_void() +
    theme_transparent()

p2 <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
  geom_point(alpha = 0) +
  annotation_custom(rast2, ymin = -1.5, ymax = 1.5, xmin = -7.5) +
  coord_cartesian(xlim = c(-7, 1), ylim = c(-2, 2)) +
  theme_void() +
  theme_transparent()

sticker(
  p1, package = "", url = url, p_family = "Aller_Rg",
  p_color = ru_colors['RUblack'], p_size = 2.2, p_y = 0.55,
  s_x = 1, s_y = 1, s_width = 1.85, s_height = 2,
  h_fill = 'white', h_color = ru_colors['RUgrey'], u_color = 'black',
  u_size = 1.35,
  filename = "stickers/opnlnx.png")

sticker(
  p2, package = "", url = url, p_family = "Aller_Rg",
  p_color = ru_colors['RUblack'], p_size = 2.2, p_y = 0.55,
  s_x = 1, s_y = 1, s_width = 1.85, s_height = 2,
  h_fill = 'white', h_color = ru_colors['RUgrey'], u_color = 'black',
  u_size = 1.35,
  filename = "stickers/opnlnx-v2.png")

