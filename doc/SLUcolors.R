## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install, eval=FALSE------------------------------------------------------
#  if (!require(remotes)) {
#    install.packages(remotes)
#  }
#  remotes::install_github("kagervall/SLUcolors")

## ----example1-----------------------------------------------------------------
library(colorspace) # For swatchplot()
library(SLUcolors)

# Get colomn from the palette = "Shades of color"
reds <- SLUpalette("red") # Get a palette with 5 "Shades of red"
reds
# Get rows from palette 
row1 <- SLUpalette(1)
row2 <- SLUpalette(2)
row3 <- SLUpalette(3)
row4 <- SLUpalette(4)
row5 <- SLUpalette(5)
swatchplot("Deep 1" = row1,
           "Deep 2" = row2,
           "Clear1" = row3,
           "Clear2" = row4,
           "Light" = row5)



## ----example2-----------------------------------------------------------------
h <- matrix(data = 1:9, nrow = 3, byrow = TRUE)
# Bar plot using the green palette for the bars. Reverse the palette to get the lightest colors 
barplot(h, col = rev(SLUpalette("green")), main = "Palette green")

# Bar plot using row 5 (light colors) from the palette. 
barplot(h, col = SLUpalette(5), main = "Row 5 (Light)")

## ----example3-----------------------------------------------------------------
library(ggplot2)
p1 <- ggplot(iris, mapping = aes(x = Sepal.Width, y = Sepal.Length))
  
p1 + labs(title = "Red on green") +
  geom_point(color = SLUpalette("red")["Hallon"]) +
  theme_SLU("green")

cols <- SLUpalette(3)
names(cols) <- NULL # Must remove names for scale_color_manual() 
p1 +  labs(title = "Light blue, grouped by species") +
  geom_point(aes(colour = Species)) +
  scale_color_manual(values = cols) +
  theme_SLU("blue", dark = FALSE)

