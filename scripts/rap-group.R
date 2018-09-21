# Set working directory
source("./helpers.R")

url <- "rap-group.github.io"
img_path <- "./img_helpers/praat.png"

sticker(
  img_path, package = "RAP\n\n\n\nGROUP", url = url, p_color = 'black',
  p_family = "Aller_Rg", p_size = 5, p_y = 1.05,
  s_x = 1, s_y = 1.05, s_width = 1.3, s_height = 1,
  h_fill = ru_colors['RUred'], h_color = ru_colors['RUgrey'],
  spotlight = T, l_y = 1.6, l_x = 1, l_alpha = 0.4, u_color = 'white',
  filename = "stickers/rap-group.png")

