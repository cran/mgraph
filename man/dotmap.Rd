\name{dotmap}
\alias{dotmap}
\alias{dotmap.default}
\alias{print.dotmap}
\alias{summary.dotmap}
\alias{plot.dotmap}
\title{Dotchart analysis of a map and non map data}
\description{The dotmap function plots an attribute of a map and non-map data.}
\usage{
dotmap(source,layer='',attribute,type='',label="",col='',symbol='')
\method{dotmap}{default}(source,layer='',attribute,type='',label="",col='',symbol='')
\method{print}{dotmap}(x,...)
\method{summary}{dotmap}(object,...)
\method{plot}{dotmap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map. Please quote the full folder path with forward slash "/".  You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{ The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the full file name as layer. In case of using R object as a source set "layer" parameter to "nofile"  }
\item{type}{ The type of dot chart you want to plot. Set the "type" to "map" if you want a map to be drawn for the attribute}
\item{attribute}{The attribute name of the layer or the map you want use. In case of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  attributes are variables or column names }
\item{label}{The labeling title of the chart. The title or topic of the graph}
\item{col}{The colour of the chart}
\item{symbol}{You can set it to any symbol from your key board. For example you may use "H" to represent hospitals or set it to "P" to represent plants }
\item{x}{an object of class \code{"dotmap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"dotmap"}, i.e., a fitted model. }
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
##############################################################################################################
#	#Download the spatial files from www.openictghana.com/R/mgraph/farm.zip	
#	source="C:/Users/george/Documents/farms"
#	layer="farms"
#	graph=dotmap(source=source,layer=layer,attribute="PlantPop",type="map",symbol="T")
#	
#	
#	
#
################################################################################################################
source="http://www.openictghana.com/map/mgraph/"
layer="farms.csv"
graph=dotmap(source, layer,attribute='Age',col='black',label="")
summary(graph)
print(graph)
plot(graph)
#############################################################################################
#	#example 2: using R object
#	data(meuse.all, package="gstat")
#	dotmap(meuse.all,layer="nofile",attribute="zinc", col="light blue")
##############################################################################################
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co
}
\keyword{Graph}
