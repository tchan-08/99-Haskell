main :: IO()

isPalindrome :: Eq a => [a] -> Bool

isPalindrome [] = True
isPalindrome [a] = True 
isPalindrome (x:xs) = helper (x:xs) (reverse (x:xs))
    where
        helper (x:xs) [] = False
        helper [] (y:ys) = False
        helper [] [] = True 
        helper (x:xs) (y:ys) = if x == y then helper xs ys else False
        

main = do print (isPalindrome [1,2,3,2,1])