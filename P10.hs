main :: IO ()

encode :: [Char] -> [(Int, Char)]
encode [] = []
encode (x:xs) = (count + 1, x) : encode (drop count xs)
  where
    count = countConsecutive x xs
    countConsecutive :: Char -> [Char] -> Int
    countConsecutive _ [] = 0
    countConsecutive c (x:xs) = if c == x then 1 + countConsecutive c xs else 0

-- >>> encode "aaaabccaadeeee"
-- [(3,'a'),(2,'a'),(1,'a'),(0,'a'),(0,'b'),(1,'c'),(0,'c'),(1,'a'),(0,'a'),(0,'d'),(3,'e'),(2,'e'),(1,'e'),(0,'e')]

main = do print "P10"
