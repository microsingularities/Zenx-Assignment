-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Two where

import Data.List

-- 1.a

null' x
  | x == [] = True
  | otherwise = False

--pembatas

take' n (x:xs)
  | n == 0 = []
  | n == 1 + (length' xs) = (x:xs)
  | n > 0 = [x] ++ take' (n-1) (xs)
  | otherwise = []

--pembatas-

drop' n (x:xs)
  | n == 0 = (x:xs)
  | n >= 1 + (length' xs) = []
  | otherwise = drop' (n - 1) xs

--pembatas

fst' (a, b) = a

--pembatas

snd' (a, b) = b

--pembatas

map' x = x

--pembatas

filter' x = x

--pembatas

delete' _ [] = []
delete' 0 (x:xs) = x:xs
delete' n (x:xs)
  | n == x = xs
  | otherwise = (x:delete' n xs)

--pembatas

deleteAll' x = x

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' x = x

--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' n [] = False
elem' n (x:xs)
  | n == x = True
  | n /= x = elem' n xs
  | otherwise = False

--pembatas

notElem' n [] = True
notElem' n (x:xs)
  | n == x = False
  | n /= x = notElem' n xs
  | otherwise = True

--pembatas

head' x = x

--pembatas

length' [] = 0
length' (x:xs) = 1 + (length' xs)

--pembatas

reverse' [] = []
reverse' (x:xs) = (reverse'(xs)) ++ [x]

--pembatas

last' x = x

--pembatas

tail' x = x

--pembatas

init' x = x

--pembatas

max' a b
  | a >= b = b
  | otherwise = b

--pembatas

min' a b
  | a <= 0 = a
  | otherwise = a

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' [] = 0
sum' (x:xs) = sum' xs + x

--pembatas

product' []= 1
product' (x:xs) = x * (product'(xs))

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
