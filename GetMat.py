import subprocess
import sys

input_file = sys.argv[1]
output_file = sys.argv[2] if len(sys.argv) > 2 else "WR_output.csv"

subprocess.run(["Rscript", "GetMat.R", input_file, output_file])