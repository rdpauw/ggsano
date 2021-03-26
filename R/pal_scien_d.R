#' Provide discrete Sciensano Colours
#'
#' XXXXXXXXX
#'
#' @param n Number of colours that should be returned
#' @return Character vector with #HEX colour codes
#' @export
pal_scien_d <- function(n=13){
  ## Warning if n > 13
  if (n > 13) {
    warning("More colors provided then available (max n = 13)")
  }

  n <- min(n, 13)
  ##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ##                  SCIENSANO COLORS
  ##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ## Sciensano colours
  sciensano1 <- "#39B54A"  # medium green
  sciensano2 <- "#006838"  # dark green
  sciensano3 <- "#B2D235"  # light green
  sciensano4 <- "#58595B"  # dark grey
  sciensano5 <- "#7F3028"  # dark red
  sciensano6 <- "#284C7F"  # dark blue
  sciensano7 <- "#284C7F"  # dark blue
  sciensano8 <- "#6F287F"  # purple
  sciensano9 <- "#B58939"  # beige
  sciensanoX <- "#709e54"  # Adrien's green for map points
  sciensano21 <- rgb(250, 213, 0, max = 255)  # yellow
  sciensano22 <- rgb(242, 157, 0, max = 255)  # orange
  sciensano23 <- rgb(201, 81, 23, max = 255)  # dark orange
  allcols <- c(sciensano1, sciensano2, sciensano3, sciensano4, sciensano5,
               sciensano6, sciensano7, sciensano8, sciensano9, sciensanoX,
               sciensano21, sciensano22, sciensano23)

  return(allcols[1:n])
}
