#Cluster Maps
#install.packages("rworldmap")
library(rworldmap)

newmap=getMap(resolution="low")

plot(newmap,xlim=c(-90,-80),ylim=c(50,65))
pts=read.table("locations.txt",header=T)
attach(pts)
points=data.frame(number=1:36,long=-long,lat=lat)
detach(pts)
points
attach(points)
fake.cluster=sample(1:6,36,replace=T)
fake.cluster
points(long,lat,pch=19,col=fake.cluster)
text(long,lat,number,pos=4)

detach(points)


drawmap=function(map,points,clustering)
{
  title=deparse(substitute(clustering))
  plot(map,xlim=c(-90,-80),ylim=c(50,65))
  text(-100,55,title)
  attach(points)
  points(long,lat,pch=19,col=clustering,cex=2)
  text(long,lat,number,pos=4,cex=0.75)  
  detach(points)
  invisible()
}

drawmap(newmap,points,fake.cluster)



# on each commmands, get list of clusters (like this) unsorted, 
# save in variables with different names, use those variables as 
# clusterings here

# for ward, get clustering from hclust output as eg. cutree(bu.hc,k=6)
# where bu.hc is output from hclust and k= #clusters

#Breakup (1971-2011)
drawmap(newmap,points,cl.5.ward.no.missing)
drawmap(newmap,points,cl.5.ward.with.missing)
drawmap(newmap,points,cl.5.kmeans.no.missing)

#Freeze-up (1971-2011)
drawmap(newmap,points,cl.6.ward.no.missing)
drawmap(newmap,points,cl.6.ward.with.missing)
drawmap(newmap,points,cl.6.kmeans.no.missing)

#Breakup and Freeze-up (1971-2011)
drawmap(newmap,points,cl.7.ward.no.missing)
drawmap(newmap,points,cl.7.ward.with.missing)
drawmap(newmap,points,cl.7.kmeans.no.missing)

#Icefree (1971-2011)
drawmap(newmap,points,cl.8.ward.no.missing)
drawmap(newmap,points,cl.8.ward.with.missing)
drawmap(newmap,points,cl.8.kmeans.no.missing)




#Breakup (1971-1990)
drawmap(newmap,points,cl.5.1.ward.no.missing)
drawmap(newmap,points,cl.5.1.ward.with.missing)
drawmap(newmap,points,cl.5.1.kmeans.no.missing)

#Breakup (1991-2011)
drawmap(newmap,points,cl.5.2.ward.no.missing)
drawmap(newmap,points,cl.5.2.ward.with.missing)
drawmap(newmap,points,cl.5.2.kmeans.no.missing)


#Freeze-up (1971-1990)
drawmap(newmap,points,cl.6.1.ward.no.missing)
drawmap(newmap,points,cl.6.1.ward.with.missing)
drawmap(newmap,points,cl.6.1.kmeans.no.missing)

#Freeze-up (1991-2011)
drawmap(newmap,points,cl.6.2.ward.no.missing)
drawmap(newmap,points,cl.6.2.ward.with.missing)
drawmap(newmap,points,cl.6.2.kmeans.no.missing)


#Breakup and Freeze-up (1971-1990)
drawmap(newmap,points,cl.7.1.ward.no.missing)
drawmap(newmap,points,cl.7.1.ward.with.missing)
drawmap(newmap,points,cl.7.1.kmeans.no.missing)

#Breakup and Freeze-up(1991-2011)
drawmap(newmap,points,cl.7.2.ward.no.missing)
drawmap(newmap,points,cl.7.2.ward.with.missing)
drawmap(newmap,points,cl.7.2.kmeans.no.missing)


#Icefree (1971-1990)
drawmap(newmap,points,cl.8.1.ward.no.missing)
drawmap(newmap,points,cl.8.1.ward.with.missing)
drawmap(newmap,points,cl.8.1.kmeans.no.missing)

#Icefree (1991-2011)
drawmap(newmap,points,cl.8.2.ward.no.missing)
drawmap(newmap,points,cl.8.2.ward.with.missing)
drawmap(newmap,points,cl.8.2.kmeans.no.missing)




