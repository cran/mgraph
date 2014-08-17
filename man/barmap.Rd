\name{barmap}
\alias{barmap}
\alias{barmap.default}
\alias{print.barmap}
\alias{summary.barmap}
\alias{plot.barmap}
\title{Bar graph of map and non-map data}
\description{The barmap function plots an attribute of a map data. It also returns tabular data:frequencies }
\usage{
barmap(source,layer='',attribute,type='',label="",col='',factor='')
\method{barmap}{default}(source,layer='',attribute,type='',label="",col='',factor='')
\method{print}{barmap}(x,...)
\method{summary}{barmap}(object,...)
\method{plot}{barmap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map. Please quote the full folder path with forward slash "/". You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{ The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the file name as layer. In case of using R object as a source set layer to "nofile"  }
\item{type}{ The type of bar chart you want to plot. It can take "simple", "group","stack"; Set the "type" to "map" if you want a map to be drawn for the attribute}
\item{attribute}{The attribute name of the layer or the map you want use. In case you of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  attributes are variables or column names }
\item{factor}{In case you choose "group"or "stack" as type, you must specify the factor variable or attributes here.This will be used to group the attribute}
\item{label}{The labeling title of the chart.}
\item{col}{The colour of the chart}
\item{x}{ an object of class \code{"barmap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"barmap"}, i.e., a fitted model. }
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
#################################################################################
#	#set the source and layer of the map for spatial attribute. 		#
#	#Download the spatial files from www.openictghana.com/R/mgraph/farm.zip	#
#	#unzip to a source or folder as shown below: 			        #
#       source="C:/Users/george/Documents/Rpackages/graphmap/inst/external"	#
#	layer = "farms"								#
#	attribute="Sex"								#
#	#bar chart								#
#	barmap(source,layer,attribute)					        #
#################################################################################
source<- system.file("external", package = "mgraph")
layer="farms"
attribute="Variety"
graph=barmap(source,layer,type="simple",attribute=attribute,col='black',label="")
summary(graph)
print(graph)
plot(graph)
data(UScereal, package="MASS")
barmap(UScereal,layer="nofile",attribute='mfr')
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co
}
\keyword{Graph}
