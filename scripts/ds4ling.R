# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas"

set.seed(1)

course_name <- c("Data\nScience\nfor\nLinguists")

p <- rnorm(10000) %>%
  as_tibble(.) %>%
  ggplot(., aes(x = value)) +
    geom_histogram(color = 'grey78', fill = ru_colors['RUgrey'],
                   binwidth = 0.5, size = 0.2) +
    annotate(geom = 'text', x = 10, y = 1000, label = course_name,
      hjust = 1, size = 7.5, color = "black", fontface = "bold",
      lineheight = 0.5) +
    theme_void() +
    theme_transparent()

sticker(p, package = "SPAN658", url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUred'], p_size = 18, p_y = 1.5,
        s_x = 0.95, s_y = 0.85, s_width = 1.9, s_height = 1,
        h_fill = 'grey78', h_color = 'black', u_color = 'grey20',
        filename = "stickers/ds4ling.png")

