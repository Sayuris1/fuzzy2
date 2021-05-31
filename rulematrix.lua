local M = {}

---------------------------------
-- Rules
---------------------------------

--
-- House
--

-- Rule 1
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'low' )
M.r1:addimplic( false, 'house', 'low' )

-- Rule 2
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'location', 'bad' )
M.r1:addimplic( false, 'house', 'low' )

-- Rule 3
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'low' )
M.r1:addpremise( false, 'location', 'bad' )
M.r1:addimplic( false, 'house', 'verylow' )

-- Rule 4
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'medium' )
M.r1:addpremise( false, 'location', 'bad' )
M.r1:addimplic( false, 'house', 'low' )

-- Rule 5
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'high' )
M.r1:addpremise( false, 'location', 'bad' )
M.r1:addimplic( false, 'house', 'medium' )

-- Rule 6
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'veryhigh' )
M.r1:addpremise( false, 'location', 'bad' )
M.r1:addimplic( false, 'house', 'high' )

-- Rule 7
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'low' )
M.r1:addpremise( false, 'location', 'fair' )
M.r1:addimplic( false, 'house', 'low' )

-- Rule 8
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'medium' )
M.r1:addpremise( false, 'location', 'fair' )
M.r1:addimplic( false, 'house', 'medium' )

-- Rule 9
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'high' )
M.r1:addpremise( false, 'location', 'fair' )
M.r1:addimplic( false, 'house', 'high' )

-- Rule 10
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'veryhigh' )
M.r1:addpremise( false, 'location', 'fair' )
M.r1:addimplic( false, 'house', 'veryhigh' )

-- Rule 11
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'low' )
M.r1:addpremise( false, 'location', 'excellent' )
M.r1:addimplic( false, 'house', 'medium' )

-- Rule 12
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'medium' )
M.r1:addpremise( false, 'location', 'excellent' )
M.r1:addimplic( false, 'house', 'high' )

-- Rule 13
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'high' )
M.r1:addpremise( false, 'location', 'excellent' )
M.r1:addimplic( false, 'house', 'veryhigh' )

-- Rule 14
M.r1 = fuzzyHouse:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'marketValue', 'high' )
M.r1:addpremise( false, 'location', 'excellent' )
M.r1:addimplic( false, 'house', 'veryhigh' )

--
-- Applicant
--

-- Rule 1
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'low' )
M.r1:addpremise( false, 'income', 'low' )
M.r1:addimplic( false, 'applicant', 'low' )

-- Rule 2
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'low' )
M.r1:addpremise( false, 'income', 'medium' )
M.r1:addimplic( false, 'applicant', 'low' )

-- Rule 3
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'low' )
M.r1:addpremise( false, 'income', 'high' )
M.r1:addimplic( false, 'applicant', 'medium' )

-- Rule 4
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'low' )
M.r1:addpremise( false, 'income', 'veryhigh' )
M.r1:addimplic( false, 'applicant', 'high' )

-- Rule 5
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'medium' )
M.r1:addpremise( false, 'income', 'low' )
M.r1:addimplic( false, 'applicant', 'low' )

-- Rule 6
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'medium' )
M.r1:addpremise( false, 'income', 'medium' )
M.r1:addimplic( false, 'applicant', 'medium' )

-- Rule 7
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'medium' )
M.r1:addpremise( false, 'income', 'high' )
M.r1:addimplic( false, 'applicant', 'high' )

-- Rule 8
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'medium' )
M.r1:addpremise( false, 'income', 'veryhigh' )
M.r1:addimplic( false, 'applicant', 'high' )

-- Rule 9
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'high' )
M.r1:addpremise( false, 'income', 'low' )
M.r1:addimplic( false, 'applicant', 'medium' )

-- Rule 10
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'high' )
M.r1:addpremise( false, 'income', 'medium' )
M.r1:addimplic( false, 'applicant', 'medium' )

-- Rule 11
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'high' )
M.r1:addpremise( false, 'income', 'high' )
M.r1:addimplic( false, 'applicant', 'high' )

-- Rule 12
M.r1 = fuzzyApplicant:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'asset', 'high' )
M.r1:addpremise( false, 'income', 'veryhigh' )
M.r1:addimplic( false, 'applicant', 'high' )

--
-- Credit
--

-- Rule 1
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'income', 'low' )
M.r1:addpremise( false, 'interest', 'medium' )
M.r1:addimplic( false, 'credit', 'verylow' )

-- Rule 2
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'income', 'low' )
M.r1:addpremise( false, 'interest', 'high' )
M.r1:addimplic( false, 'credit', 'verylow' )

-- Rule 3
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'income', 'medium' )
M.r1:addpremise( false, 'interest', 'high' )
M.r1:addimplic( false, 'credit', 'low' )

-- Rule 4
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'applicant', 'low' )
M.r1:addimplic( false, 'credit', 'verylow' )

-- Rule 5
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'high' )
M.r1:addimplic( false, 'credit', 'verylow' )

-- Rule 6
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'verylow' )
M.r1:addpremise( false, 'applicant', 'medium' )
M.r1:addimplic( false, 'credit', 'low' )

-- Rule 7
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'low' )
M.r1:addpremise( false, 'applicant', 'medium' )
M.r1:addimplic( false, 'credit', 'low' )

-- Rule 8
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'medium' )
M.r1:addpremise( false, 'applicant', 'medium' )
M.r1:addimplic( false, 'credit', 'medium' )

-- Rule 9
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'high' )
M.r1:addpremise( false, 'applicant', 'medium' )
M.r1:addimplic( false, 'credit', 'high' )

-- Rule 10
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'veryhigh' )
M.r1:addpremise( false, 'applicant', 'medium' )
M.r1:addimplic( false, 'credit', 'high' )

-- Rule 11
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'verylow' )
M.r1:addpremise( false, 'applicant', 'high' )
M.r1:addimplic( false, 'credit', 'low' )

-- Rule 12
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'low' )
M.r1:addpremise( false, 'applicant', 'high' )
M.r1:addimplic( false, 'credit', 'medium' )

-- Rule 13
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'medium' )
M.r1:addpremise( false, 'applicant', 'high' )
M.r1:addimplic( false, 'credit', 'high' )

-- Rule 14
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'high' )
M.r1:addpremise( false, 'applicant', 'high' )
M.r1:addimplic( false, 'credit', 'high' )

-- Rule 15
M.r1 = fuzzyCredit:addrule( 1, 'andmethod' )
M.r1:addpremise( false, 'house', 'veryhigh' )
M.r1:addpremise( false, 'applicant', 'high' )
M.r1:addimplic( false, 'credit', 'veryhigh' )

return M