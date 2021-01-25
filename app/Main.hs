module Main where

import Lib
import System.Environment
import Text.Read
import Data.Maybe

main :: IO ()
main = do
    --let args = ["test"]
    args <- getArgs
    let modArgs2 = modArgs args
    let principal = (fromMaybe 0 (readMaybe modArgs2 :: Maybe Double))
    --print principal
 
 
  -- putStrLn "What's the Principal Amount? "
  -- principal <- getLine
    putStrLn "Principal Loan Amount"
    putStrLn $ show principal
    putStrLn "Interest Rate"
    putStrLn $ show intRate ++ "%"
    putStrLn "Term in Months"
    putStrLn $ show months
    putStrLn "Monthly Payments" 
  -- let x = (read principal :: Double) 
    putStrLn ("$"++(printMortC principal)) 
    


modArgs :: [String] -> String
modArgs [x] = x
modArgs []  = []


