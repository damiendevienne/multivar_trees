# Trees2Mat? 

This repository contains a small workflow for converting list of trees (1-1 tip matching) into a tips x genes matrix (as in Phylter workflow) based on the multuvariate method Distatis (Abdi 2005).

## Contents

- `GetMat.R` – The original R script that runs phylter.  
- `GetMat.py` – Python wrapper that calls the R script. (for R haters ;-))  
- `example_input.tre` – Example input trees.  

---
## Get it to work: 
- clone this repo:

```bash
git clone git@github.com:damiendevienne/multivar_trees.git
```
- `cd` to the `multivar_trees` directory
```bash
cd  multivar_trees/
```
- Create and activate a conda environment with r-phylter installed.

```bash
conda create -n phylter-env -c damiendevienne r-phylter
conda activate phylter-env
```
- Run the workflow using the Python wrapper (`GetMat.py`) to run the analysis:

```bash
python GetMat.py example_input.tre results.csv
```

- `example_input.tre` is your input file (replace with your own).  
- `results.csv` is optional; if not provided, the output will be saved as `WR_output.csv`.  
---

## 5️⃣ Notes

- Make sure the Conda environment `phylter-env` is **activated** before running the script.  
