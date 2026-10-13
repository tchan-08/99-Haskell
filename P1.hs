import Data.Bits (Bits(xor))
main :: IO()

-- Find the last element of a list

myList :: [Int] -> Int
myList [x] = x
myList (x:xs) = myList xs 


main = do print (myList [1,2,3,4,5])