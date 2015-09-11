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

take' n [] = []
take' n (x:xs)
  | n == 0 = []
  | n > 0 = [x] ++ take' (n-1) (xs)
  | otherwise = []

--pembatas-

drop' n [] = []
drop' n (x:xs)
  | n == 0 = (x:xs)
  | otherwise = drop' (n - 1) xs

--pembatas

fst' (a, b) = a

--pembatas

snd' (a, b) = b

--pembatas

map' a [] = []
map' a (x:xs) = a x : (map' a xs)

--pembatas

filter' a [] = []
filter' a (x:xs)
  | a x == True = [x] ++ filter' a xs
  | otherwise = [] ++ filter' a xs

--pembatas

delete' _ [] = []
delete' 0 (x:xs) = x:xs
delete' n (x:xs)
  | n == x = xs
  | otherwise = (x:delete' n xs)

--pembatas

deleteAll' _ [] = []
deleteAll' n (x:xs)
  | n /= x = [x] ++ deleteAll' n xs
  | n == x = deleteAll' n xs

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' [] [] = []
zip' (x:xs) [] = []
zip' [] (x:xs) = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' xs ys

--pembatas


zipWith' a [] [] = []
zipWith' a (x:xs) [] = []
zipWith' a [] (x:xs) = []
zipWith' a (x:xs) (y:ys) = [a x y] ++ zipWith' a xs ys

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

head' (x:xs) = x

--pembatas

length' [] = 0
length' (x:xs) = 1 + (length' xs)

--pembatas

reverse' [] = []
reverse' (x:xs) = (reverse'(xs)) ++ [x]

--pembatas

last' [x] = x
last' (x:xs) = last' xs

--pembatas

tail' (x:xs) = xs

--pembatas

init' [a] = []
init' (x:xs) = x:(init' xs)

--pembatas

max' a b
  | a >= b = b
  | otherwise = b

--pembatas

min' a b
  | a <= b = a
  | otherwise = a

--pembatas

concat' [[]] = []
concat' [(x:xs)] = x:xs

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' [] = True
and' (x:xs)
  | x == False = False
  | otherwise = and' xs

--pembatas

or' [] = False
or' (x:xs)
  | x == True = True
  | otherwise = or' xs

--pembatas

zip3' x = x

--pembatas

sum' [] = 0
sum' (x:xs) = sum' xs + x

--pembatas

product' []= 1
product' (x:xs) = x * (product'(xs))

--pembatas

<<<<<<< HEAD
words' x = x
=======
words' "" = []
words' ['a'] = ["a"]
>>>>>>> origin/master

--pembatas

lines' [] = []
<<<<<<< HEAD
lines' "a" = ["a"]
=======
lines' "" = []
lines' a = [a]
>>>>>>> origin/master

--pembatas

unlines' [] = ""
unlines' [a] = a

--pembatas

unwords' x = x

--pembatas

takeWhile' a [] = []
takeWhile' a (x:xs)
  | a x == True = [x] ++ takeWhile' a xs
  | otherwise = []

--pembatas

dropWhile' a [] = []
dropWhile' a (x:xs)
    | a x == True = [] ++ dropWhile' a xs
    | otherwise = [x] ++ dropWhile' a xs

--pembatas

concatMap' x = x

--pembatas

all' a [] = True
all' a (x:xs)
  | a x == False = False
  | otherwise = all' a xs

--pembatas

any' a [] = False
any' a (x:xs)
  | a x == True = True
  | otherwise = any' a xs

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

<<<<<<< HEAD
minimum' [x] = x
minimum' (x:xs) = min' x (minimum' xs)

--pembatas

maximum' [x] = x
maximum' (x:xs) = max' x (maximum' xs)
=======
minimum' x = x

--pembatas

maximum' x = x
>>>>>>> origin/master

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' [] = []
group' (x:xs) = [[x]] ++ group' xs

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' 0 _ = []
replicate' a b
  | a == 1 = [b]
  | otherwise = b :replicate' (a-1) b

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
