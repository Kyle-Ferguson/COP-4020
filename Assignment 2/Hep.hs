module Hep where

hep :: [String] -> [String]

hep [] = []
hep ("you":xs) = "u":(hep xs)
hep ("are":xs) = "r":(hep xs)
hep ("your":xs) = "ur":(hep xs)
hep ("by":"the":"way":xs) = "btw":(hep xs)
hep ("for":"your":"information":xs) = "fyi":(hep xs)
hep ("boyfriend":xs) = "bf":(hep xs)
hep ("girlfriend":xs) = "gf":(hep xs)
hep ("be":"right":"back":xs) = "brb":(hep xs)
hep ("laughing":"out":"loud":xs) = "lol":(hep xs)
hep ("see":"you":xs) = "cya":(hep xs)
hep ("I":"will":xs) = "I'll":(hep xs)
hep ("great":xs) = "gr8":(hep xs)
hep (x:xs) = x:(hep xs)