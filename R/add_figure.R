
add_figure <- function(caption, file, width=NULL){
  if (is.null(width)) {
    sprintf("![%s](%s)\n", caption, file)
  }else{
    sprintf("![%s](%s){width=%s}\n", caption, file, width)
  }
}
