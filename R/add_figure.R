#' Add figure as a Markdown code
#'
#' Adding markdown code of figure/image.
#'
#' To add figures with any size easily, use add_figure() with inline R chunk code. This is for escaping that knitr::include_graphics() generate comment after markdown. Because of this unneeded comment, captioner cannot be worked well. This function will produce simple markdown notation of image/figure. This can be used for captioner.
#'
#' @param caption caption for image
#' @param file file path (absolute path)
#' @param width figure's width (optional)
#'
#' @export
#'
add_figure <- function(caption, file, width=NULL){
  if (is.null(width)) {
    sprintf("![%s](%s)\n", caption, file)
  }else{
    sprintf("![%s](%s){width=%s}\n", caption, file, width)
  }
}
