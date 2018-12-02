#' hoge
#'
#' hoge
#'
#' hoge
#'
#' @export
#'
fieldcode_page <- function(){
  head <- fieldcode_begin()
  body <- fieldcode_body("PAGE   \\* MERGEFORMAT", 1)
  tail <- fieldcode_end()
  sprintf("%s%s%s",head,body,tail)
}

#' hoge
#'
#' hoge
#'
#' hoge
#'
#' @export
#'
add_index <- function(word, sound, word2=NULL, sound2=NULL, ref=NULL,
                      bold=NULL, italic=NULL){
  head <- fieldcode_begin()
  body <- sprintf("%s%s%s%s%s", 'XE "', word, ":", sound, '"')
  if (!is.null(word) && !is.null(sound2)) {
    body <- sprintf("%s%s%s%s%s%s", body, ' \\y "', word2, ":", sound2, '"')
  }
  if (!is.null(bold)) {
    body <- sprintf("%s%s", body, ' \\b')
  }
  if (!is.null(italic)) {
    body <- sprintf("%s%s", body, ' \\i')
  }

  body <- fieldcode_body(body, "")

  # body <- fieldcode_body('XE "大岡山:OBIRCH" \\y "おおおかやま:おばーく" \\t "→" \\b \\i', "")
  # body <- NULL
  tail <- fieldcode_end()
  sprintf("%s%s%s",head,body,tail)
}

ooxml_begin <- function(){
  "```{=openxml}\n"
}

ooxml_end <- function(){
  "\n```"
}

p_begin <- function(){
  '<w:p>'
}

p_end <- function(){
  '</w:p>'
}

fieldchar_begin <- function(){
  '<w:fldChar w:fldCharType="begin"/>'
}

fieldchar_end <- function(){
  '<w:r><w:fldChar w:fldCharType="end"/></w:r>'
}


fieldcode_begin <- function(){
  paste0(ooxml_begin(), p_begin(), fieldchar_begin())
}

fieldcode_body <- function(code, text=""){
  sprintf("%s%s%s%s%s", '<w:r><w:instrText>', code, '</w:instrText></w:r><w:r><w:fldChar w:fldCharType="separate"/></w:r><w:r><w:rPr><w:lang w:val="ja-JP" w:eastAsia="ja-JP"/></w:rPr><w:t>', text, '</w:t></w:r>')
}


fieldcode_end <- function(){
  paste0(fieldchar_end(), p_end(), ooxml_end())
}

