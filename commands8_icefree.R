# using hbdata10 (icefree)
# only row 32 has significant missings
# use everything else
hbdata10=read.csv("icefree/HBdata8.csv")
hbdata10


# check for missings

naa5=numeric(0)
for (i in 1:41)
{
  naa5[i]=sum(is.na(hbdata10[i,]))
}
naa5 # number of missings for each year (row)


# omit years, want locations as rows
mydata=t(hbdata10[,-1]) # transpose


# use ward with all the data
d=dist(mydata)
d
bu.hc=hclust(d,method="ward")
plot(bu.hc,xlab="missings included")
rect.hclust(bu.hc,6)

############################################
# make list of clusters suitable for map
cl.8.ward.with.missing=cutree(bu.hc,k=6)
###########################################


# removing all of the rows with any missing data
mydata2=t(hbdata10[naa5==0,-1]) # mydata2 has no missings at all


# use ward with same data as k-means (all missings removed)
d=dist(mydata2)
d
bu.hc=hclust(d,method="ward")
plot(bu.hc,xlab="no missings")
rect.hclust(bu.hc,6) # last argument is no. of clusters

#############################################
# make list of clusters suitable for map
cl.8.ward.no.missing=cutree(bu.hc,k=6)
############################################


# scree plot for no. of clusters in k-means
# wss=numeric(0)
# for (i in 1:35)
# {
#   print(i)
#   wss[i] = kmeans (mydata2,centers=i,nstart=20)$tot.withinss
# }
# plot(2:35,wss[-1],type="b")
# ?kmeans
# wss

# k-means
bu.km6=kmeans(mydata2,6,nstart=20) # last argument is no. of clusters
bu.km6$cluster
#sort(bu.km6$cluster)
bu.km7=kmeans(mydata2,7,nstart=20) # last argument is no. of clusters
bu.km7$cluster
#sort(bu.km7$cluster)

mat6=outer(bu.km6$cluster,bu.km6$cluster,"==")
mat7=outer(bu.km7$cluster,bu.km7$cluster,"==")
mat6
mat7 # mat6 and mat7 say "are i,j in same cluster"
mat6==mat7 #here: true=same clustering status (both same, both different)
# false-same in one, different in other
status=numeric(0)
for (i in 1:36)
{
  for (j in i:36)
  {
    if (mat6[i,j]!=mat7[i,j])
    {
      status=cbind(status,c(i,j))
    }
  }
}
# 
status
o=order(bu.km6$cluster)
rbind(bu.km6$cluster[o],bu.km7$cluster[o])

###################################
# kmeans
cl.8.kmeans.no.missing=bu.km6$cluster
####################################
