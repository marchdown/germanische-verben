-- module Main where


-- import


-- longest_common_prefix
lcp :: [String] -> String
-- lcp ["fyke", "føk", "fauk", "føket"] =  "f"
lcp [x] = x
lcp (x:xs) = map fst $ takeWhile (uncurry (==)) $ zip x (lcp xs)

-- longest common suffix
lcs :: [String] -> String
lcs = reverse . lcp . map reverse


-- проингорировать все окончания: для каждой строки, если она заканчивается на одно из окончаний, заменить её на ту же, но без окончания
-- endings = ["e", "er", "tt", "et", "ett", "tte", "dd", "dde"]
-- type Paradigm = [Infinitive, Present, Past, Participle]
-- type Paradigm <<English>> = [Infinitive, Past, Perfect]


-- набор окончаний для насточщего (Presens, Praesens):
prs_endings = ["er", "r"]
-- gli glir; gjøre gjør = ["gjø -er"] gjorde
-- набор окончаний для перфекта (Participle, Participp, Perfect): 
pft_endings = ["dde", "dd", "te", "tte", "et"]
-- набор окончаний для прошедшего времени (Past)
pst_endings = ["et", "dd", "te"]
