# crystallang-space

Crystal Lang on space.

## Dev

```
space dev
```

### Framework

[Grip](https://github.com/grip-framework/grip) - https://github.com/grip-framework/grip

## Spacefile

```yaml
# Spacefile Docs: https://go.deta.dev/docs/spacefile/v0
v: 0
micros:
  - name: grip-app
    src: .
    engine: custom
    primary: true
    commands:
      - curl -fsSL https://crystal-lang.org/install.sh | bash
      - shards build --release --static
    include:
      - bin/app
    run: ./app
    dev: shards run
```
