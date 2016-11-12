port module Main exposing (..)

import Json.Encode exposing (Value)
import Test.Runner.Node exposing (run)
import Test exposing (describe)

import Part1Tests
import Part2Tests


tests =
  describe "Elm from nothing tests"
    -- [ Part1Tests.all
    [ Part2Tests.all
    ]


main : Program Value
main =
    run emit tests


port emit : ( String, Value ) -> Cmd msg
