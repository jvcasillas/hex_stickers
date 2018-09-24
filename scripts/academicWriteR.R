# Set working directory
source("./scripts/helpers.R")

url <- "jvcasillas.com/academicWriteR"


data <- tribble(
  ~'x', ~'y',
    0,    0)

p <- data %>%
  ggplot(., aes(x = x, y = y)) +
    geom_point(pch = 21, size = 20, stroke = 1, fill = 'white', alpha = 0.5) +
    theme_void() +
    theme_transparent()

sticker(
  p, package = "academicWriteR", p_color = 'yellow',
  p_family = "Aller_Rg", p_size = 5, p_y = 1.4,
  s_x = 1, s_y = 0.8, s_width = 1.5, s_height = 1.5,
  h_fill = 'blue', h_color = 'black', u_color = 'yellow', u_size = 1.25,
  spotlight = T, l_x = 1, l_y = 0.85, l_alpha = 0.7,
  l_width = 2.05, l_height = 1.8,
  filename = "stickers/academicWriteR.png")

