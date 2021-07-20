-- Review haskell for final exam
-- @author: sangnd
-- @date: 20/07/2021

import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound::Int
minInt  = minBound::Int
-- Double 
bigFloat = 4.9999999999999  + 0.00000000004
-- Bool True False
-- Char '
-- Tuple

sumOfNums = sum [1..1000]
modEx = mod 5 4
modEx1 = 9 `mod` 7

num9 = 9::Int
sqrtOf9 = sqrt (fromIntegral num9)

primeNumbers = [3,7,9]
morePrimeNumbers = primeNumbers ++ [11,17,23]
favNum = 2 : 4 : 6 : 9 : []

secondNum = favNum !! 1

many4s = take 10 (repeat 4)
cycleList = take 10 (cycle[1,2,3])

listTimes5 = [x * 5 | x <- [1..5], x * 5 <= 20]

sumOfLists = zipWith (*) [1,2,3] [4,5,6]

evenUpTo100 = takeWhile (<=100) [2,4..]

multOfList = foldl (*) 5 [2,3,4,5]


mulTable = [[x * y | x <- [1..3] ]| y <- [1..3]]

names = ["A","B","C"]
addresses = ["123 To", "234 Hien", "456 Thanh"]
namesNaddresses = zip names addresses



















