\name{scattermap}
\alias{scattermap}
\alias{scattermap.default}
\alias{print.scattermap}
\alias{summary.scattermap}
\alias{plot.scattermap}
\title{Scatter plot of map and no-map data}
\description{The scattermap function plots an attribute of a map and non-map data. It also returns tabular data }
\usage{
scattermap(source,layer='',attributes,type='',label="",col='')
\method{scattermap}{default}(source,layer='',attributes,type='',label="",col='')
\method{print}{scattermap}(x,...)
\method{summary}{scattermap}(object,...)
\method{plot}{scattermap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map. Please quote the full folder path with forward slash "/". You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{ The layer map in the folder that you want to work with. It is the file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the full file name as layer. In case of using R object as a source set the "layer" parameter to "nofile"   }
\item{type}{ The type of scatter chart you want to use. Set the "type" to "map" if you want a map to be drawn for the attribute }
\item{attributes}{The attributes or variables of the map name of the layer or the map you want use. In case of using non spatial data such as ".csv", ".txt", "dat" or ".tab"  
attributes are variables or column names }
\item{label}{The labeling title of the chart.}
\item{col}{The colour of the chart}
\item{x}{ an object of class \code{"scattermap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"scattermap"}, i.e., a fitted model. }
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
#########################################################################################################################################
#	#set the source and layer of the map for spatial attribute. 								    	#
#	#Download the spatial files from www.openictghana.com/R/mgraph/farm.zip								#
#	#unzip to a source or folder as shown below: 			        							#
#       source="C:/Users/george/Documents/Rpackages/graphmap/inst/external"								#
#	layer = "farms"															#
#	attributes="Age,FArea"														#
#																	#
#	figure4a=scattermap(source,layer,attributes,type="l",col='black',label="")							#
#	figure4b=scattermap(source,layer,attributes,type="p",col='black',label="")							#
#	figure4c=scattermap(source,layer,attributes,type="o",col='black',label="")							#
#	figure4d=scattermap(source,layer,attributes,type="S",col='black',label="")							#
#																	#
#		        														#
#########################################################################################################################################
source="http://www.openictghana.com/map/mgraph/"
layer="farms.csv"
attributes='Age,FArea'
graph=scattermap(source,layer,attributes,type="l",col='black',label="")
summary(graph)
print(graph)
plot(graph)
#####################################################################################################################################
#	#example two: using R object
#	data(meuse.all, package="gstat")
#	scattermap(meuse.all,layer="nofile",attributes="zinc,copper")
#	plot(graph)
######################################################################################################################################
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co}
\keyword{Spatial}
