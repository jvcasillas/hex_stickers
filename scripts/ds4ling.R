# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Data\nScience\nfor\nLinguists")
font_add_google("Catamaran", "Catamaran")
myFont1 <- "Catamaran"

p <- rnorm(n = 10000, mean = -2.5, sd = 0.65) %>%
  as_tibble(.) %>%
  ggplot(., aes(x = value)) +
    geom_histogram(aes(y = ..density..),
      color = 'grey78', fill = ru_colors['RUgrey'], bins = 17,
      size = 0.2) +
    annotate(geom = 'text', x = 0, y = 0.9, label = "SPAN658",
      hjust = 0.5, size = 19, color = ru_colors['RUred'], family = myFont1) +
    coord_cartesian(xlim = c(-5, 5), ylim = c(0, 1)) +
    theme_void() +
    theme_transparent()

sticker(p, package = course_name, url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUblack'], p_size = 11, p_y = 0.8, p_x = 1.7,
        s_x = 1, s_y = 1, s_width = 2, s_height = 1.4,
        lineheight = 0.3, hjust = 1, u_size = 5,
        h_fill = 'grey78', h_color = 'black', u_color = 'white',
        filename = "stickers/ds4ling.png")


