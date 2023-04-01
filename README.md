# space-custom-apps

Custom `Spacefile` templates for [Deta Space](https://alpha.deta.space).

These are custom apps tailored for programming languages / frameworks that are not supported out of the box by Deta Space.

### Languages

- [Nim](./nim-lang/)
- [Crystal](./crystal-lang/)
- [Dart](./dart-lang/)
  - [Flutter Web](./flutter_web_app/) (does not work)
- [PHP](./php/)
- Dotnet
  - [FSharp](./fsharp/)
  - [CSharp](./csharp/)

**Some things to note:**

- These `Spacefile/s` and starters are not tested on bigger / large projects. Use it accordingly.
- Base your project from the Spacefile provided, do not just copy-paste.

### [Javascript Frameworks](./javascript-frameworks/README.md)

## How to add your own ?

Always check if the programming language / framework already exists in the repository example.

- Create a folder with the programming language / framework.
- Take a http web framework within that language's ecosystem and follow the default guides.
- Setup `Spacefile` and `.spaceignore` accordingly.
