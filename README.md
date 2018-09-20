
# hex-stickers

A repo for my hex stickers. You can find all the [code used to create
the hex logos](./scripts) as well as the [PNG](./stickers) versions.

``` r
list.files("./stickers") %>% 
  sprintf("<p align='center'> <img src='stickers/%s' width='200px' /> </p>", .) %>%
  paste(collapse = "\n\n") %>% 
  cat(fill = TRUE)
```

<p align="center">

<img src='stickers/ds4ling.png' width='200px' />

</p>

<p align="center">

<img src='stickers/imgfile.png' width='200px' />

</p>

<p align="center">

<img src='stickers/osrrl.png' width='200px' />

</p>

<p align="center">

<img src='stickers/rap-group.png' width='200px' />

</p>
