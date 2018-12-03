

library(ggparallel)

dataset_clean_correct <- read.csv2('WRD_workshop_0.4/dataset_clean_correct_v02.csv')
data_subset <- dataset_clean_correct[, c("Ship_from", "Ship_to", "Buyer", "VAT_ID", "Material_Tax", "Incoterm", "Taxcode")]

categorize <- function(x) {return(as.factor(x))}
data_subset <- data.frame(apply(data_subset, MARGIN=2, FUN=categorize))



ggparallel(c("Ship_from", "Ship_to", "Buyer", "VAT_ID","Material_Tax", "Incoterm", "Taxcode"),
           data=data_subset)

