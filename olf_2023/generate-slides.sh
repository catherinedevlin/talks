rm -rf ndemo
python number-demo-files.py
cog -d database-superpowers.precog.1.qmd > database-superpowers.1.qmd
python merge-notes.py
quarto render database-superpowers.qmd 
