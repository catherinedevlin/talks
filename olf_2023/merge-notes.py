from pathlib import Path 
import re 

double_notes = re.compile(r"^:::\s+^::: {\.notes}", re.DOTALL | re.MULTILINE)

def main():
    raw = Path('database-superpowers.1.qmd').read_text()
    text = double_notes.sub("", raw)
    Path('database-superpowers.qmd').write_text(text)


    
if __name__ == '__main__':
    main()
