rm -rf ndemo
python number-demo-files.py
cog -d database-superpowers.precog.1.qmd > database-superpowers.qmd
quarto render database-superpowers.qmd 
