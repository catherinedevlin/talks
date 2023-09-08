import cog 
from textwrap import dedent, indent
from pathlib import Path

TEMPLATE = """

```{{sql}}
{script}
```

::: {{ .notes }}
{fname}
:::

"""
 
def insert(fname: str) -> None:
    script = Path(f'ndemo/{fname}').read_text()

    result = TEMPLATE.format(fname=fname, script=script, )
    cog.outl(result)

  