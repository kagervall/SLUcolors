palette_list  <- c("all", "red", "green", "blue", "yellow", "grey")
names(palette_list) <- palette_list

#' Get different variants of color palettes containing official SLU colors
#'
#' \code{SLUpalette(palette)} returns different variants of the official SLU color palette.
#'
#'
#' @param patette character or numeric defining the desired color palette
#'
#' @return
#' a named vector of color specifications.
#' @export
#'
#' @examples
#' opal <- palette(SLUpalette("red")) # set default palette to SLU "red" and save original palette
#' plot(Sepal.Width ~ Sepal.Length, data = iris, pch = 16, col = Species)
#' palette(SLUpalette("blue")) # set default palette to SLU "blue"
#' plot(Sepal.Width ~ Sepal.Length, data = iris, pch = 16, col = Species)
#' palette(opal)
#
#'
SLUpalette <- function(palette) {
  UseMethod("SLUpalette")
}

SLUpalette.default <- function(palette) {
  stop('Parameter "palette" must be character or numeric')
}
SLUpalette.character  <- function(palette) {
  if (!palette %in% palette_list) {
    stop('Unknown color palette "',palette, '" must be one of ', paste(palette_list, collape = " "))
  }
  switch(palette,
         all = c(SLUpalette("green"), SLUpalette("red"), SLUpalette("blue"),
                 SLUpalette("yellow"), SLUpalette("grey")),
         red = rev(rgb(red = c(251, 255, 206, 103, 80),
                   green = c(215, 88, 0, 33, 43),
                   blue = c(201, 93, 55, 70, 58),
                   max = 255,
                   names = c("Aprikos", "Korall", "Hallon",
                             "Plommon", "Druva"))),
         green = rev(rgb(red = c(216, 196, 80, 121, 21),
                     green = c(237, 214, 158, 134, 71),
                     blue = c(150, 0, 47, 60, 52),
                     max = 255,
                     names = c("Lindblom", "Äpple", "Klorofyll",
                               "Oliv", "Skog"))),
         blue = rev(rgb(red = c(185, 106, 0, 0, 0),
                    green = c(211, 209, 176, 118, 72),
                    blue = c(220, 227, 185, 129, 81),
                    max = 255,
                    names = c("Duva", "Himmel", "Turkos",
                              "Havsvik", "Havsdjup"))),
         yellow = rev(rgb(red = c(246, 252, 255, 153, 75),
                      green = c(234, 227, 184, 96, 61),
                      blue = c(97, 0, 28, 23, 42),
                      max = 255,
                      names = c("Solsken", "Majs", "Kåda",
                                "Kanel", "Choklad"))),
         grey = rev(rgb(red = c(255, 217, 187, 136, 83, 0),
                    green = c(255, 217, 188, 139, 86, 0),
                    blue = c(255, 214, 188, 141, 90, 0),
                    max = 255,
                    names = c("Snö", "Fjäder", "Glimmer", "Betong",
                              "Titan", "Kol")))
  )
}

SLUpalette.numeric <- function(palette) {
  if (!is.integer(palette) & (palette < 1 | palette > 5) ) {
    stop('Numeric palette must be an integer between 1 and 5')
  }
  pall <- SLUpalette.character("all")
  pall[seq(from = palette, by = 5, length.out = 5)]
}
