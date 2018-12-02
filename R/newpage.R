#'
newpage <- function() {
  sprintf("%s\n%s\n%s\n",
          '```{=openxml}',
          '<w:p><w:r><w:br w:type="page"/></w:r></w:p>',
          '```'
  )
}
