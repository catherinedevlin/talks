import cog 
from textwrap import dedent, indent
from pathlib import Path

TEMPLATE = """

::: {{ .notes }}
{fname}
:::

```{{sql}}
{script}
```
"""
 
def insert(fname: str) -> None:
    script = Path(f'demo/{fname}').read_text()

    result = TEMPLATE.format(fname=fname, script=script, )
    cog.outl(result)

  