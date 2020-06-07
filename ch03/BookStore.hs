data BookInfo = Book Int String [String] 
    deriving (Show)
-- 模式匹配 生成函数获取属性
bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors
-- 模式匹配 ‘-’ 通配符 
nicerID      (Book id _     _      ) = id
nicerTitle   (Book _  title _      ) = title
nicerAuthors (Book _  _     authors) = authors
-- 上述代码的简写方式
data Customer = Customer {
    customerID      :: CustomerID,
    customerName    :: String,
    customerAddress :: Address
} deriving (Show)

costomer1 = Customer 1 "1" ["ad1"]
costomer2 = Customer {
    customerID      = 2,
    customerName    = "2",
    customerAddress = ["2"]
}

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
