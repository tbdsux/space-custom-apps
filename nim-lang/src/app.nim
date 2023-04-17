# https://github.com/dom96/jester#custom-router

import asyncdispatch, jester, strutils, os

let
  p = parseInt(getEnv("PORT", "8080"))

settings:
  port = Port p

routes:
  get "/":
    resp "Nim Lang on Space!"


