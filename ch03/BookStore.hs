data BookInfo = Book Int String [String] 
    deriving (Show)

data MagzineInfo = Magzine Int String [String]
    deriving (Show)

myInfo = Book 12314 "Book Name" ["Name1", "Name2"]

-- 复合类型
type CustomerID = Int
type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)
