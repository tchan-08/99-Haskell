main :: IO()

-- Remove all consecutive duplicates from a list

compress :: Eq a => [a] -> [a]

compress [] = []
compress [a] = [a]
compress (x:y:xs) = if x == y then compress (y : xs) else x : compress (y : xs)

main = do print (compress "aaaabccaadeeee")