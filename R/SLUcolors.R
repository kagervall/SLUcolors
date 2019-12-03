palette_list  <- c("all", "red", "green", "blue", "yellow", "grey")
names(palette_list) <- palette_list

SLUpalette  <- function(name) {
  switch(name,
         all = c(SLUpalette("red"), SLUpalette("green"), SLUpalette("blue"),
                 SLUpalette("yellow"), SLUpalette("grey")),
         red = rgb(red = c(251, 255, 206, 103, 80),
                   green = c(215, 88, 0, 33, 43),
                   blue = c(201, 93, 55, 70, 58),
                   max = 255,
                   names = c("Aprikos", "Korall", "Hallon",
                             "Plommon", "Druva")),
         green = rgb(red = c(216, 196, 80, 121, 21),
                     green = c(237, 214, 158, 134, 71),
                     blue = c(150, 0, 47, 60, 52),
                     max = 255,
                     names = c("Lindblom", "Äpple", "Klorofyll",
                               "Oliv", "Skog")),
         blue = rgb(red = c(185, 106, 0, 0, 0),
                    green = c(211, 209, 176, 118, 129),
                    blue = c(220, 227, 185, 129, 81),
                    max = 255,
                    names = c("Duva", "Himmel", "Turkos",
                              "Havsvik", "Havsdjup")),
         yellow = rgb(red = c(246, 252, 255, 153, 75),
                      green = c(234, 227, 184, 96, 61),
                      blue = c(97, 0, 28, 23, 42),
                      max = 255,
                      names = c("Solsken", "Majs", "Kåda",
                                "Kanel", "Choklad")),
         grey = rgb(red = c(255, 217, 187, 136, 83, 0),
                    green = c(255, 217, 188, 139, 86, 0),
                    blue = c(255, 214, 188, 141, 90, 0),
                    max = 255,
                    names = c("Snö", "Fjäder", "Glimmer", "Betong",
                              "Titan", "Kol"))
  )
}