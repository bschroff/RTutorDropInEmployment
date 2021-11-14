This package constitutes an interactive R problem set based on the RTutor package (https://github.com/skranz/RTutor). 

The problem set “Explaining the 2007-2009 Drop in Employment” is based on the article “What Explains the 2007-2009 Drop in Employment?” by Atif Mian and Amir Sufi (2014). It investigates the role of the decrease in housing net worth between 2006 and 2009 in the drop in U.S. employment during the 2007-2009 recession. The article, appendix and data can be found at [https://amirsufi.net/chronology.html](https://amirsufi.net/chronology.html).

## 1. Installation

RTutor and this package is hosted on Github. To install everything, run the following code in your R console.
```s
install.packages("RTutor",repos = c("https://skranz-repo.github.io/drat/",getOption("repos")))

if (!require(devtools))
  install.packages("devtools")

devtools::install_github("bschroff/RTutorDropInEmployment")
```

## 2. Show and work on the problem set
To start the problem set first create a working directory in which files like the data sets and your solution will be stored. Then adapt and run the following code.
```s
library(RTutorDropInEmployment)

# Adapt your working directory to an existing folder
setwd("C:/problemsets/RTutorDropInEmployment")
# Adapt your user name
run.ps(user.name="Jon Doe", package="RTutorDropInEmployment",
       auto.save.code=TRUE, clear.user=FALSE)
```
If everything works fine, a browser window should open, in which you can start exploring the problem set.
