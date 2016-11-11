module Part1Tests exposing (..)

import Part1 exposing (..)
import Test exposing (..)
import Expect
import String

all : Test
all = describe "Part 1 tests"
  [ test "passcode should be 123" <|
      \() -> Expect.equal 123 Part1.passcode
  , test "myCustomVariable is equal to myCustomVariable2" <|
      \() -> Expect.equal Part1.myCustomVariable Part1.myCustomVariable2
  , test "experienceWithProgramming is \"incredirad programming acolyte\"" <|
      \() -> Expect.equal "incredirad programming acolyte" Part1.experienceWithProgramming
  ]
