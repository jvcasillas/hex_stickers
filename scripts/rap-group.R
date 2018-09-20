# Set working directory
source("./helpers.R")

url <- "rap-group.github.io"
sticker(img_path, package = "RAP\nGroup", url = url, p_family = "Aller_Rg",
        p_color = ru_colors['RUblack'], p_size = 5, p_y = 1.5,
        s_x = 1, s_y = .75, s_width = 1.3, s_height = 1,
        h_fill = ru_colors['RUred'], h_color = ru_colors['RUgrey'],
        spotlight = T, l_y = 0.8, l_x = 1, l_alpha = 0.4,
        filename = "stickers/rap-group.png")

