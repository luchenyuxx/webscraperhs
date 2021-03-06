module FindFile.SimpleFinder where

import FindFile.RecursiveContents

simpleFind :: (FilePath -> Bool) -> FilePath -> IO [FilePath]
simpleFind p path = do
  names <- getRecursiveContents path
  return (filter p names)
