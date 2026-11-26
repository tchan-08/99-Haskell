main :: IO ()

pack :: [Char] -> [Char] ->  [[Char]]
pack [] [] = []
pack [] acc = [acc]
pack (x:xs) [] = pack xs [x]
pack (x:xs) acc = if x == head acc then pack xs (x : acc) else reverse acc : pack xs [x]

-- >>> pack "aaaabccaaddeeee" []

main = do print "P9"
