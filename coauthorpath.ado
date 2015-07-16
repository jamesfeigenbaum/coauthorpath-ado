
*! version 0.2  16jun2015 James J Feigenbaum

/*******************************************************************************
James J Feigenbaum
June 16, 2015
jfeigenb@fas.harvard.edu
james.feigenbaum@gmail.com

coauthorpath.ado file
set paths automatically when switching between computers or coauthors
*******************************************************************************/

version 13.0

*** define program and syntax
program define coauthorpath, nclass 
    syntax anything(), [Path(name)]

	if `"`path'"' == "" local path = "path"

    	local user = c(hostname)
    	*di "`user'"

	local x = ""

	if (regexm("`user'", "`1'") == 1) {
		local x = "`2'"
	}
	else if (regexm("`user'", "`3'") == 1) {
		local x = "`4'"
	}
	else if (regexm("`user'", "`5'") == 1) {
		local x = "`6'"
	}
	else if (regexm("`user'", "`7'") == 1) {
		local x = "`8'"
	}
	else if (regexm("`user'", "`9'") == 1) {
		local x = "`10'"
	}
	else if (regexm("`user'", "`11'") == 1) {
		local x = "`12'"
	}

	global `path' = "`x'"

end

