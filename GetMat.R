require(phylter)
require(ape)

# Read input filename from command line
args <- commandArgs(trailingOnly = TRUE)
if(length(args) < 1) stop("Usage: Rscript mytool.R <MYINPUTFILE.tre> [output.csv]")

input_file <- args[1]
output_file <- ifelse(length(args) >= 2, args[2], "WR_output.csv")

trees <- read.tree(input_file)
N <- Ntip(trees[[1]])

mat <- PreparePhylterData(trees, distance="patristic")
RES <- DistatisFast(mat$matrices, factorskept = N-1, parallel=TRUE)
WR <- Dist2WR(RES)

# Save results
write.csv(WR, output_file)
cat("Done! Results saved to", output_file, "\n")