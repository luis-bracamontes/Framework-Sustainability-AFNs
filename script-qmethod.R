library("qmethod")
datosq=read.csv("C:/Users/luisb/Desktop/MetodoQ/AnalisisQMethod/data/DatosLimpiosQMethodCSV.csv",header=TRUE, row.names="X")
resultados=qmethod(datosq,nfactors=6,forced= FALSE,
                      distribution=c(-5,-5,
                                     -4,-4,-4,
                                     -3,-3,-3,-3,
                                     -2,-2,-2,-2,-2,
                                     -1,-1,-1,-1,-1,
                                     0,0,0,0,0,0,0,
                                     1,1,1,1,1,
                                     2,2,2,2,2,
                                     3,3,3,3,
                                     4,4,4,
                                     5,5))
summary(resultados)
plot(resultados)
format(resultados$qdc,digit=1,nsmall=2)
View(resultados$qdc)
resultados$loa
resultados$flagged
resultados$zsc
resultados$zsc_n
resultados$cor_zsc
