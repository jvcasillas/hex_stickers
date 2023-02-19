# Set working directory
source("./scripts/helpers.R")

url <- "https://fosil-project.github.io"
img <- png::readPNG("./img_helpers/fosil_wug.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
  geom_point(alpha = 0) +
  annotation_custom(rast, ymin = -2.25, ymax = 2.25, xmin = -2.75) +
  coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
  theme_void() +
  theme_transparent()

sticker(
  p, package = "", url = url, p_color = 'white',
  p_family = "Aller_Rg", p_size = 5, p_y = 1.4,
  s_x = 1.05, s_y = 0.75, s_width = 2.5, s_height = 1.85,
  h_fill = '#cc0033', h_color = 'darkgrey', u_color = 'white', u_size = 4.5,
  filename = "stickers/fosil-project.png")

