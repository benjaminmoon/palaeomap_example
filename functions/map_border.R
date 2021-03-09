map_border <- function() {
  # Add an outline to ggplot map figure. Works for those bounded by (-180°, -90°, 180°, 90°)
    list(
      geom_rect(
        data = tibble(xmin = -180, xmax = 180, ymin = -90, ymax = 90),
        aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax),
        colour = 1, fill = NA, size = 0.3
      )
    )
  }
