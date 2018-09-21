# Set working directory
source("./scripts/helpers.R")

url <- "github/jvcasillas"

set.seed(1)

course_name <- c("Data\nScience\nfor\nLinguists")

p <- rnorm(10000) %>%
  as_tibble(.) %>%
  ggplot(., aes(x = value)) +
    geom_histogram(color = ru_colors['RUgrey'], fill = 'grey80', binwidth = 0.5,
                   size = 0.2) +
    annotate(geom = 'text', x = 10, y = 1050, label = course_name,
             hjust = 1, size = 3.5, color = "black", fontface = "bold") +
    theme_void() +
    theme_transparent()

sticker(p, package = "SPAN589", url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUred'], p_size = 6, p_y = 1.5,
        s_x = 1, s_y = 0.85, s_width = 1.8, s_height = 1,
        h_fill = ru_colors['RUgrey'], h_color = ru_colors['RUred'],
        spotlight = F, l_y = 0.8, l_x = 0.7, l_alpha = 0.3, u_color = 'white',
        filename = "stickers/ds4ling.png")

