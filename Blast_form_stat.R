library("rcompanion")
library("FSA")

datastatblast<- read.delim("blaststatprocentage.txt", header= TRUE, check.names = FALSE)

scheirerRayHare(value ~ condition + stage, data=datastatblast)


datastatblast$condition<- factor(datastatblast$condition, 
                                 levels = c("normoxia","hypoxia", "ultrahypoxia"))
levels(datastatblast$condition)


DT<- dunnTest(value ~ condition,
              data=datastatblast,
              method="bh")
DT

PT<- DT$res

PT


