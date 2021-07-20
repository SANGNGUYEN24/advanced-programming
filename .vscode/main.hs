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
    | 



main = do
    putStrLn "What is your name? "
    name <- getLine
    putStrLn ("Hello " ++ name)
