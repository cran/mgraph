\name{boxmap}
\alias{boxmap}
\alias{boxmap.default}
\alias{print.boxmap}
\alias{summary.boxmap}
\alias{plot.boxmap}
\title{Box plot of map and non-map data }
\description{The boxmap function plots an attribute of a map and non-map data.}
\usage{
boxmap(source,layer='',attribute,type='',label="",col='',factor='')
\method{boxmap}{default}(source,layer='',attribute,type='',label="",col='',factor='')
\method{print}{boxmap}(x,...)
\method{summary}{boxmap}(object,...)
\method{plot}{boxmap}(x,...)
}
\arguments{
\item{source}{Folder path of the layer or map. Please quote the full folder path with forward slash "/".  You can use R object as a source but you must set the layer parameter to "nofile"; see below}
\item{layer}{ The layer map in the folder that you want to work with. It is the full file name of map. This is case sensitive, please. In case you want to use non spatial data such as ".csv", ".txt", "dat" or ".tab" insert the full file name as layer. In case of using R object as a source set "layer" parameter to "nofile"  }
\item{type}{ The type of box chart you want to plot. It can take "simple", "notch" Set the "type" to "map" if you want a map to be drawn for the attribute}
\item{attribute}{The attribute name of the layer or the map you want use. In case you of using non spatial data such as ".csv", ".txt", "dat" or ".tab" attributes are variables or column names }
\item{factor}{In case you several box plots for the attribute, you must specify the factor variable or attribute. See example below}
\item{label}{The labeling title of the chart.}
\item{col}{The colour of the chart}
\item{x}{ an object of class \code{"boxmap"}, i.e., a fitted model. }
\item{object}{ an object of class \code{"boxmap"}, i.e., a fitted model. }
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
#	attribute="Age"															#
#	#box plot															#
#	figure3a=boxmap(source=source,layer=layer,attribute=attribute)									#
#	figure3b=boxmap(source=source,layer=layer,attribute=attribute,type="notch",label="Notch 	Boxplot")			#
#	figure3c=boxmap(source=source,layer=layer,attribute=attribute,type="notch",factor="Sex",label="Factorised Notch Box plot")	#
#	figure3d=boxmap(source=source,layer=layer,attribute=attribute,type="simple",factor="Sex",label="Factorised Normal Box plot")	#
#		        														#
#########################################################################################################################################
source="http://www.openictghana.com/map/mgraph/"
layer="farms.csv"
graph=boxmap(source,layer,attribute='Age',col='black',label="",factor="Sex")
summary(graph)
print(graph)
plot(graph)
########################################################################################################################################
#	#Example two with R object
#	data(meuse.all, package="gstat")
#	#simple box plot
#	boxmap(meuse.all,layer="nofile",attribute="zinc", col="light blue")
#	#factorised box plot
#	boxmap(meuse.all,layer="nofile",attribute="zinc", col="light blue",factor="lime")
#########################################################################################################################################
}
\references{Bivand, R. S., Pebesma, E. J., Gomez-Rubio, V. (2008) Applied Spatial Data Analysis with R. Springer
Kabacoff, I. R. (2011) R in Action. Data Analysis and Graphics with R. Manning Publications Co}
\keyword{Graph}
