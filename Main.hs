{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Control.Monad
import qualified System.Remote.Monitoring as M

fib n 
  | n < 2     = 1
  | otherwise = fib (n-2) + fib (n-1)

loop :: IO ()
loop = forever $ getLine >>= (print . fib . read)

main :: IO ()
main = do
  M.forkServer "localhost" 8001
  putStrLn "enter some numbers separated by newlines"
  loop
