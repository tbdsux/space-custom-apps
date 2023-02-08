# dartlang-space

Dart Lang on space.

### Framework

[Shelf](https://github.com/dart-lang/shelf/tree/master/pkgs/shelf) - https://github.com/dart-lang/shelf/tree/master/pkgs/shelf

Example project is generated from the command `dart create --template server-shelf [project-name]`

## Spacefile

```yaml
# Spacefile Docs: https://go.deta.dev/docs/spacefile/v0
v: 0
app_name: "Dart Lang"
micros:
  - name: shelf-app
    src: .
    engine: custom
    commands:
      - apt-get update
      - apt-get install wget
      - apt-get install apt-transport-https
      - wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/dart.gpg
      - echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | tee /etc/apt/sources.list.d/dart_stable.list
      - apt-get update
      - apt-get install dart
      - dart pub get
      - dart compile exe bin/server.dart -o myapp
    include:
      - myapp
    run: ./myapp
    primary: true
```
