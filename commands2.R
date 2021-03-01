hbdata5=read.csv("breakup/HBdata4.csv")
attach(hbdata5)

# next 2 lines draw time plot for a location and plot the lowess curve on it

plot(X,X1,type="b")
plot(X,X2,type="b")
plot(X,X3,type="b")
plot(X,X4,type="b")
plot(X,X5,type="b")
plot(X,X6,type="b")
plot(X,X7,type="b")
plot(X,X8,type="b")
plot(X,X9,type="b")
plot(X,X10,type="b")
plot(X,X11,type="b")
plot(X,X12,type="b")
plot(X,X13,type="b")
plot(X,X14,type="b")
plot(X,X15,type="b")
plot(X,X16,type="b")
plot(X,X17,type="b")
plot(X,X18,type="b")
plot(X,X19,type="b")
plot(X,X20,type="b")
plot(X,X21,type="b")
plot(X,X22,type="b")
plot(X,X23,type="b")
plot(X,X24,type="b")
plot(X,X25,type="b")
plot(X,X26,type="b")
plot(X,X27,type="b")
plot(X,X28,type="b")
plot(X,X29,type="b")
plot(X,X30,type="b")
plot(X,X31,type="b")
plot(X,X32,type="b")
plot(X,X33,type="b")
plot(X,X34,type="b")
plot(X,X35,type="b")
plot(X,X36,type="b")


# get rid of missing data
# to do other points, replace X2 (or whatever) by desired point

notmissing=!is.na(X1)
plot(X[notmissing],X1[notmissing],type="b")
lines(lowess(X[notmissing],X1[notmissing]))

notmissing=!is.na(X2)
plot(X[notmissing],X2[notmissing],type="b")
lines(lowess(X[notmissing],X2[notmissing]))

notmissing=!is.na(X3)
plot(X[notmissing],X3[notmissing],type="b")
lines(lowess(X[notmissing],X3[notmissing]))

notmissing=!is.na(X4)
plot(X[notmissing],X4[notmissing],type="b")
lines(lowess(X[notmissing],X4[notmissing]))

notmissing=!is.na(X5)
plot(X[notmissing],X5[notmissing],type="b")
lines(lowess(X[notmissing],X5[notmissing]))

notmissing=!is.na(X6)
plot(X[notmissing],X6[notmissing],type="b")
lines(lowess(X[notmissing],X6[notmissing]))

notmissing=!is.na(X7)
plot(X[notmissing],X7[notmissing],type="b")
lines(lowess(X[notmissing],X7[notmissing]))

notmissing=!is.na(X8)
plot(X[notmissing],X8[notmissing],type="b")
lines(lowess(X[notmissing],X8[notmissing]))

notmissing=!is.na(X9)
plot(X[notmissing],X9[notmissing],type="b")
lines(lowess(X[notmissing],X9[notmissing]))

notmissing=!is.na(X10)
plot(X[notmissing],X10[notmissing],type="b")
lines(lowess(X[notmissing],X10[notmissing]))

notmissing=!is.na(X11)
plot(X[notmissing],X11[notmissing],type="b")
lines(lowess(X[notmissing],X11[notmissing]))

notmissing=!is.na(X12)
plot(X[notmissing],X12[notmissing],type="b")
lines(lowess(X[notmissing],X12[notmissing]))

notmissing=!is.na(X13)
plot(X[notmissing],X13[notmissing],type="b")
lines(lowess(X[notmissing],X13[notmissing]))

notmissing=!is.na(X14)
plot(X[notmissing],X14[notmissing],type="b")
lines(lowess(X[notmissing],X14[notmissing]))

notmissing=!is.na(X15)
plot(X[notmissing],X15[notmissing],type="b")
lines(lowess(X[notmissing],X15[notmissing]))

notmissing=!is.na(X16)
plot(X[notmissing],X16[notmissing],type="b")
lines(lowess(X[notmissing],X16[notmissing]))

notmissing=!is.na(X17)
plot(X[notmissing],X17[notmissing],type="b")
lines(lowess(X[notmissing],X17[notmissing]))

notmissing=!is.na(X18)
plot(X[notmissing],X18[notmissing],type="b")
lines(lowess(X[notmissing],X18[notmissing]))

notmissing=!is.na(X19)
plot(X[notmissing],X19[notmissing],type="b")
lines(lowess(X[notmissing],X19[notmissing]))

notmissing=!is.na(X20)
plot(X[notmissing],X20[notmissing],type="b")
lines(lowess(X[notmissing],X20[notmissing]))

notmissing=!is.na(X21)
plot(X[notmissing],X21[notmissing],type="b")
lines(lowess(X[notmissing],X21[notmissing]))

notmissing=!is.na(X22)
plot(X[notmissing],X22[notmissing],type="b")
lines(lowess(X[notmissing],X22[notmissing]))

