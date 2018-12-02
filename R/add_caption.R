#' Add caption as custom style
#'
#' To adding caption with custom style.
#'
#' Adding caption with custom style. Custom style is produced by Pandoc. Use inline R code chunk instead of R code block.
#'
#' @param style custom style name
#' @param caption caption text
#' @export
#'
add_caption <- function(style="Image Caption", caption="caption") {
  sprintf(
    "%s\n%s\n%s\n",
    stringr::str_c(':::  {custom-style="', style, '"}'),
    caption,
    ":::"
  )
}
