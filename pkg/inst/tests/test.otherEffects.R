# test different data formats
#
#

test.otherEffects <- function(dirout="C:/Temp/")
{  
  require(xlsx)

  cat("Start testing other effects!\n")

  wb <- createWorkbook()
  sheet1 <- createSheet(wb, "Sheet1")
  rows   <- createRow(sheet1, 1:10)              # 10 rows
  cells  <- createCell(rows, colIndex=1:8)       # 8 columns

  cat("Merge cells \n")
  setCellValue(cells[[1,1]], "A title that spans 3 columns")
  addMergedRegion(sheet1, 1, 1, 1, 3)

  cat("Set zoom 2:1 \n")
  setZoom(sheet1, 200, 100)

  sheet2 <- createSheet(wb, "Sheet2")
  rows  <- createRow(sheet2, 1:10)              # 10 rows
  cells <- createCell(rows, colIndex=1:8)       # 8 columns
  #createFreezePane(sheet2, 1, 1, 1, 1)
  createFreezePane(sheet2, 5, 5, 8, 8)
  
  sheet3 <- createSheet(wb, "Sheet3")
  rows  <- createRow(sheet3, 1:10)              # 10 rows
  cells <- createCell(rows, colIndex=1:8)       # 8 columns
  createSplitPane(sheet3, 2000, 2000, 1, 1, "PANE_LOWER_LEFT")
  
 
  file <- paste(dirout, "test_otherEffects.xlsx", sep="")
  saveWorkbook(wb, file)
  cat("Saved file", file, "\n")
  

}











