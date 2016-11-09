port module Main exposing (..)

import Test.Runner.Node exposing (run)
import Part1Tests
-- import Part2Tests
import Json.Encode exposing (Value)


main : Program Value
main =
    run emit Part1Tests.all
    -- run emit Part2Tests.all
    -- run emit Part3Tests.all
    -- run emit Part4Tests.all
    -- run emit Part5Tests.all


port emit : ( String, Value ) -> Cmd msg
