main :: IO()

-- Print second last item in list

myButLast :: [Int] -> Int 

myButLast [x, _] = x 
myButLast (x:xs) = myButLast xs

main = do print (myButLast [1,2,3,4,5])