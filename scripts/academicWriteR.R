# Set working directory
source("./scripts/helpers.R")

url <- "jvcasillas.com/academicWriteR"
img <- png::readPNG("./img_helpers/typewritter.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -2.5, ymax = 2.5, xmin = -2.4) +
    annotate(geom = 'text', x = 0, y = 0, label = "",
             size = 5.75, color = "grey10", family = myFont1) +
    coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "academicWriteR", url = url, p_color = 'white',
  p_family = "Aller_Rg", p_size = 5, p_y = 1.4,
  s_x = 1, s_y = 0.65, s_width = 1.5, s_height = 1.3,
  h_fill = 'blue', h_color = 'darkblue', u_color = 'white', u_size = 1.5,
  filename = "stickers/academicWriteR.png")

