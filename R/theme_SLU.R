#' SLU theme for ggplot2
#'
#' @param palette
#' @param dark
#'
#' @return
#' @export
#'
#' @examples
theme_SLU <- function(palette, dark = TRUE) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("ggplot2 required for theme_SLU to work",   call. = FALSE)
  }
  cols  <- SLUcolors::SLUpalette(palette, color_names = FALSE)
  greys  <- SLUcolors::SLUpalette("grey", color_names = FALSE)
  if (dark) {
    cols  <- rev(cols)
    greys  <- rev(greys)
  }
  ggplot2::theme(rect  = ggplot2::element_rect(fill = cols[5]),
        text = ggplot2::element_text(color = greys[2]),
        plot.title = ggplot2::element_text(hjust = 0.5), #argin = margin(b = -3), size = 9.6, face = "bold"),
        axis.text = ggplot2::element_text(color = greys[2]),
        axis.ticks = ggplot2::element_line(color = greys[2]),
        panel.grid.minor = ggplot2::element_line(color = NA),
        panel.border = ggplot2::element_rect(color = greys[1], fill = NA),
        panel.background = ggplot2::element_blank(), #ggplot2::element_rect(fill = cols[5]),
        panel.grid = ggplot2::element_line(color = NA))
}

#p1 <- ggplot(iris, mapping = aes(x = Sepal.Width, y = Sepal.Length)) +  labs(title = "Sepal plot") + geom_point()
