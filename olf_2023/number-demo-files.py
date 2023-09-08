from pathlib import Path 
import re 
import shutil

pattern = re.compile(r"\[\[\[cog fileinsert.insert\('(.*?)'\)\]\]\]")
old_demos = Path('demo')
new_demos = Path('ndemo')
new_demos.mkdir(exist_ok=True)

def main():
    final = []
    filecount = 0
    raw = Path('database-superpowers.precog.qmd').read_text()
    for line in raw.splitlines():
        if match := pattern.search(line):
            fname = match.group(1)
            new_fname = f"{filecount:02}-{match.group(1)}"
            filecount += 1
            line = line.replace(fname, new_fname)
            # line = pattern.sub(new_fname, line)
            shutil.copyfile(old_demos / fname, new_demos / new_fname)
        final.append(line)
    text = '\n'.join(final)
    raw = Path('database-superpowers.precog.1.qmd').write_text(text)


    
if __name__ == '__main__':
    main()
