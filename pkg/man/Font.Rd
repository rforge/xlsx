\name{Font}
\alias{Font}
\alias{createFont}
\title{Create a Font object.}
\description{
Create a Font object.
}
\usage{

createFont(wb, color=NULL, fontHeightInPoints=NULL, fontName=NULL,
  isItalic=FALSE, isStrikeout=FALSE, isBold=FALSE, underline=NULL,
  boldweight=NULL)

}
\arguments{
  \item{wb}{a workbook object as returned by
    \code{\link{createWorkbook}} or \code{\link{loadWorkbook}}.}

  \item{color}{a character specifiying the font color.  Any
    color names as returned by \code{\link[grDevices]{colors}} can be
    used.}
  
  \item{fontHeightInPoints}{a numeric value specifying the font height.}
  
  \item{fontName}{a character value for the font to use.  All values that
    you see in Excel should be available, e.g. "Courier New".}

  \item{isItalic}{a logical indicating the font should be italic.}

  \item{isStrikeout}{a logical indicating the font should be stiked out.}

  \item{isBold}{a logical indicating the font should be bold.}

  \item{underline}{a logical indicating the font should be underlined.}

  \item{boldweight}{a numeric value indicating bold weight.  Normal is
  400, regular bold is 700. }
  
}

\details{
  Default values for \code{NULL} parameters are taken from Excel.  So
  the default font color is black, the default font name is "Calibri", and
  the font height in points is 11.

  NOTE: You need to have a \code{Workbook} object to attach  a
  \code{Font} object to it. 
}
\value{
  \code{createFont} returns a java reference to a \code{Font} object.
}
\author{Adrian Dragulescu}
\seealso{\code{\link{CellStyle}} for using the a \code{Font} object.}


