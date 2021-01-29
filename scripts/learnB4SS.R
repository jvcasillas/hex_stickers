# Set working directory
source("./scripts/helpers.R")

url <- "learnB4SS.github.io"
img <- png::readPNG("./img_helpers/bayes.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -2.25, ymax = 2.25, xmin = -2.75) +
    annotate(geom = 'text', x = 0, y = 0, label = "",
             size = 5.75, color = "grey10") +
    coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "learnB4SS", url = url, p_color = 'darkblue',
  p_family = "Aller_Rg", p_size = 5, p_y = 1.5,
  s_x = 1.05, s_y = 0.7, s_width = 1.65, s_height = 1.5,
  h_fill = 'white', h_color = 'grey50', u_color = 'darkblue', u_size = 1.5,
  filename = "stickers/learnB4SS.png")

