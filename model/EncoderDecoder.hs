-------------------------------------------------
-- Decoder Encoder Example Paper FPT 2026
-------------------------------------------------
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}

module EncoderDecoder where
import ForSyDe.Shallow

-- fph definition
fph2SY = comb3SY ($)

-- signals
s_sel :: Signal Int
s_sel  = signal [1, 0, 0, 1, 1]
s_key :: Signal Int
s_key  = signal [1, 4, 6, 1, 1]
s_input :: Signal Int
s_input = signal [256, 512, 1024, 2048, -512]

-- functions definition
fadd :: Int -> Int -> Int
fadd x y = x + y
fsub :: Int -> Int -> Int
fsub x y = x - y

-- fetch functions
fetchRepo1 = combSY get
      where get idx = cipherRepo !! idx
            cipherRepo = [(fadd),(fsub)]

fetchRepo2 = combSY get
      where get idx = decipherRepo !! idx
            decipherRepo = [(fsub),(fadd)]

-- controllers definition
cipherGen = fetchRepo1
decipherGen = fetchRepo2

-- reconfigurable process definition
cipher = fph2SY
decipher = fph2SY 

-- hierarchical process network definition
encDec s_key s_input s_sel = (s_enc, s_output)
      where s_encF = cipherGen s_sel
            s_decF = decipherGen s_sel
            s_enc = cipher s_encF s_input s_key
            s_output = decipher s_decF s_enc s_key

{- to test the system, run the following in ghci
ghci> encDec s_key s_input s_sel
({255,516,1030,2047,-513},{256,512,1024,2048,-512})
-}