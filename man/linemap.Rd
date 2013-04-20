\name{linemap}
\alias{linemap}
\alias{linemap.default}
\alias{print.linemap}
\alias{summary.linemap}
\alias{plot.linemap}
\title{Line chart of map and non map data}
\description{The line chart function plots an attribute of a map data. It also returns tabular data or frequencies}
\usage{
linemap(source,layer='',attributes,type='',label="",col='')
\method{linemap}{default}(source,layer='',attributes,type='',label="",col='')
\method{print}{linemap}(x,...)
\method{summary}{linemap}(object,...)
\method{plot}{linemap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map or data. Please quote the full folder path with forward slashes "/". You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the full file name as layer. In case of using R object as a source set "layer" parameter to "nofile"  }
\item{type}{ The type of line chart you want to use. It can take "p","l","o","b","c","s","S", or "h". Set it to "map" if you want a map to be drawn for the attribute}
\item{attributes}{The attributes or variables of the map name of the layer or the map you want use. This function takes only two attributes separated by comma: see example below. In case of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  attributes are variable or column names }
\item{label}{The labeling title of the chart.}
\item{col}{The colour of the chart}
\item{x}{An object of class \code{"linemap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"linemap"}, i.e., a fitted model. }
\item{...}{any other R parameters can be added}
}
\value{
Objects of the class that basically list its elements
\item{data}{Original data for the model}
\item{table}{ Frequency of the original data}
\item{source}{ Folder path of the layer or map}
\item{layer}{The layer map in the source folder}
\item{attribute}{The attribute name of the layer or the map that was used.}
\item{label}{he labeling title of the chart.}
}
\author{George Owusu}
\examples{
\dontrun{
#example one: using non spatial data
source<- system.file("external", package = "mgraph")
layer="farms"
attributes="Age,FArea"
graph=linemap(source,layer,attributes,type="l",col='black',label="")
summary(graph)
print(graph)
plot(graph)

#example two: using R object
data(meuse.all, package="gstat")
linemap(meuse.all,layer="nofile",attributes="zinc,copper",type="l")
}
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co}
\keyword{Spatial}
