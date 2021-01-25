module Main where

import Lib
import System.Environment
import Text.Read
import Data.Maybe

main :: IO ()
main = do
    args <- getArgs
    let modArgs2 = modArgs args
    let principal = (fromMaybe 0 (readMaybe modArgs2 :: Maybe Double))
 
    putStrLn "Principal Loan Amount"
    putStrLn $ show principal
    putStrLn "Interest Rate"
    putStrLn $ show intRate ++ "%"
    putStrLn "Term in Months"
    putStrLn $ show months
    putStrLn "Monthly Payments" 
    putStrLn ("$"++(printMortC principal)) 
    


modArgs :: [String] -> String
modArgs [x] = x
modArgs []  = []