notmissing=!is.na(X23)
plot(X[notmissing],X23[notmissing],type="b")
lines(lowess(X[notmissing],X23[notmissing]))

notmissing=!is.na(X24)
plot(X[notmissing],X24[notmissing],type="b")
lines(lowess(X[notmissing],X24[notmissing]))

notmissing=!is.na(X25)
plot(X[notmissing],X25[notmissing],type="b")
lines(lowess(X[notmissing],X25[notmissing]))

notmissing=!is.na(X26)
plot(X[notmissing],X26[notmissing],type="b")
lines(lowess(X[notmissing],X26[notmissing]))

notmissing=!is.na(X27)
plot(X[notmissing],X27[notmissing],type="b")
lines(lowess(X[notmissing],X27[notmissing]))

notmissing=!is.na(X28)
plot(X[notmissing],X28[notmissing],type="b")
lines(lowess(X[notmissing],X28[notmissing]))

notmissing=!is.na(X29)
plot(X[notmissing],X29[notmissing],type="b")
lines(lowess(X[notmissing],X29[notmissing]))

notmissing=!is.na(X30)
plot(X[notmissing],X30[notmissing],type="b")
lines(lowess(X[notmissing],X30[notmissing]))

notmissing=!is.na(X31)
plot(X[notmissing],X31[notmissing],type="b")
lines(lowess(X[notmissing],X31[notmissing]))

notmissing=!is.na(X32)
plot(X[notmissing],X32[notmissing],type="b")
lines(lowess(X[notmissing],X32[notmissing]))

notmissing=!is.na(X33)
plot(X[notmissing],X33[notmissing],type="b")
lines(lowess(X[notmissing],X33[notmissing]))

notmissing=!is.na(X34)
plot(X[notmissing],X34[notmissing],type="b")
lines(lowess(X[notmissing],X34[notmissing]))

notmissing=!is.na(X35)
plot(X[notmissing],X35[notmissing],type="b")
lines(lowess(X[notmissing],X35[notmissing]))

notmissing=!is.na(X36)
plot(X[notmissing],X36[notmissing],type="b")
lines(lowess(X[notmissing],X36[notmissing]))


library(Kendall)
# MannKendall(X1)
# MannKendall(X2)
# MannKendall(X3)
# MannKendall(X4)
# MannKendall(X5)
# MannKendall(X6)
# MannKendall(X7)
# MannKendall(X8)
# MannKendall(X9)
# MannKendall(X10)
# MannKendall(X11)
# MannKendall(X12)
# MannKendall(X13)
# MannKendall(X14)
# MannKendall(X15)
# MannKendall(X16)
# MannKendall(X17)
# MannKendall(X18)
# MannKendall(X19)
# MannKendall(X20)
# MannKendall(X21)
# MannKendall(X22)
# MannKendall(X23)
# MannKendall(X24)
# MannKendall(X25)
# MannKendall(X26)
# MannKendall(X27)
# MannKendall(X28)
# MannKendall(X29)
# MannKendall(X30)
# MannKendall(X31)
# MannKendall(X32)
# MannKendall(X33)
# MannKendall(X34)
# MannKendall(X35)
# MannKendall(X36)

# all the above at once, probably including years!
library(Kendall)
mk=apply(hbdata5,2,MannKendall)

nmv=numeric(37)
pv=numeric(37)
rv=numeric(37)
for (i in 2:37)
{
  p=as.numeric(mk[[i]]$sl)*36 # bonferroni; compare adjusted P-val with 0.05
  reject=(p<0.05)
  nm=names(mk)[i]
  #  pval[i,]=c(nm,p,reject)
  nmv[i]=nm
  pv[i]=p
  rv[i]=reject
}

res=data.frame(location=nmv,pval=pv,reject=as.logical(rv))
res



table(as.logical(rv))

# theil-sen

# ordinary regression and theil sen
#library(mblm)

results=numeric(0)
for (i in 1:36)
{
  lmx=lm(hbdata5[,i+1]~hbdata5[,1])
  notmissing=!is.na(hbdata5[,i+1])
  v=hbdata5[notmissing,i+1]
  w=hbdata5[notmissing,1]
  tsx=mblm(v~w,repeated=F)
  coeffs=summary(tsx)$coefficients
  slope.ts=coeffs[2,1]
  pvalue.ts=coeffs[2,4]
  coeffs=summary(lmx)$coefficients
  slope.lm=coeffs[2,1]
  pvalue.lm=coeffs[2,4]
  row.i=c(slope.ts,slope.lm,pvalue.ts,pvalue.lm)
  results=rbind(results,row.i)
}

dimnames(results)[[1]]=1:36
dimnames(results)[[2]]=c("TS slope","Reg slope","TS P-value","Reg P-value")

results
mean(results[,1])

detach(hbdata5)































