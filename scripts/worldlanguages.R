# Set working directory
source("./scripts/helpers.R")

url <- "jvcasillas.com/worldlanguages"
img <- png::readPNG("./img_helpers/earth.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) |>
  ggplot() +
  aes(x = x, y = y) +
  geom_point(alpha = 0) +
  annotation_custom(rast, ymin = -2.25, ymax = 2.25, xmin = -2.75) +
  annotate(geom = 'text', x = 0, y = 0, label = "",
           size = 5.75, color = "white") +
  coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
  theme_void() +
  theme_transparent()

sticker(
  p, package = "worldlanguages", url = url, p_color = 'white',
  p_family = "Aller_Rg", p_size = 15, p_y = 1.45,
  s_x = 1.06, s_y = 0.7, s_width = 2.15, s_height = 2.15,
  h_fill = 'black', h_color = 'grey80', u_color = 'white', u_size = 5,
  filename = "stickers/worldlanguages.png"
)

