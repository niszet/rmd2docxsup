#' Insert New Page in docx
#'
#' Insert new page by adding ooxml code into docx. This function returns the ooxml codes without any parameters. Use inline R chunk insetead of R code block (to add ooxml code directly into sentenses)
#'
#' Function returns ooxml code as plain character vector. You can use this output as character vector.
#'
newpage <- function() {
  sprintf("%s\n%s\n%s\n",
          '```{=openxml}',
          '<w:p><w:r><w:br w:type="page"/></w:r></w:p>',
          '```'
  )
}
