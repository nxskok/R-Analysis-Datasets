# produce maps with any numbers

library(rworldmap)
my.map=getMap(resolution="low")

make.map=function(my.map,v,colours=1:36)
{
  # translate given colours into appropriate length vector for 
  # plotting
  plot.cols=colours[v]
  plot(my.map,xlim=c(-90,-80),ylim=c(50,65),pch=19)
  pts=read.table("locations.txt",header=T)
  attach(pts)
  points=data.frame(number=1:36,long=-long,lat=lat)
  detach(pts)
  attach(points)
  points(long,lat,pch=19,col=plot.cols)
  text(long,lat,number,pos=4)  
  detach(points)
  w=levels(v)
  legend(-108,64,legend=w,col=colours,pch=19)
}

make.map.2=function(my.map,v,colours=1:36)
{
  # translate given colours into appropriate length vector for 
  # plotting
  plot.cols=colours[v]
  plot(my.map,xlim=c(-90,-80),ylim=c(50,65),pch=19)
  pts=read.table("locations.txt",header=T)
  attach(pts)
  points=data.frame(number=1:36,long=-long,lat=lat)
  detach(pts)
  attach(points)
  points(long,lat,pch=19,col=plot.cols,cex=2)
  detach(points)
  w=levels(v)
  legend(-108,64,legend=w,col=colours,pch=19,cex=0.5)
}


# Break up

sig=read.csv("Hudson Bay Points p-value comparison 2.csv",header=T)
sig[,1:3] 
sig

# GG P-values in col 2, BK P-values in col 3

# GG 2005 break up
sig[,2] 
table(sig[,2])

# I changed this and the my.cols on the GG below.

my.cols=c("pink","yellow","red","blue","black")
make.map.2(my.map,sig[,2],my.cols)

# BK break up
sig[,3] 
table(sig[,3])
my.cols=c("yellow","red","blue","black")
make.map.2(my.map,sig[,3],my.cols)


# Freeze-up

sig=read.csv("Hudson Bay Points p-value comparison 3.csv",header=T)
sig[,1:3] 
table(sig[,2])

# GG P-values in col 2, BK P-values in col 3

# GG 2005 freezeup
sig[,2] 

# these colours re-ordered too

my.cols=c("pink",yellow","red","blue","black")
make.map.2(my.map,sig[,2],my.cols)

# BK freezeup
sig[,3] 
# only 3 sig levels, get rid of yellow (absent (*))
my.cols=c("red","blue","black")
make.map.2(my.map,sig[,3],my.cols)


# BK Ice Free

sig=read.csv("Hudson Bay Points p-value comparison 4.csv",header=T)
sig[,1:2] 
sig[,2]
my.cols=c("yellow","red","blue","black")
make.map(my.map,sig[,2],my.cols)


