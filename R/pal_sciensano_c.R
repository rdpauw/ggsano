#' Provide Continuous Sciensano Colours
#'
#' XXXXXXXXX
#'
#' @param low,high Colours for low and high ends of the gradient.
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value Colour to use for missing values
#' @param aesthetics Character string or vector of character strings listing the name(s) of the aesthetic(s) that this scale works with. This can be useful, for example, to apply colour settings to the colour and fill aesthetics at the same time, via aesthetics = c("colour", "fill").
#' @return Character vector with #HEX colour codes
#' @export
pal_sciensano_c <- function(..., low = "#B2D235", high = "#006838", space = "Lab",
                            na.value = "grey50", guide = "colourbar", aesthetics = "colour") {
  continuous_scale(aesthetics, "gradient",
    seq_gradient_pal(low, high, space),
    na.value = na.value,
    guide = guide, ...
  )
}
