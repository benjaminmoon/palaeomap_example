# Functions for Palaeogeographic Map Plotting
#
# * map_plot_niceties

palaeogeog_map_niceties <-
  function() {
    list(
      geom_segment(
        data = tibble(
          x = rep(-180, 3),
          xend = rep(180, 3),
          y = c(-23.5, 0, 23.5)
        ),
        aes(x = x, xend = xend, y = y, yend = y),
        colour = "grey70", size = 0.3
      ),
      geom_rect(
        data = tibble(xmin = -180, xmax = 180, ymin = -90, ymax = 90),
        aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax),
        colour = 1, fill = NA, size = 0.3
      ),
      scale_discrete_manual(
        values = map_layers,
        aesthetics = c("colour", "fill"),
        name = "Palaeogeography"
      ),
      theme(legend.position = "bottom")
    )
  }

map_border <-
  function() {
    list(
      geom_rect(
        data = tibble(xmin = -180, xmax = 180, ymin = -90, ymax = 90),
        aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax),
        colour = 1, fill = NA, size = 0.3
      )
    )
  }
