example1 = do
  name <- getLine
  putStrLn name

example2 = do
  name <- getLine
  putStrLn name

example3 = do
  name <- getLine
  putStrLn ("Hello, " ++ name)

example4 = do
  first <- getLine
  last <- getLine
  putStrLn ("Hello, " ++ first ++ " " ++ last)

example5 = do
  let getName = do first <- getLine
                   last <- getLine
                   return (first ++ " " ++ last)

  name <- getName
  putStrLn ("Hello, " ++ name)

example6 = do
  let getName = do first <- getLine

                   if first == "Cher" then
                     return first
                   else do
                     last <- getLine
                     return (first ++ " " ++ last)

  name <- getName
  putStrLn ("Hello, " ++ name)

main = example6

