import Data.List
import System.IO

-- function param1 param2 = operations(returned value)
addMe :: Int -> Int -> Int
addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x1, y1) = (x + x1, y + y1)

factorial :: Int -> Int
factorial 0 = 1
factorial  n = n * factorial(n-1)

isOdd :: Int -> Bool
isOdd n
    | mod n 2 == 0 = False
    | otherwise = True

isEven n = mod n 2 == 0 

coolRating :: Int -> Int -> String
coolRating  param1 param2
    | res <= 10 = "Cool"
    | res <= 20 = "Quite cool"
    | res <= 40 = "Super cool"
    | otherwise = "Super stars"
    where res = param1 + param2

getList :: [Int] -> String
getList [] = "Your list is empty"
getList (x:[]) = "Your list starts with " ++ show x
getList (x:y:[]) = "Your list with " ++ show x ++ " and contains " ++ show y
getList (x:y) = "Your list starts with " ++ show x ++ " and the rest are " ++ show y

reversedString = []
getFirstItem :: String -> String
getFirstItem [] = "Empty list"
getFirstItem all@(x:xs) = all ++ " ends with " ++ [x]

-- Function receives a list and output a list with each element multipled by 4
times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1,3,4]
mulBy4 :: [Int] -> [Int] 
mulBy4 [] = []
-- Recursion
mulBy4 (x:xs) = times4 x : mulBy4 xs

-- Function to check two string are the same or not
areStringEq :: String -> String -> Bool
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areStringEq _ _ = False

-- Passing function into a function
doMul :: (Int -> Int) -> Int
doMul func = func 5
num5Times4 = doMul times4

-- Return a function f
addFunc :: Int ->(Int -> Int)
addFunc x y = x + y
add4 = addFunc 4
result = add4 8
fourPlusList = map add4 [1,2,3,4,5,6,7,8,9]

-- Lambdas
double1To10 = map (\x -> x * 2) [1..10]

-- Conditional statement
doubleOnlyEvenNumber x
    | mod x 2 == 0 = x * 2
    | otherwise = x

doubleOnlyOddNumber y = 
    if (y `mod` 2 /= 0)
        then y * 2
        else y

-- Switch staement
getAge n = case n of
    5 -> "Kindergarten"
    6 -> "Elementary school"
    _ -> "Something"
    









main = do
    putStrLn "What is your name? "
    name <- getLine
    putStrLn ("Hello " ++ name)
