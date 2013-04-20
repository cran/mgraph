\name{piemap}
\alias{piemap}
\alias{piemap.default}
\alias{print.piemap}
\alias{summary.piemap}
\alias{plot.piemap}
\title{Pie chart of spatial and non spatial data}
\description{The piemap function plots an attribute of a map and non-map data. It also returns tabular data: frequencies}
\usage{
piemap(source,layer='',attribute,type='',label="",col='')
\method{piemap}{default}(source,layer='',attribute,type='',label="",col='')
\method{print}{piemap}(x,...)
\method{summary}{piemap}(object,...)
\method{plot}{piemap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or the map. Please quote the full folder path with forward slash "/".}
\item{layer}{ The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please.
	    In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the file name as layer. In case of using R object set layer to "nofile"}
\item{type}{ The type of pie chart you want to use. It can take "simple" or "annotated" parameter. Simple pie chart does not have annotation. Set the "type" to "map" if you want a map to be drawn for the attribute}
\item{attribute}{The attribute name of the layer or the map you want use. In case of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  
attributes are variables or column names}
\item{label}{The labeling title of the chart.}
\item{col}{The colour of the chart}
\item{x}{an object of class \code{"piemap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"piemap"}, i.e., a fitted model. }
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
#example one non spatial data
source<- system.file("external", package = "mgraph")
layer="farms"
attribute="Variety"
graph=piemap(source, layer,type="annotated",attribute=attribute,col='black',label="")
summary(graph)
print(graph)
plot(graph)

#Example two with R object
data(meuse.all, package="gstat")
piemap(source=meuse.all,layer="nofile",attribute="landuse")
piemap(source=meuse.all,layer="nofile",attribute="lime")
}
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer 
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co}
\keyword{Spatial}
