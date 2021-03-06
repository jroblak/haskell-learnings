isPrime :: Int -> Bool
isPrime n
  | n <= 1     = False
  | otherwise = foldl (\acc x -> if n `rem` x == 0 then acc && False else acc && True) True [2..(n-1)]

goldbach :: Int -> (Int, Int)
goldbach n
  | n <= 1     = (n, 0)
  | otherwise = head $ filter (\(a, b) -> (isPrime a) && (isPrime b)) [(x, n - x) | x <- [1..(n-1)]]
