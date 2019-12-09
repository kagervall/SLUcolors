SLUtheme <- function(palette, dark = TRUE) {
  if (!require(ggplot22)) {
    stop("ggplot2 required for SLUtheme to work")
  }
  cols  <- SLUcolors::SLUpalette(palette)
  greys  <- SLUcolors::SLUpalette("grey")
  if (!dark) {
    cols  <- rev(cols)
    greys  <- rev(greys)
  }
  theme(rect  = element_rect(fill = cols[5]),
        text = element_text(color = greys[2]),
        plot.title = element_text(hjust = 0.5), #argin = margin(b = -3), size = 9.6, face = "bold"),
        axis.text = element_text(color = greys[2]),
        axis.ticks = element_line(color = greys[2]),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_rect(fill = cols[3]),
        panel.grid = element_line(color = NA))
}
