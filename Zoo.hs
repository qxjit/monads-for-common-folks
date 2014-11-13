data Identity a = Identity { getId :: a }
  deriving Show

instance Monad Identity where
  identity >>= f = f (getId identity)
  return a = Identity a

greeting getFirstName getLastName = do
  first <- getFirstName

  if first == "Cher" then
    return "Hello, Cher"
  else do
    last <- getLastName
    return ("Hello, " ++ first ++ " " ++ last)

main = do
  putStrLn "-- Identity Greetings --"
  print $ greeting (Identity "Bob") (Identity "Smith")
  print $ greeting (Identity "Cher") (Identity "Sarkisian")
  putStrLn ""

  putStrLn "-- List Greetings --"
  print $ greeting ["Bob", "Cher"] ["Smith", "Sarkisian"]
  print $ greeting ["Bob", "Cher"] []
  putStrLn ""

  putStrLn "-- Maybe Greetings --"
  print $ greeting (Just "Bob") (Just "Smith")
  print $ greeting (Just "Bob") Nothing
  print $ greeting (Just "Cher") Nothing
  print $ greeting Nothing (Just "Smith")
  putStrLn ""

  putStrLn "-- IO Greetings --"
  print =<< greeting getLine getLine
  putStrLn ""

