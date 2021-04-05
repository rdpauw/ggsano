#' Sciensano Color Palettes
#'
#'
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#' @param name Name of the Sciensano palette to use (all, green, blue, yellow)
#'
#' @export pal_sciensano
#'
#' @importFrom grDevices col2rgb rgb
#' @importFrom scales manual_pal
#'
#' @author Robby De Pauw <\email{Robby.DePauw@@sciensano.be}>
#'
#' @examples
#' library("scales")
#' show_col(pal_sciensano()(12))
#' show_col(pal_sciensano(alpha = 0.6)(12))
pal_sciensano <- function (alpha = 1, name = "all")
{
  if (alpha > 1L | alpha <= 0L)
    stop("alpha must be in (0, 1]")
  raw_cols = unlist(x[name])
  raw_cols_rgb = col2rgb(raw_cols)
  alpha_cols = rgb(raw_cols_rgb[1L, ], raw_cols_rgb[2L, ],
                   raw_cols_rgb[3L, ], alpha = alpha * 255L, names = names(raw_cols),
                   maxColorValue = 255L)
  manual_pal(unname(alpha_cols))
}

#' Sciensano Color Scales
#'
#' See \code{\link{pal_sciensano}} for details.
#'
#' @inheritParams pal_sciensano
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_color_sciensano
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @author Robby De Pauw <\email{Robby.DePauw@@sciensano.be}>
#'
#' @rdname scale_sciensano
#'
#' @examples
#' library("ggplot2")
#' data("diamonds")
#'
#' ggplot(
#'   subset(diamonds, carat >= 2.2),
#'   aes(x = table, y = price, colour = cut)
#' ) +
#'   geom_point(alpha = 0.7) +
#'   geom_smooth(method = "loess", alpha = 0.1, size = 1, span = 1) +
#'   theme_bw() + scale_color_sciensano()
#'
#' ggplot(
#'   subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
#'   aes(x = depth, fill = cut)
#' ) +
#'   geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
#'   theme_bw() + scale_color_sciensano()
scale_color_sciensano <- function(alpha = 1, name = "all", ...) {
  discrete_scale("colour", "sciensano", pal_sciensano(alpha, name), ...)
}

#' @export scale_colour_sciensano
#' @rdname scale_sciensano
scale_colour_sciensano <- scale_color_sciensano

#' @export scale_fill_sciensano
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_sciensano
scale_fill_sciensano <- function(alpha = 1, name = "all", ...) {
  discrete_scale("fill", "sciensano", pal_sciensano(alpha, name), ...)
}
