\name{histmap}
\alias{histmap}
\alias{histmap.default}
\alias{print.histmap}
\alias{summary.histmap}
\alias{plot.histmap}
\title{Histogram analysis of map and non map data}
\description{The histmap function plots an attribute of a map and non-map data.}
\usage{
histmap(source,layer='',attribute,type='',label="",col='',trans='')
\method{histmap}{default}(source,layer='',attribute,type='',label="",col='',trans='')
\method{print}{histmap}(x,...)
\method{summary}{histmap}(object,...)
\method{plot}{histmap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map. Please quote the full folder path with forward slash "/".  You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{ The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the full file name as layer. In case of using R object as a source set "layer" parameter to "nofile"  }
\item{type}{ The type of histogram chart you want to plot. It can take "norm", "density". Set the "type" to "map" if you want a map to be drawn for the attribute}
\item{attribute}{The attribute name of the layer or the map you want use. In case of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  attributes are variables or column names }
\item{label}{The labeling title of the chart. The title or topic of the graph}
\item{col}{The colour of the chart}
\item{trans}{It is for transformation of the attribute or variable. The original data can be transformed to log by setting trans to "log"; it can be set to square root by setting it to "sqrt"; it can also be scaled be setteing it to "scale". Leave it blank if you do not like data transformation. }
\item{x}{an object of class \code{"histmap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"histmap"}, i.e., a fitted model. }
\item{...}{any other R parameters can be added}
}
\value{
Objects of the class that basically list its elements
\item{data}{ Original data for the model}
\item{table}{ Frequency of the original data}
\item{source}{ Folder path of the layer or map}
\item{layer}{The layer map in the source folder}
\item{attribute}{The attribute name of the layer or the map that was used.}
\item{label}{The labeling title of the chart.}
}
\author{George Owusu}
\examples{
\dontrun{
source<- system.file("external", package = "mgraph")
layer="farms"
graph=histmap(source, layer,attribute='Age',col='blue',label="")
summary(graph)
print(graph)
plot(graph)

#example 2: using R object
data(meuse.all, package="gstat")
histmap(meuse.all,layer="nofile",attribute="zinc", col="light blue")
#Histogram with normal distribtion 
histmap(meuse.all,layer="nofile",attribute="zinc", col="light blue",type="normal")
}
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co
}
\keyword{Graph}
