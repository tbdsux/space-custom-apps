# php-space

PHP on Space!

### Framework

[Slim](https://github.com/slimphp/Slim) - https://github.com/slimphp/Slim

## Spacefile

```yaml
# Spacefile Docs: https://go.deta.dev/docs/spacefile/v0
v: 0
app_name: php-space
micros:
  - primary: true
    name: slim-app
    src: .
    commands:
      - apt-get install wget
      - wget https://dl.zhamao.xin/php-bin/file/php-8.1.10-static-bin-x86_64.tar.gz
      - mkdir bin && tar -xf php-8.1.10-static-bin-x86_64.tar.gz -C bin
      - ./bin/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
      - ./bin/php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
      - ./bin/php composer-setup.php
      - ./bin/php -r "unlink('composer-setup.php');"
      - ./bin/php composer.phar install
    engine: custom
    run: "./bin/php -S 0.0.0.0:8080 -t public"
```

\*\* Latest composer doesn't work on `<8.1.10` versions of php (I don't know why~~)

### How it works?

By using this library https://github.com/crazywhalecc/static-php-cli

**Note:** not all php frameworks will work since the lack of extensions pre-installed. Would need to compile the binary on our own so we can add other extensions.

Ref: https://github.com/tuefekci/Deta-PHP-Engine
