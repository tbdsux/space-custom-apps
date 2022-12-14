# https://github.com/dom96/jester#custom-router

import asyncdispatch, jester, strutils

router myrouter:
  get "/":
    resp "It's alive!"

proc main() =
  let settings = newSettings(port = Port(8080))
  var jester = initJester(myrouter, settings = settings)
  jester.serve()

when isMainModule:
  main()
