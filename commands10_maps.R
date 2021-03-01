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



#Level of Significance for 3 Metrics (Current Vs GG 2005)

# Break up

sig=read.csv("Hudson Bay Points p-value comparison 2.csv",header=T)
sig[,1:3] 

# GG P-values in col 2, BK P-values in col 3

# GG 2005 break up
sig[,2] 
my.cols=c("yellow","red","blue","pink","chartreuse3")
make.map(my.map,sig[,2],my.cols)

# BK break up
sig[,3] 
my.cols=c("yellow","red","blue","chartreuse3")
make.map(my.map,sig[,3],my.cols)


# Freeze-up

sig=read.csv("Hudson Bay Points p-value comparison 3.csv",header=T)
sig[,1:3] 

# GG P-values in col 2, BK P-values in col 3

# GG 2005 freezeup
sig[,2] 
my.cols=c("yellow","red","blue","pink","chartreuse3")
make.map(my.map,sig[,2],my.cols)

# BK freezeup
sig[,3] 
# only 3 sig levels, get rid of yellow (absent (*))
my.cols=c("red","blue","chartreuse3")
make.map(my.map,sig[,3],my.cols)


# BK Ice Free



sig=read.csv("Hudson Bay Points p-value comparison 4.csv",header=T)
sig[,1:2] 
sig[,2]
my.cols=c("yellow","red","blue","chartreuse3")
make.map(my.map,sig[,2],my.cols)




# Adjusted Mann-Kendall

# Break-up
pva2 #Break-up
sig.level=cut(pva2[-1],breaks=c(0,0.01,0.05,0.10,1),labels=c("***","**","*","NS"))
sig.level
sig.level=ordered(sig.level,levels=c("*","**","***","NS"))
data.frame(format(pva2[-1],scientific=F),sig.level) # for checking
my.cols=c("yellow","red","blue","chartreuse3")
make.map(my.map,sig.level,my.cols)


# Freezeup
pva3 #Freezeup
sig.level=cut(pva3[-1],breaks=c(0,0.01,0.05,0.10,1),labels=c("***","**","*","NS"))
sig.level
sig.level=ordered(sig.level,levels=c("*","**","***","NS"))
data.frame(format(pva3[-1],scientific=F),sig.level) # for checking
my.cols=c("yellow","red","blue","chartreuse3")
make.map(my.map,sig.level,my.cols)


# Ice Free
pva4 #Ice Free
sig.level=cut(pva4[-1],breaks=c(0,0.01,0.05,0.10,1),labels=c("***","**","*","NS"))
sig.level
sig.level=ordered(sig.level,levels=c("*","**","***","NS"))
data.frame(format(pva4[-1],scientific=F),sig.level) # for checking
my.cols=c("yellow","red","blue","chartreuse3")
make.map(my.map,sig.level,my.cols)

