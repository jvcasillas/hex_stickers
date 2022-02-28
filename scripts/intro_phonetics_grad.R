# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Phonetics and Phonology\nof Bilingualism")

img <- png::readPNG("./img_helpers/praat.png")
rast <- grid::rasterGrob(img, interpolate = T)
font_add_google("Catamaran", "Catamaran")
myFont1 <- "Catamaran"

p <-
  tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(alpha = 0) +
    annotation_custom(rast, ymin = -1, ymax = 1, xmin = -1, xmax = 1) +
    annotate(geom = 'text', x = 0, y = 0.9, label = "SPAN650",
      hjust = 0.5, size = 19, color = "#cc0033", family = myFont1,
      lineheight = 0.3) +
    coord_cartesian(xlim = c(-1, 1), ylim = c(-1, 1)) +
    theme_void() +
    theme_transparent()

sticker(p, package = course_name, url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUblack'], p_size = 8, p_y = 0.55,
        s_x = 1, s_y = 1, s_width = 2.5, s_height = 1.5, u_size = 5,
        lineheight = 0.3, h_fill = 'grey78', h_color = 'black',
        u_color = 'white',
        filename = "stickers/intro_phonetics_grad.png")

