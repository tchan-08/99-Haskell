main :: IO()

-- Print n-th element of a list

elementAt :: [a] -> Int -> a

elementAt (x:xs) 1 = x
elementAt (x:xs) n = elementAt xs (n - 1)


main = do print (elementAt [1,2,3,4,5] 2)