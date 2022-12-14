# nimlang-space

Nimlang on space.

### Framework

[Jester](https://github.com/dom96/jester) - The sinatra-like web framework for Nim.

## Spacefile

```yaml
# Spacefile Docs: https://go.deta.dev/docs/spacefile/v0
v: 0
micros:
  - name: jester-app
    src: .
    engine: custom
    primary: true
    commands:
      - curl https://nim-lang.org/choosenim/init.sh --output init.sh && sh init.sh -y
      - export PATH=/root/.nimble/bin:$PATH && nimble build -y
    include:
      - app
    run: ./app
```
