module Lib
    ( printMortC
    , intRate
    , months 
    ) where

import Text.Printf

intRate = 2.8 :: Double
months  = 360.0 :: Double

mortCalculator x =
    let r = intRate / 1200
        n = months
    in x * ((r*(1+r)**n)/((1+r)**n-1))


show2Decimals :: Double -> String
show2Decimals x = printf "%.2f" x

printMortC x = (show2Decimals $ mortCalculator x)

