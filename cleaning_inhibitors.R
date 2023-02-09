##### NEEDED LIBRARIES #####

library(dplyr)

##### CHEMBL #####
data <- read.csv("/Users/esbusis/Desktop/inhibitors/chembl/inhibitors.csv", sep = ";")


# Pre-processing
t <- grep("mutant",data$Assay.Description)
data2 <- data[-t,]
r <- grep("mutation",data2$Assay.Description)
data3 <- data2[-r,]

# remove repeating molecules and save the data
a <- duplicated(data3$Molecule.ChEMBL.ID)
chembldata <- data3[!a,]

write.csv(chembldata,"Unique_Chembl.csv")





