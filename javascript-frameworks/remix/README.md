# [Remix](https://remix.run/) on Space

Remix is a full stack web framework that lets you focus on the user interface and work back through web standards to deliver a fast, slick, and resilient user experience. People are gonna love using your stuff.

### Special configurations?

Select the `Express Server` deployment while creating a new project. There is some weird problem using the `Remix App Server` (though it uses Express otherwise under the hood).

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
