# Set working directory
source("./helpers.R")

url <- "github/jvcasillas"

set.seed(1)

p <- rnorm(10000) %>%
  as_tibble(.) %>%
  ggplot(., aes(x = value)) +
    geom_histogram(color = 'black', fill = 'grey70', bins = 30) +
    theme_void() +
    theme_transparent()

sticker(p, package = "SPAN589", url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUblack'], p_size = 4, p_y = 1.6,
        s_x = 1, s_y = .9, s_width = 1.2, s_height = 1,
        h_fill = ru_colors['RUgrey'], h_color = ru_colors['RUred'],
        spotlight = T, l_y = 0.9, l_x = 1, l_alpha = 0.3, u_color = 'white',
        filename = "stickers/ds4ling.png")

