#' Creating histogram (for perfectionism measures)
#'
#' This function adds together 3 different numeric values to create a single total score/number. Then, it plots out the distribution of these scores on a histogram.
#'
#' @param data The data file to be loaded
#' @param x,y,z The columns of numbers to add
#' Adding x, y, z together to a new column called 'total'
#' Graphing distribution of 'total' in a histogram
#' @examples
#' # These examples only work with a specific dataset.
#' # Please contact author for more information
#' total_perf(cps, C_SOP, C_SPP, C_OOP)
#' total_perf(cps, C_PSP, C_NDisclose, C_NDisplay)
#' @return ggplot object (Distribution plot of new sum)
total_perf <- function(data, x, y, z, na.rm = TRUE)  {
if(is.character(data$x)) {
  stop('Please input a numeric value!')
}
data %>%
  dplyr::mutate(total = {{x}} + {{y}} + {{z}}) %>%
  ggplot2::ggplot(ggplot2::aes(total, ..density..)) +
  ggplot2::geom_histogram(bins = 10, colour = 'purple', fill = 'purple') +
  ggplot2::labs(x = 'Total Score', y = 'N of score')
}
