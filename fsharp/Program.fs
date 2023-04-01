module Program 

open Falco
open Falco.HostBuilder
open Falco.Routing


[<EntryPoint>]
let main args =
    webHost args {
        endpoints [
            get "/" (Response.ofPlainText "Hello world from FSharp (Falco)")
        ]
    }
    0