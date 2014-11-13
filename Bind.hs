example1 =
  getLine >>= putStrLn

example2 =
  getLine >>= \name -> putStrLn name

example3 =
  getLine >>= \name ->
  putStrLn ("Hello, " ++ name)

example4 =
  getLine >>= \first ->
  getLine >>= \last ->
  putStrLn ("Hello, " ++ first ++ " " ++ last)

example5 =
  let getName = getLine >>= \first ->
                getLine >>= \last ->
                return (first ++ " " ++ last)

  in getName >>= \name ->
     putStrLn ("Hello, " ++ name)

example6 =
  let getName = getLine >>= \first ->

                if first == "Cher" then
                  return first
                else
                  getLine >>= \last ->
                  return (first ++ " " ++ last)

  in getName >>= \name ->
     putStrLn ("Hello, " ++ name)

main = example6

