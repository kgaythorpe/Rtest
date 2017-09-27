vignette("chapter2",package="jrShiny")

install.packages("d3heatmap")

library(d3heatmap)
d3heatmap(mtcars)
d3heatmap(x, k_row = 4, k_col = 2, scale = "column") 


install.packages("DT")
library(DT)
data(iris, package="datasets")
datatable(iris)


install.packages("edgebundleR")
library(edgebundleR)
cor_mt = cor(mtcars)
cor_mt[cor_mt < 0.5 & cor_mt > -0.5] = 0

edgebundle(cor_mt)


install.packages("formattable")
devtools::install_github("renkun-ken/formattable")
library("formattable")
percent(c(0.1, 0.02, 0.03, 0.12))
#can also do nice tables

install.packages("ggiraph")


install.packages("networkD3")
library(networkD3)
networkData = data.frame(src=c("A", "A", "A", "A", "B", "B", "C", "C", "D"), 
                         target=c("B", "C", "D", "J", "E", "F", "G", "H", "I"))
simpleNetwork(networkData)


data(MisLinks)
data(MisNodes)

# Plot
forceNetwork(Links = MisLinks, Nodes = MisNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)

# Load energy projection data
# Load energy projection data
URL <- paste0(
  "https://cdn.rawgit.com/christophergandrud/networkD3/",
  "master/JSONdata/energy.json")
Energy <- jsonlite::fromJSON(URL)
# Plot
sankeyNetwork(Links = Energy$links, Nodes = Energy$nodes, Source = "source",
              Target = "target", Value = "value", NodeID = "name",
              units = "TWh", fontSize = 12, nodeWidth = 30)



install.packages("svgPanZoom")
install.packages("svglite")
devtools::install_github("timelyportfolio/svgPanZoom")

library("svgPanZoom") 
library("svglite")## For base

library("ggplot2")
data(mtcars, package="datasets")
#install.packages("gridSVG")
d = ggplot(mtcars, aes(mpg, disp, colour=disp)) + geom_jitter() + 
  theme_bw()
svgPanZoom(d, controlIconsEnabled = TRUE)


devtools::install_github("htmlwidgets/sparkline")
library(htmlwidgets)
library(sparkline)
set.seed(1234)
x = rnorm(10)
y = rnorm(10)

sparkline(x)
