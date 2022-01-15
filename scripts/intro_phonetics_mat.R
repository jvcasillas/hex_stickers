# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Spanish phonetics for teachers")

img <- png::readPNG("./img_helpers/praat.png")
rast <- grid::rasterGrob(img, interpolate = T)

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -5, ymax = 5, xmin = -2.4) +
    annotate(geom = 'text', x = 0, y = -2.95, label = course_name,
             size = 7.5, color = "black", fontface = "bold") +
    coord_cartesian(xlim = c(-2.1, 2.2), ylim = c(-3.75, 2)) +
    theme_void() +
    theme_transparent()

sticker(p, package = "SPAN580", url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUred'], p_size = 18, p_y = 1.5,
        s_x = 1, s_y = 0.9, s_width = 2.4, s_height = 1, u_size = 5,
        h_fill = 'grey78', h_color = 'black', u_color = 'grey20',
        filename = "stickers/intro_phonetics_mat.png")

