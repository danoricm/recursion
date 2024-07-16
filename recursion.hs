-- recursion.hs
import System.IO

factorial :: Int -> Int
factorial n
    | n <= 1 = 1
    | otherwise = n * factorial (n - 1)

main :: IO ()
main = do
    putStr "Enter an integer: "
    hFlush stdout
    input <- getLine
    let param = read input :: Int
    if param == 0 && input /= "0"
    then putStrLn "Invalid input"
    else print (factorial param)
