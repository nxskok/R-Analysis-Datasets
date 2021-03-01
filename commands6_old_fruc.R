hbdata7=read.csv("freezeup/HBdata6.csv")
hbdata7[-32,] # omits row 32
# also omit years, want locations as rows
mydata=t(hbdata7[-32,-1]) # omit years col, row 32, transpose
mydata
d=dist(mydata)
d
frc.hc=hclust(d,method="ward")
plot(frc.hc)
rect.hclust(frc.hc,6)

mydata2=t(hbdata7[c(-31,-32),-1])
frc.km=kmeans(mydata2,7)
sort(frc.km$cluster)

wss=numeric(0)
for (i in 1:35) wss[i] = kmeans (mydata2,centers=i)$tot.withinss
plot(2:35,wss[-1],type="b")

naa=numeric(0)
for (i in 1:41)
{
  naa[i]=sum(is.na(hbdata7[i,]))
}
naa

