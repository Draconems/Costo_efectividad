#CEA (Context / Evidence / Analysis) Context

rm(list=ls()) 

prg<-c("A","B","C","D")
prg
cost<-c(4600,8600,10000,12600)
cost
effectiveness<-c(16.4,17.1,17.9,17.7)
effectiveness
mydata<-data.frame(prg,cost,effectiveness)
mydata

#Relacion entre efectividad y costo.
mydata$CE_ratio<-round(mydata$cost/mydata$effectiveness)
mydata

#grafica
plot(mydata$effectiveness~mydata$cost,type="l",ylim=c(16.2,18.2),col=2,lwd=3)

#function text() agregar texto a una grafica.
#formato color y tamaño.

text(mydata$cost,mydata$effectiveness,labels=mydata$CE_ratio,cex=1,pos=3,col=4)


mydata$addedcost<-mydata$cost-c(0,mydata$cost[1:(nrow(mydata)-1)])
mydata$addedcost

mydata$addedQALYs<-mydata$effectiveness-c(0,mydata$effectiveness[1:(nrow(mydata)-1)])
mydata$addedQALYs

mydata$IncCE<-round(mydata$addedcost/mydata$addedQALYs)
mydata$IncCE

mydata
mydata<-mydata[-c(2,4),]
mydata
mydata$addedcost<-mydata$cost-c(0,mydata$cost[1:(nrow(mydata)-1)])
mydata$addedcost
mydata$addedQALYs<-mydata$effectiveness-c(0,mydata$effectiveness[1:(nrow(mydata)-1)])
mydata$addedQALYs
mydata$IncCE<-round(mydata$addedcost/mydata$addedQALYs)
mydata$IncCE
