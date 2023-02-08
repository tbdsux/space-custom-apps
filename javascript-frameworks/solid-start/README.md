# [SolidStart](https://start.solidjs.com/) on Space

SolidStart, the Solid app framework

### Special configurations?

The default starter template uses node adapter which creates a node server with the `npm run build` command.

## Spacefile

```yaml
# https://go.deta.dev/docs/spacefile/v0
v: 0
micros:
  - name: solid-start
    src: .
    engine: nodejs16
    primary: true
    commands:
      - npm run build
    run: "node dist/server.js"
```
