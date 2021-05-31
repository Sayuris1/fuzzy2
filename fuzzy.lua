--
-- Load Fuzzy Lua Framework
--
require 'luafuzzy'

---------------------------------
-- Fuzzy Systems
---------------------------------

-- Systems are global

fuzzyHouse = luafuzzy()
fuzzyApplicant = luafuzzy()
fuzzyCredit = luafuzzy()

---------------------------------
-- Fuzzy Inputs
---------------------------------

--
-- House
--

-- Market Value
local marketValue = fuzzyHouse:addinp( 'marketValue', 0, 1000 )
marketValue:addlingvar( 'low', trapmf, { 0, 0, 50, 100 } )
marketValue:addlingvar( 'medium', trapmf, { 50, 100, 200, 250 } )
marketValue:addlingvar( 'high', trapmf, { 200, 300, 650, 850 } )
marketValue:addlingvar( 'veryhigh', trapmf, { 650, 850, 1000, 1000 } )

-- Location
local location = fuzzyHouse:addinp( 'location', 0, 10 )
location:addlingvar( 'bad', trapmf, { 0, 0, 1.5, 4 } )
location:addlingvar( 'fair', trapmf, { 2.5, 5, 6, 8.5 } )
location:addlingvar( 'excellent', trapmf, { 6, 8.5, 10, 10 } )

--
-- Applicant
--

-- Asset
local asset = fuzzyApplicant:addinp( 'asset', 0, 1000 )
asset:addlingvar( 'low', trimf, { 0, 0, 150 } )
asset:addlingvar( 'medium', trapmf, { 50, 250, 450, 650 } )
asset:addlingvar( 'high', trapmf, { 500, 700, 1000, 1000 } )

-- Income
local incomeApplicant = fuzzyApplicant:addinp( 'income', 0, 100 )
incomeApplicant:addlingvar( 'low', trapmf, { 0, 0, 10, 25 } )
incomeApplicant:addlingvar( 'medium', trimf, { 15, 35, 55 } )
incomeApplicant:addlingvar( 'high', trimf, { 40, 60, 80 } )
incomeApplicant:addlingvar( 'veryhigh', trapmf, { 60, 80, 100, 100 } )

--
-- Credit
--

-- House
local house = fuzzyCredit:addinp( 'house', 0, 10 )
house:addlingvar( 'verylow', trimf, { 0, 0, 3 } )
house:addlingvar( 'low', trimf, { 0, 3, 6 } )
house:addlingvar( 'medium', trimf, { 2, 5, 8 } )
house:addlingvar( 'high', trimf, { 4, 7, 10 } )
house:addlingvar( 'veryhigh', trimf, { 7, 10, 10 } )

-- Applicant
local applicant = fuzzyCredit:addinp( 'applicant', 0, 10 )
applicant:addlingvar( 'low', trapmf, { 0, 0, 2, 4 } )
applicant:addlingvar( 'medium', trimf, { 2, 5, 8 } )
applicant:addlingvar( 'high', trapmf, { 6, 8, 10, 10 } )

-- Income
local income = fuzzyCredit:addinp( 'income', 0, 100 )
income:addlingvar( 'low', trapmf, { 0, 0, 10, 25 } )
income:addlingvar( 'medium', trimf, { 15, 35, 55 } )
income:addlingvar( 'high', trimf, { 40, 60, 80 } )
income:addlingvar( 'veryhigh', trapmf, { 60, 80, 100, 100 } )

-- Interest
local interest = fuzzyCredit:addinp( 'interest', 0, 10 )
interest:addlingvar( 'low', trapmf, { 0, 0, 2, 5 } )
interest:addlingvar( 'medium', trapmf, { 2, 4, 6, 8 } )
interest:addlingvar( 'high', trapmf, { 6, 9, 10, 10 } )

---------------------------------
-- Fuzzy Outputs
---------------------------------

--
-- House
--

local houseOut = fuzzyHouse:addout( 'house', 0, 10 )
houseOut:addlingvar( 'verylow', trimf, { 0, 0, 3 } )
houseOut:addlingvar( 'low', trimf, { 0, 3, 6 } )
houseOut:addlingvar( 'medium', trimf, { 2, 5, 8 } )
houseOut:addlingvar( 'high', trimf, { 4, 7, 10 } )
houseOut:addlingvar( 'veryhigh', trimf, { 7, 10, 10 } )

--
-- Applicant
--

local applicantOut = fuzzyApplicant:addout( 'applicant', 0, 10 )
applicantOut:addlingvar( 'low', trapmf, { 0, 0, 2, 4 } )
applicantOut:addlingvar( 'medium', trimf, { 2, 5, 8 } )
applicantOut:addlingvar( 'high', trapmf, { 6, 8, 10, 10 } )

--
-- Credit
--
local credit = fuzzyCredit:addout( 'credit', 0, 500 )
credit:addlingvar( 'verylow', trimf, { 0, 0, 125 } )
credit:addlingvar( 'low', trimf, { 0, 125, 250 } )
credit:addlingvar( 'medium', trimf, { 125, 250, 375 } )
credit:addlingvar( 'high', trimf, { 250, 375, 500 } )
credit:addlingvar( 'veryhigh', trimf, { 375, 50, 500 } )

---------------------------------
-- Rules
---------------------------------

local rules = require ("rulematrix")

---------------------------------
-- Evaluate...
---------------------------------
io.write("Please enter Market Value.", "\n")
local marketValueInput = io.read()
marketValueInput = tonumber(marketValueInput)

io.write("Please enter Location.", "\n")
local locationInput = io.read()
locationInput = tonumber(locationInput)

io.write("Finding House Value ...", "\n")
local houseSolved = fuzzyHouse:solve( marketValueInput, locationInput )
io.write("House value is: ", houseSolved, "\n")

io.write("Please enter Asset.", "\n")
local assetInput = io.read()
assetInput = tonumber(assetInput)

io.write("Please enter Income.", "\n")
local incomeInput = io.read()
incomeInput = tonumber(incomeInput)

io.write("Finding Applicant ...", "\n")
local applicantSolved = fuzzyApplicant:solve(assetInput, incomeInput)
io.write("Applicant is: ", applicantSolved, "\n")

io.write("Please enter Interest.", "\n")
local interestInput = io.read()
interestInput = tonumber(interestInput)

io.write("Finding Credit...", "\n")
local creditSolved = fuzzyCredit:solve(houseSolved, applicantSolved, incomeInput, interestInput)
io.write("Credit is: ", creditSolved, "\n")