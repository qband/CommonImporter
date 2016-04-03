library(rvest)
html <- read_html("http://pssclub.com/forum.php?mod=forumdisplay&fid=2")

new_post <- html %>%
  html_nodes("th.new > a.xst") %>%
  html_text()
new_post
