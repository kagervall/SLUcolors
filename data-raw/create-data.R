SLU_colors <- c(
  # red
  rev(rgb(red = c(251, 255, 206, 103, 80),
                green = c(215, 88, 0, 33, 43),
                blue = c(201, 93, 55, 70, 58),
                max = 255,
                names = c("Aprikos", "Korall", "Hallon",
                          "Plommon", "Druva"))),
  # green
  rev(rgb(red = c(216, 196, 80, 121, 21),
                  green = c(237, 214, 158, 134, 71),
                  blue = c(150, 0, 47, 60, 52),
                  max = 255,
                  names = c("Lindblom", "Äpple", "Klorofyll",
                            "Oliv", "Skog"))),
  # blue
  rev(rgb(red = c(185, 106, 0, 0, 0),
                 green = c(211, 209, 176, 118, 72),
                 blue = c(220, 227, 185, 129, 81),
                 max = 255,
                 names = c("Duva", "Himmel", "Turkos",
                           "Havsvik", "Havsdjup"))),
  # yellow
  rev(rgb(red = c(246, 252, 255, 153, 75),
                   green = c(234, 227, 184, 96, 61),
                   blue = c(97, 0, 28, 23, 42),
                   max = 255,
                   names = c("Solsken", "Majs", "Kåda",
                             "Kanel", "Choklad"))),
  # grey
  rev(rgb(red = c(255, 217, 187, 136, 83, 0),
                 green = c(255, 217, 188, 139, 86, 0),
                 blue = c(255, 214, 188, 141, 90, 0),
                 max = 255,
                 names = c("Snö", "Fjäder", "Glimmer", "Betong",
                           "Titan", "Kol"))),
  rev(rgb(red = c(86, 0, 240, 0, 230, 213),
          green = c(180, 158, 228, 114, 159, 94),
          blue = c(233, 115, 66, 178, 0, 0),
          max = 255,
          names = c("Wong2", "Wong3", "Wong4", "Wong5", "Wong1", "Wong6")))
)

SLU_palettes <- list(
  `all`  = SLUcolors::SLU_cols(),
  `red`  = SLUcolors::SLU_cols("Druva", "Plommon", "Hallon", "Korall", "Aprikos"),
  `green`   = SLUcolors::SLU_cols("Skog", "Oliv", "Klorofyll", "Äpple", "Lindblom"),
  `blue` = SLUcolors::SLU_cols("Havsdjup", "Havsvik", "Turkos", "Himmel", "Duva"),
  `yellow`  = SLUcolors::SLU_cols("Choklad", "Kanel", "Kåda", "Majs", "Solsken"),
  `grey`  = SLUcolors::SLU_cols("Kol", "Titan", "Betong", "Glimmer", "Fjäder", "Snö"),
  `wong_234516` = SLUcolors::SLU_cols("Wong2", "Wong3", "Wong4", "Wong5", "Wong1", "Wong6")
)

usethis::use_data(SLU_colors, compress = "xz", overwrite = TRUE)
usethis::use_data(SLU_palettes, compress = "xz", overwrite = TRUE)
