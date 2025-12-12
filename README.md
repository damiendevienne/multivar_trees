# Phylter Example Workflow

This repository contains a small workflow for analyzing phylogenomic datasets using **`phylter`**. It is designed for users familiar with Python, so no R knowledge is needed.

## Contents

- `GetMat.R` – The original R script that runs phylter.  
- `GetMat.py` – Python wrapper that calls the R script.  
- `example_input.tre` – Example input trees.  

---

## 1️⃣ Install the environment

The workflow requires a Conda environment with `r-phylter` installed from Anaconda Cloud. Run:

```bash
conda create -n phylter-env -c yourusername r-phylter r-ape r-optparse
conda activate phylter-env
```

- This will install all necessary R dependencies.

---

## 2️⃣ Run the workflow

Use the Python wrapper (`GetMat.py`) to run the analysis:

```bash
python GetMat.py example_input.tre results.csv
```

- `example_input.tre` is your input file (replace with your own).  
- `results.csv` is optional; if not provided, the output will be saved as `WR_output.csv`.  
---

## 5️⃣ Notes

- Make sure the Conda environment `phylter-env` is **activated** before running the script.  
