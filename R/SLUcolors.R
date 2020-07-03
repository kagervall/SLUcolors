#palette_list  <- c("all", "red", "green", "blue", "yellow", "grey")
#names(palette_list) <- palette_list


#' Function to extract SLU colors as hex codes
#'
#' @param ... Character names of drsimonj_colors
#'
SLU_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (SLU_colors)

  SLU_colors[cols]
}


#' Return function to interpolate a SLU color palette
#'
#' @param palette Character name of palette in SLU_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
SLU_pal <- function(palette = "all", reverse = FALSE, ...) {
  UseMethod("SLU_pal")
}
#' @export
SLU_pal.default <- function(palette, reverse = FALSE) {
  stop('Parameter "palette" must be character or numeric')
}
#' @export
SLU_pal.character <- function(palette = "all", reverse = FALSE, ...) {
  res <- SLU_palettes[[palette]]
  if (reverse)
    res <- rev(res)
  colorRampPalette(res, ...)
}
#' @export
SLU_pal.numeric <- function(palette = "all", reverse = FALSE, ...) {
  if (!is.integer(palette) & (palette < 1 | palette > 5) ) {
    stop('Numeric palette must be an integer between 1 and 5')
  }
  pall <- SLU_palettes[["all"]]
  res <- pall[seq(from = palette, by = 5, length.out = 5)]
  if (reverse)
    res <- rev(res)

  colorRampPalette(res, ...)
}

#' Get different variants of color palettes containing official SLU colors
#'
#' \code{SLUpalette(palette)} returns different variants of the official SLU color palette.
#'
#'
#' @param palette character or numeric defining the desired color palette
#' @param color_names logical return named vector or not. Default TRUE
#'
#' @return a named vector of color specifications.
#'
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
SLUpalette <- function(palette, color_names = TRUE) {
  UseMethod("SLUpalette")
}

SLUpalette.default <- function(palette, color_names) {
  stop('Parameter "palette" must be character or numeric')
}
SLUpalette.character  <- function(palette, color_names = TRUE) {
  if (!palette %in% names(SLU_palettes)) {
    stop('Unknown color palette "',palette, '" must be one of ', paste(names(SLU_palettes), collape = " "))
  }
  pal <- SLU_palettes[[palette]]
  if (!color_names) {
    names(pal) <- NULL
  }
  return(pal)
}

SLUpalette.numeric <- function(palette, color_names = TRUE) {
  if (!is.integer(palette) & (palette < 1 | palette > 5) ) {
    stop('Numeric palette must be an integer between 1 and 5')
  }
#  pall <- SLUpalette.character("all")
  pall <- SLU_palettes[["all"]]
  pal <- pall[seq(from = palette, by = 5, length.out = 5)]
  if (!color_names) {
    names(pal) <- NULL
  }
  return(pal)
}
