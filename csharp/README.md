# csharp-space

CSharp (C#) on Space

## Dev

```
space dev
```

### Framework

Asp.Net Minimal Web API - https://learn.microsoft.com/en-us/aspnet/core/tutorials/min-web-api?view=aspnetcore-7.0&tabs=visual-studio
This is not tested on larger projects if it works.

```
dotnet new create webapi -n [project-name]
```

## Spacefile

```yaml
# Spacefile Docs: https://go.deta.dev/docs/spacefile/v0
v: 0
app_name: csharp-space
micros:
  - name: aspnet-minimal-api
    primary: true
    src: .
    commands:
      - apt-get install wget
      - wget https://download.visualstudio.microsoft.com/download/pr/bda88810-e1a6-4cf0-8139-7fd7fe7b2c7a/7a9ffa3e12e5f1c3d8b640e326c1eb14/dotnet-sdk-7.0.202-linux-x64.tar.gz
      - mkdir dotnet && tar -xf dotnet-sdk-7.0.202-linux-x64.tar.gz -C dotnet  && rm dotnet-sdk-7.0.202-linux-x64.tar.gz
      - ./dotnet/dotnet publish -r linux-x64 -p:PublishSingleFile=true --self-contained true
    engine: custom
    include:
      - bin/Debug/net7.0/linux-x64/publish/csharp
    run: ASPNETCORE_URLS=http://+:${PORT} ./csharp
    dev: dotnet run --urls http://localhost:${PORT}
```

### More readings

https://learn.microsoft.com/en-us/dotnet/core/deploying/single-file/overview?tabs=cli
