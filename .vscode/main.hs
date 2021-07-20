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

times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1,3,4]







main = do
    putStrLn "What is your name? "
    name <- getLine
    putStrLn ("Hello " ++ name)
