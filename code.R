read.data=function(fname)
{
  # locations are X followed by number of location
  # years labelled X
  read.csv(fname,header=T)
}

plot.joined=function(d,fname)
{
  for (i in 2:ncol(d))
  {
    title=paste(fname,"Location",i-1)
    plot(d[,1],d[,i],type="b",xlab="Year",ylab="days",main=title)
  }
}

plot.lowess=function(d,fname,line.type="solid")
{
  for (i in 2:ncol(d))
  {
    notmissing=!is.na(d[,i])
    yr=d[notmissing,1]
    days=d[notmissing,i]
    title=paste(fname,"Location",i-1)
    plot(yr,days,type="b",xlab="Year",ylab="days",main=title,lty=line.type)
    lines(lowess(yr,days))
  }
}

make.graphs=function(fname)
{
  # read in csv file and perform analysis
  d=read.data(fname)
  plot.joined(d,fname) # graph without lowess
  plot.lowess(d,fname) # graph with lowess
  #plot.lowess(d,line.type="dotdash")
}

# Insert Mann Kendall and Theil Sen and Cluster Analysis here


# Mann-Kendall

mann.kendall=function(fname,alpha=0.05)
{
  d=read.data(fname)
  library(Kendall)
  mk=apply(d,2,MannKendall)  
  nl=ncol(d)-1
  tau=numeric(nl)
  pval=numeric(nl)
  reject=numeric(nl)
  for (i in 1:nl)
  {
    tau[i]=mk[[i+1]]$tau
    pval[i]=mk[[i+1]]$sl
    reject[i]=(pval[i]<=alpha)
  }
  data.frame(tau=tau,p.value=pval,reject=reject)
}


# Ordinary Regression and Theil-Sen

slope=function(fname)
{
  library(zyp)
  d=read.data(fname)
  nl=ncol(d)-1
  reg.slope=numeric(nl)
  ts.slope=numeric(nl)
  for (i in 1:nl)
  {
    d.1=lm(d[,i+1]~d[,1])
    reg.slope[i]=coef(d.1)[2]
    notmissing=!is.na(d[,i+1])
    v=d[notmissing,i+1]
    w=d[notmissing,1]
    d.2=zyp.sen(v~w)
    ts.slope[i]=d.2$coefficients[2]
  }
  data.frame(reg.slope=reg.slope,ts.slope=ts.slope)
}


# Cluster Analysis

# Ward

how.many.missing=function(x)
{
  sum(is.na(x))
}


ward=function(fname,include.missing=T)
{
  d=read.data(fname)
  if (!include.missing)
  {
    nm=apply(d,1,how.many.missing)
    d=d[nm==0,]
    xlabtxt="no missings"
  }
  else
  {
    xlabtxt="missings included"
  }
  noyear=d[,-1]
  dd=dist(t(noyear))
  bu.hc=hclust(dd,method="ward")
  plot(bu.hc,xlab=xlabtxt)
}


# Kmeans

do.kmeans=function(fname,nclust=6)
{
  d=read.data(fname)
  cc=complete.cases(d)
  dd=d[,-1]
  ddd=dd[cc,]
  d2=t(ddd)
  km=kmeans(d2,nclust,nstart=20) # last argument is no. of clusters
  km$cluster
}


# Leave functions (operations) up top and call the functions
# or show the result of the functions down below


# Graphs With and Without Lowess Curves

make.graphs("ABayBreakUp.csv")
make.graphs("ABayFreezeUp.csv")
make.graphs("ABayIceFree.csv")

make.graphs("UlukBrkUp.csv")
make.graphs("UlukFrzUp.csv")
make.graphs("UlukIceFree.csv")



# Mann-Kendall

mann.kendall("ABayBreakUp.csv")
mann.kendall("ABayFreezeUp.csv")
mann.kendall("ABayIceFree.csv")

mann.kendall("UlukBrkUp.csv")
mann.kendall("UlukFrzUp.csv")
mann.kendall("UlukIceFree.csv")



# Ordinary Regression and Theil Sen

slope("ABayBreakUp.csv")
slope("ABayFreezeUp.csv")
slope("ABayIceFree.csv")

slope("UlukBrkUp.csv")
slope("UlukFrzUp.csv")
slope("UlukIceFree.csv")


# Ward's Method (with and without missings)

ward("ABayBreakUp.csv",include.missing=T)
ward("ABayBreakUp.csv",include.missing=F)

ward("ABayFreezeUp.csv",include.missing=T)
ward("ABayFreezeUp.csv",include.missing=F)

ward("ABayIceFree.csv",include.missing=T)
ward("ABayIceFree.csv",include.missing=F)



ward("UlukBrkUp.csv",include.missing=T)
ward("UlukBrkUp.csv",include.missing=F)

ward("UlukFrzUp.csv",include.missing=T)
ward("UlukFrzUp.csv",include.missing=F)

ward("UlukIceFree.csv",include.missing=T)
ward("UlukIceFree.csv",include.missing=F)



# K-means Method (without missings)

do.kmeans("ABayBreakUp.csv",4)
do.kmeans("ABayFreezeUp.csv",4)
do.kmeans("ABayIceFree.csv",4)

do.kmeans("UlukBrkUp.csv",4)
do.kmeans("UlukFrzUp.csv",4)
do.kmeans("UlukIceFree.csv",4)


