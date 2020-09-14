module PutJSON where

import Data.List (intercalate)
import SimpleJSON

renderJValue :: JValue -> String

renderJValue (JString a) = show a

renderJValue (JNumber a) = show a

renderJValue (JBool False) = show "false"
renderJValue (JBool True) = show "true"

renderJValue JNull = "null"

renderJValue (JObject o) = "{" ++ pairs o ++ "}"
    where
        pairs [] = ""
        pairs xs = intercalate ", " (map renderPairs xs)
        renderPairs (key, value) = show key ++ ":" ++ renderJValue value

renderJValue (JArray a) = "[" ++ values a ++ "]"
    where
        values [] = ""
        values vs = intercalate ", " (map renderJValue vs)

-- test

-- renderJValue (JObject [("testString", JString "JSTRING"), ("testNumber", JNumber 10.29), ("testBool", JBool False), ("testNull", JNull)])