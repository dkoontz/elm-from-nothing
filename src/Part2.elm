module Part2 exposing (..)

import String

-- Let's recap a bit. We've learned that Elm has things called variables which are a name associated with a piece
-- of data like the Int 42 or String "Hi mom!". The data that is associated with the variable is of a certain type
-- which tells you what possible values it can have. An Int type means only whole numbers, a Float type means any
-- real number, a String type means any text surrounded by "quotation marks".

-- The next step on our journey is to start manipulating our data in ways that are useful to us. Say you had two
-- numbers, what sorts of things can we do with them? Well it turns out types, as well as telling you what values
-- you can set a variable to, also determine what things you can do with that variable. We'll get into making up
-- new things that you can do in a moment, but for now let's just use some of the default ones.

-- Here we have two variables, just as we have seen them before, but now we want to create a third variable that uses
-- the previous two. If we want to know the difference between the high and low temperature for the day we would
-- subtract the low from the high. Addition and subtraction look just like it does in math. So if you have
-- x = 3 and y = 2, then you can say z = x + y or alternatively z = x - y

-- Fix temperature range so that it is highTemperature minus lowTemperature

highTemperature = 80
lowTemperature = 56
temperatureRange = 0


-- Now let's try another variable, but this time with both addition AND subtraction. Fix the following test so that it
-- properly calculates the total

startingMoney = 10
moneyEarned = 100
costOfGoods = 45
total = moneyEarned - startingMoney - costOfGoods


-- Hopefully things are starting to get a bit more interesting now. Let's finish off the basic math operations and add
-- on multiplication and division. Multiplication is done with an asterisk: z = x * y and division is done with a forward
-- slash: z = x / y

-- The temperature range before was in Farenheight. If we wanted to see the temperature range in Celsius we could
-- convert the high and low temperatures to celsius and then calculate the difference again.
-- We can use the following formula: temp in C = (temp in F - 32) × 5/9
-- You can use parentheses to make sure the subtraction happens before the multiplaction just like in regular math

-- Fix the following test case so that the F to C conversion ratio is set and then used to calculate the final temperature

farenheightToCelsiusRatio = 0
highTemperatureInCelsius = 0
lowTemperatureInCelsius = 0
temperatureRangeInCelsius = 0


-- Remember how there are two different kinds of numbers, Int which is only whole numbers and Float which is a number
-- that has a decimal place. So what happens if you try and combine two different types of numbers?

anInt : Int
anInt = 5

aFloat : Float
aFloat = 5


-- Uncomment this line and see what happens
-- anIntPlusAFloat = anInt + aFloat


-- So what does this "The right argument of (+) is causing a type mismatch." error mean? It appears + only works
-- when both sides are the same type of number. In this case because the left side of + is an Int the right side is
-- also expected to be an Int. If you reverse the order of anInt and aFloat you'll see the type in the error changes
-- to Float.


-- If you do want to do something with an Int and Float you have two options. First, you can convert the Int to a float.
-- The other option is to convert the Float to an Int. This direction is a bit more complicated since there are many
-- ways you might want to do this.

-- This converts an Int to a Float, this is safe since the Int 1 can safely become the Float 1.0
aFloatFromInt : Float
aFloatFromInt = toFloat anInt

-- This goes from a Float to an Int by rounding. So a value of 0.5 becomes 1 and a value of 0.49 becomes 0.
aRoundedFloat : Int
aRoundedFloat = round aFloat

-- This goes from a Float to an Int by dropping any fractional part. 5.9999999 becomes 5.
aFlooredFloat : Int
aFlooredFloat = floor aFloat

-- This goes from a Float to an Int by always rounding up to the next Integer, so 1.0000001 becomes 2
aCeilingedFloat : Int
aCeilingedFloat = ceiling aFloat


-- Use these conversion tools along with the variables someFloatValue and someOtherFloatValue to get the next test
-- to pass. Remember you can use parentheses to force calculations to happen in a certain order.

someFloatValue : Float
someFloatValue = 3.92

someOtherFloatValue: Float
someOtherFloatValue = 2.4

convertedTotal = 0


-- Finally, let's look at our third type, Strings. Strings are just text so they can't be combined with numbers in
-- a very straightforward way, for example, try uncommenting the following line

-- doesThisWork = 5 + "5"


-- There are operations we can do on Strings but they're not the same as for numbers. For example, we can combine
-- two strings, but we use ++ for that instead of +
-- This next test case is currently failing, see if you can correct it.

firstWord = "Hi"
secondWord = "Mom!"
sentence = firstWord ++ secondWord


-- There are lots of operations you can do with the String type. To get a feel for some of them try using the
-- String.reverse, String.length and String.repeat operations to make the next tests pass. Of these 3 repeat is the only
-- one that needs an additional bit of data, the number of times to repeat a string. So if you had
-- String.repeat 2 "hi" you would get "hihi"
originalMessage : String
originalMessage = "I'm trapped in a meme, send help"

reversedMessage = originalMessage

messageLength : Int
messageLength = originalMessage

messageRepeated = originalMessage


-- Phew! That was a LOT of stuff to take in! We're doing good, only a few more concepts to cover and you're all set
-- with the fundamentals. When you're ready you'll need to enable Part3 the same way you enabled Part2, then you can
-- run elm-test, see all your new failing test and head over to Part3 where we'll talk about making new operations
-- instead of just using the built-in ones.
