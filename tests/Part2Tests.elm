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
  , test "temperatureRangeInCelcius is 26.666666666666668" <|
      \() -> Expect.equal 26.666666666666668 Part2.temperatureRangeInCelcius
  , test "convertedTotal is 6" <|
      \() -> Expect.equal 6 Part2.convertedTotal
  , test "hi mom sentence" <|
      \() -> Expect.equal "Hi Mom!" Part2.sentence
  , test "reversed message is: pleh dnes ,emem a ni deppart m'I" <|
      \() -> Expect.equal "pleh dnes ,emem a ni deppart m'I" Part2.reversedMessage
  , test "message length is 32" <|
      \() -> Expect.equal 32 Part2.messageLength
  , test "repeated message is: I'm trapped in a meme, send helpI'm trapped in a meme, send help" <|
      \() -> Expect.equal "I'm trapped in a meme, send helpI'm trapped in a meme, send help" Part2.messageRepeated
  ]
