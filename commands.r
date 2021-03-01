hbdata5=read.csv("HBdata4.csv")
attach(hbdata5)
# next 2 lines draw time plot for a location and plot the lowess curve on it
plot(X,X30,type="b")
lines(lowess(X,X30))

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










































































































