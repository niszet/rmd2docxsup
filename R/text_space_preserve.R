#' Text with white space
#'
#' Insert text with preserved spaces.
#'
#' In Pandoc's transformation, white space at a beginning of sentense will be ignored. By using this function, you can get the white space preserved sentense.
#'
#' @param text text including white space
#' @param lang language. this is not valid param.
#'
#' @export

text_space_preserve <- function(text, lang="ja-JP"){
  sprintf("%s%s%s",
  '```{=openxml}\n<w:p><w:r><w:rPr>
  <w:lang w:eastAsia="ja-JP"/>
  </w:rPr><w:t xml:space="preserve">',
  text,
  '</w:t></w:r></w:p>\n```'
  )
}
