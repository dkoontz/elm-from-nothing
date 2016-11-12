module Part1 exposing (..)

-- Variable are a name you can give to a piece of data. There are different
-- kinds of data but for now let's just stick to numbers. The variable passcode
-- has the value 0, try changing it so that it passes the failing test
-- NOTE: to run the tests, type "elm-test" into your terminal and then start at
--   the TOP of the list of failures
passcode = 0


-- Variables can be named just about anything you want. Variables must start with a
-- letter but after that can contain underscores and numbers. It is normal in Elm to
-- use a lower case first word and then capitalize the first letter of each
-- additional word. Two variables cannot have the same name although they can
-- have the same values. See what happens if you change myCustomVariable2 to be
-- myCustomVariable. Then, fix the test so that the values of the two variables are
-- the same.
myCustomVariable = 5
myCustomVariable2 = 6


-- There is more to the world of Elm than just numbers though. Although us humans can recognize
-- text, computers are natoriously literal, so it helps to give them a few hints. You can tell Elm
-- something should be text by putting double quotation marks around it "like this". Try changing
-- the value of experienceWithProgramming to be "incredirad programming acolyte"
experienceWithProgramming = "noob'ish beginner"


-- So far we've seen two different kinds of data, numbers and text. It is considered a good idea
-- to put an indication of what kind of data you expect your variable to be and let Elm make
-- sure that everything was done right. The kind of data is called the type and it restricts what
-- values you can set the variable to. When we tell Elm what type a variable should be it is very good
--  at catching our mistakes, and let's face it, even the best programmers make TONS of mistakes.

-- Let's look at how to tell Elm that a variable should only be allowed to be set to a number. It turns
-- out there are several types of numbers, but we'll start with the type Float, which is a number that can
-- have a decimal part (you may have heard this referred to in math as "real" numbers).
-- We write out a type by putting the name of the variable followed by a colon followed by the type.
-- Try putting quotation marks around the value of thisIsANumber and see what happens.

thisIsANumber : Float
thisIsANumber = 5.123


-- Float is the type of numbers that have a decimal portion, but generally we try to avoid this type
-- as it has a tendency to be inprecise when very large (or small). Also, apart from money and measuring
-- distance we often count using whole numbers, the type of which is Int. You may have heard to this type
-- of number as a "natural" number.
-- Try adding a decimal onto this number. Try changing the type of thisIsAnInt to Float.

thisIsAnInt : Int
thisIsAnInt = 5


-- Our third type of data is the text from before, which is called a String. Strings can be any length
-- and contain any character that you would expect to see in text like your normal a-z, 0-9, the symbols on
-- the number keys such as !@#$, and even crazy ones like ☃ or ✈ or even ༼つ ◕_◕ ༽つ

thisIsAString : String
thisIsAString = "I can see my 🏠 from here!"


-- This is the end of part 1. Are all your tests passing now? If not, please take a moment to fix
-- whatever is broken before moving on. All set? Ok great, now we're going to need to enable the
-- next set of tests. Open up the file Main.elm which is in the tests folder. In there you will
-- need to uncomment two lines, the one that says "import Part2Tests" and the one that says
-- "run emit Part2Tests.all". There's a lot of stuff going on in that file so don't feel like you
-- should understand it quite yet. Once that is done, you can elm-test again and there should be
-- some new failing tests. Open up Part2.elm and let's continue.
