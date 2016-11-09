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

-- all : Test
-- all =
--     describe "A Test Suite"
--         [ test "Addition" <|
--             \() ->
--                 Expect.equal (3 + 7) 110
--         -- , test "1. The first thing" \() -> Exepct.equal Module1.first 0
--
--         , test "String.left" <|
--             \() ->
--                 Expect.equal "a" (String.left 1 "abcdefg")
--         , test "This test should fail" <|
--             \() ->
--                 Expect.fail "failed as expected!"
--         ]
