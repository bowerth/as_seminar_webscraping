require(XML)

path <- file.path(dbpath, "R", "packages", "XML")
file <- "RD_ESMSGB_A_AT_2012_0000.sdmx.xml"

xml.data <- xmlParse(file = file.path(path, file))
xml.list <- xmlToList(xml.data)

## one example with text
text <- xml.list[[2]][[4]][[15]][[4]][[1]]
table <- readHTMLTable(text, encoding = "UTF-8", stringsAsFactors = FALSE)
table[[1]]
##                                Availability (Y-start year, N) Frequency
## 1                  Total GBAORD                         Y-1975    Annual
## 2            NABS Chapter level                         Y-1998
## 3        NABS Sub-chapter level                         Y-1998    Annual
## 4  Special categories - Biotech                             No
## 5 Special categories - Security                             No
##   Gap years Time of compilation (T=x) Comments

