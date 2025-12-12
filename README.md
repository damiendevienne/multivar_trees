# multivar_trees

Few lines of code (conda-wrapped) to compute the 2WR matrix as seen in PhyleR from a collection of trees with 1-1 matching tips.

# Install
1. Install conda (Anaconda or Miniconda).
2. clone this repo: `git clone` 
3. go in the folder: `cd` 
3. Create the environment:
   `conda env create -f environment.yml`
4. Activate:
   `conda activate phylter-env`

# Install phylter
---------------
Inside the environment:
```bash
Rscript -e "install.packages('phylter', repos='https://cloud.r-project.org')" 
```

# Run
```
Rscript mytool.R yourfile.tre
```
