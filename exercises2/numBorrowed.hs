type Borrower = String
type Book = String
type Card = (Borrower, Book)
type Database = [Card]

db = [("John Hughes", "The Craft of Programming"),
      ("John Hughes", "Blah blah blah"),
      ("Simon Thompson", "Scicen Goes Boink!")]

books db person = [book | (borrower, book)  <- db, borrower == person ]

numBorrowed :: Database -> Borrower -> Int
numBorrowed db person = length (books db person)

main = print (numBorrowed db "John Hughes")
