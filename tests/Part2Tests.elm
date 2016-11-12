module Part2Tests exposing (..)

import Part2 exposing (..)
import Test exposing (..)
import Expect
import String


all : Test
all = describe "Part 2 tests"
  [ test "temperatureRange is the result of highTemperature minus lowTemperature" <|
      \() -> Expect.equal Part2.temperatureRange (Part2.highTemperature - Part2.lowTemperature)
  , test "calculates a total that takes into account startingMoney, moneyEarned, and costOfGoods" <|
      \() -> Expect.equal Part2.total (Part2.moneyEarned - Part2.startingMoney - Part2.costOfGoods)
  , test "temperatureRangeInCelcius is " <|
      \() -> Expect.equal 26.666666666666668 Part2.temperatureRangeInCelcius
  , test "convertedTotal is  " <|
      \() -> Expect.equal 6 Part2.convertedTotal
  ]
