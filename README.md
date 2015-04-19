# coauthorpath-ado

Working with coauthors on Stata do-files is hard enough without having do deal with different paths on different machines. This ado will figure out which coauthor you are and set the path global to match.

From:

`global $path = "C:/Users/author1/project"`
`*global $path = "C:/Users/author2/project"`
`*global $path = "~/author3/project"`

(and having to change the *'s every time you run for coauthor's code)

To:

`coauthorpath "author1" "C:/Users/author1/project" "author2" "C:/Users/author2/project" "author3" "~/author3/project"`
