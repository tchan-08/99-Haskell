main :: IO()

-- Reverse a list

myReverse :: [a] -> [a]

myReverse list = helper [] list
    where 
        helper list [] = list
        helper list (x:xs) = helper (x:list) xs

main = do print (myReverse [1,2,3,4,5])