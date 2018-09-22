# Set working directory
source("./scripts/helpers.R")

url <- "github.com/jvcasillas/untidydata"

data <- tibble(x = 1:30, y = 1:30) %>%
  modelr::data_grid(., x, y) %>%
  mutate(., label = rbinom(n = 900, size = 1, prob = 0.5))

data[data$x == 1 & data$y > 23 |
     data$x == 1 & data$y < 7, 'label'] <- " "
data[data$x == 2 & data$y > 23 |
     data$x == 2 & data$y < 7, 'label'] <- " "
data[data$x == 3 & data$y > 24 |
     data$x == 3 & data$y < 6, 'label'] <- " "
data[data$x == 4 & data$y > 24 |
     data$x == 4 & data$y < 6, 'label'] <- " "
data[data$x == 5 & data$y > 25 |
     data$x == 5 & data$y < 5, 'label'] <- " "
data[data$x == 6 & data$y > 25 |
     data$x == 6 & data$y < 5, 'label'] <- " "
data[data$x == 7 & data$y > 26 |
     data$x == 7 & data$y < 4, 'label'] <- " "
data[data$x == 8 & data$y > 26 |
     data$x == 8 & data$y < 4, 'label'] <- " "
data[data$x == 9 & data$y > 27 |
     data$x == 9 & data$y < 3, 'label'] <- " "
data[data$x == 10 & data$y > 27 |
     data$x == 10 & data$y < 3, 'label'] <- " "
data[data$x == 11 & data$y > 28 |
     data$x == 11 & data$y < 2, 'label'] <- " "
data[data$x == 12 & data$y > 28 |
     data$x == 12 & data$y < 2, 'label'] <- " "
data[data$x == 13 & data$y > 29 |
     data$x == 13 & data$y < 1, 'label'] <- " "
data[data$x == 14 & data$y > 29 |
     data$x == 14 & data$y < 1, 'label'] <- " "
data[data$x == 15 & data$y > 30 |
     data$x == 15 & data$y < 1, 'label'] <- " "
data[data$x == 16 & data$y > 30 |
     data$x == 16 & data$y < 1, 'label'] <- " "
data[data$x == 17 & data$y > 29 |
     data$x == 17 & data$y < 1, 'label'] <- " "
data[data$x == 18 & data$y > 29 |
     data$x == 18 & data$y < 1, 'label'] <- " "
data[data$x == 19 & data$y > 28 |
     data$x == 19 & data$y < 2, 'label'] <- " "
data[data$x == 20 & data$y > 28 |
     data$x == 20 & data$y < 3, 'label'] <- " "
data[data$x == 21 & data$y > 27 |
     data$x == 21 & data$y < 4, 'label'] <- " "
data[data$x == 22 & data$y > 27 |
     data$x == 22 & data$y < 4, 'label'] <- " "
data[data$x == 23 & data$y > 26 |
     data$x == 23 & data$y < 5, 'label'] <- " "
data[data$x == 24 & data$y > 26 |
     data$x == 24 & data$y < 5, 'label'] <- " "
data[data$x == 25 & data$y > 25 |
     data$x == 25 & data$y < 6, 'label'] <- " "
data[data$x == 26 & data$y > 25 |
     data$x == 26 & data$y < 6, 'label'] <- " "
data[data$x == 27 & data$y > 24 |
     data$x == 27 & data$y < 7, 'label'] <- " "
data[data$x == 28 & data$y > 24 |
     data$x == 28 & data$y < 7, 'label'] <- " "
data[data$x == 29 & data$y > 23 |
     data$x == 29 & data$y < 8, 'label'] <- " "
data[data$x == 30 & data$y > 23 |
     data$x == 30 & data$y < 8, 'label'] <- " "

# data_samp <- dplyr::sample_n(data, size = 800, replace = FALSE)

p <- data %>%
  ggplot(., aes(x = x, y = y, label = label)) +
    geom_text(size = 1.3, alpha = 0.2) +
              #position = position_jitter(height = 0.1, width = 0.1),
              #angle = sample(x = 0:360, size = 900, replace = TRUE)) +
    annotate('text', x =  5.40, y = 15.50, label = "u", size = 7.1, angle = 10) +
    annotate('text', x =  8.20, y = 16.00, label = "n", size = 6.9) +
    annotate('text', x = 10.20, y = 15.50, label = "t", size = 7.0) +
    annotate('text', x = 11.50, y = 16.10, label = "i", size = 7.1) +
    annotate('text', x = 13.40, y = 15.50, label = "d", size = 6.9) +
    annotate('text', x = 16.00, y = 15.55, label = "y", size = 7.0) +
    annotate('text', x = 18.60, y = 16.05, label = "d", size = 7.1) +
    annotate('text', x = 21.30, y = 15.52, label = "a", size = 6.9, angle = -10) +
    annotate('text', x = 23.50, y = 15.60, label = "t", size = 7.0) +
    annotate('text', x = 25.50, y = 16.10, label = "a", size = 7.1) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "", url = url, p_color = 'black',
  p_family = "Aller_Rg", p_size = 6, p_y = 1,
  s_x = 0.98, s_y = 1, s_width = 2.01, s_height = 2.3,
  h_fill = 'white', h_color = 'black', u_color = ru_colors['RUgrey'],
  filename = "stickers/untidydata.png")

