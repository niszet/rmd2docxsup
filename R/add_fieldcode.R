#' Add any field code
#'
#' General use of adding field code
#'
#' hoge
#'
#' @param code filed code
#' @param text default text
#'
#' @export
#'
add_fieldcode <- function(code, text){
  head <- fieldcode_begin()
  body <- fieldcode_body(code, text)
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
fieldcode_page <- function(){
  head <- fieldcode_begin()
  body <- fieldcode_body("PAGE   \\* MERGEFORMAT", 1)
  tail <- fieldcode_end()
  sprintf("%s%s%s",head,body,tail)
}

add_author <- function(){
  sprintf("%s%s%s", p_begin(),
  '<w:fldSimple w:instr="AUTHOR"><w:r><w:t>niszet</w:t></w:r></w:fldSimple>',
      p_end()
      )
}


#' hoge
#'
#' hoge
#'
#' hoge
#'
#' @export
#'
add_index_item <- function(word, sound, word2=NULL, sound2=NULL, ref=NULL,
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

  # body <- NULL
  tail <- fieldcode_end()
  sprintf("%s%s%s",head,body,tail)
}

#'
add_index <- function(){
  head <- fieldcode_begin()

  body <- sprintf("%s%s%s", '<w:r><w:instrText>','INDEX \\e " · " \\h "A" \\c "2" \\z "1033"', '</w:instrText></w:r><w:r><w:fldChar w:fldCharType="separate"/></w:r>')

  tail <- fieldcode_end()
  sprintf("%s%s%s",head,body,tail)

}

#'
add_index2 <- function(){
  head <- fieldcode_begin()
  body <- fieldcode_body('INDEX \\y \\c "2" \\z "1041"')
  tail <- fieldcode_end()
sprintf("%s%s%s",head,body,tail)
}


#
add_index4 <- function() {
  sprintf("%s%s%s", p_begin(), '<w:fldSimple w:instr=" INDEX \\y \\c 1 \\z 1041 "><w:r><w:rPr><w:rFonts w:hint="eastAsia"/><w:b/><w:bCs/><w:noProof/></w:rPr><w:t>Not Found</w:t></w:r></w:fldSimple>', p_end()
)
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

# to amke header of filecode which consists of ooxml, p and fieldchar blaocks.
fieldcode_begin <- function(){
  paste0(ooxml_begin(), p_begin(), fieldchar_begin())
}

fieldcode_body <- function(code, text=""){
  sprintf("%s%s%s%s%s", '<w:r><w:instrText>', code, '</w:instrText></w:r><w:r><w:fldChar w:fldCharType="separate"/></w:r><w:r><w:rPr><w:lang w:val="ja-JP" w:eastAsia="ja-JP"/></w:rPr><w:t>', text, '</w:t></w:r>')
}


fieldcode_end <- function(){
  paste0(fieldchar_end(), p_end(), ooxml_end())
}

