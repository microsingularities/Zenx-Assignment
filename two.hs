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

--pembatas

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

foldll' a x [] = x
foldll' a x (y:ys) = a (foldll' a x ys) y

--pembatas

foldll1' a [x] = [x]

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

nth' [x] 0 = x
nth' (x:xs) a = nth' xs (a-1)

--pembatas

scanl'' a b [] = [b]
scanl'' a b (x:xs) = [b] ++ scanl'' a (a b x) xs

--pembatas

scanl1'' a [] = []
scanl1'' a [x] = [x]
scanl1'' a (x:xs) = [x] ++ (scanl1'' a (a x (head' xs) : (tail' xs)))

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
concat' [[x]] = [x]
concat' (x:xs) = x ++ concat' xs

--pembatas

intersperse' a [] = []
intersperse' a [x] = [x]
intersperse' a (x:xs) = [x] ++ [a] ++ intersperse' a xs

--pembatas

intercalate' a [x] = x
intercalate' a (x:xs) = x ++ a ++ (intercalate' a xs)
--intercalate' a (x:xs) = concat' (intersperse' a (x:xs))

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

zip3' [] [] [] = []
zip3' (x:xs) [] [] = []
zip3' [] (x:xs) [] = []
zip3' [] [] (x:xs) = []
zip3' (x:xs) (y:ys) (z:zs) = [(x,y,z)] ++ zip3' xs ys zs


--pembatas

sum' [] = 0
sum' (x:xs) = sum' xs + x

--pembatas

product' []= 1
product' (x:xs) = x * (product'(xs))

--pembatas

words' [] = []

--pembatas

lines' [] = []

--pembatas

unlines' [] = []

--pembatas

unwords' [] = []

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

insert' a [] = [a]
insert' a (x:xs)
  | a <= x = a:[x] ++ (xs)
  | otherwise = [x] ++ (insert' a xs)

--pembatass

zipWith3' a [] [] [] = []
zipWith3' a (x:xs) [] [] = []
zipWith3' a [] (x:xs) [] = []
zipWith3' a [] [] (x:xs) = []
zipWith3' a (x:xs) (y:ys) (z:zs) = [a x y z] ++ (zipWith3' a xs ys zs)

--pembatas

-- 1.b

nub' [] = []
nub' (x:xs) = [x] ++ (nub' (deleteAll' x (x:xs)))

--pembatas

sort' [] = []
sort' [x] = [x]
sort' (x:xs)
  | x == minimum (x:xs) = [x] ++ sort' xs
  | otherwise =  sort' (xs ++ [x])

--pembatas

minimum' [x] = x
minimum' (x:xs) = min' x (minimum' xs)

--pembatas

maximum' [x] = x
maximum' (x:xs) = max' x (maximum' xs)

--pembatas

inits' [] = [[]]
inits' (x:xs) = inits' (init' (x:xs)) ++ [(x:xs)]

--pembatas

tails' [] =[[]]
tails' (x:xs) = (x:xs) : tails' xs

--pembatas

union' [] [] = []
union' (y:ys) [] = (y:ys)
union' [] (y:ys) = (y:ys)
union' (x:xs) (y:ys)
  | y == x = [x] ++ union' xs (y:ys)
  | otherwise = [x] ++ union' xs (y:ys)

--pembatas

intersect' [] [] = []
intersect' _ [] = []
intersect' [] _ = []
intersect' (x:xs) (y:ys)
  | elem' x (y:ys) == True = [x] ++ intersect' (xs) (y:ys)
  | otherwise = intersect' (xs) (y:ys)

--pembatas

group' [] = []
group' (x:xs) = [[x]] ++ group' xs

--pembatas

splitAt' a (x:xs) = ((take a (x:xs)),(drop a (x:xs)))

--pembatas

partition' a [] = ([],[])
partition' a (x:xs) = (filter' a (x:xs), unfilter' a (x:xs))
  where unfilter' a [] = []
        unfilter' a (x:xs)
          | a x == False = [x] ++ unfilter' a xs
          | otherwise = [] ++ unfilter' a xs

--pembatas

replicate' 0 _ = []
replicate' a b
  | a == 1 = [b]
  | otherwise = b :replicate' (a-1) b

-- pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
