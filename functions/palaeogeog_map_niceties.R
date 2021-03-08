palaeogeog_map_niceties <- function() {
  # Additional layers to add to a ggplot map figure.
  #
  # * Lines of latitude for
  #   - Equator (0°)
  #   - Tropics (±23.5°)
  # * Outline rectangle
  # * Colours for palaeogeographical plot layers
  #   - applied to colour and fill
  # * legend at the bottom of the figure region.
  niceties <-
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
      scale_discrete_manual(
        values =
          c(
            "Ice cap"        = "#DAD3FF",
            "Land"           = "#FFD23A",
            "Mountain"       = "#FF8D51",
            "Shallow marine" = "#45D8FF"
          ),
        aesthetics = c("colour", "fill"),
        name = "Palaeogeography"
      ),
      theme(legend.position = "bottom")
    )
  c(niceties, map_border())
}
