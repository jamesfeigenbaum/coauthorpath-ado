{smcl}
{* *! version 0.1  19Apr2015 James J Feigenbaum}{...}
{cmd:help coauthorpath}
{hline}

{title:Title}

{phang}
{cmd:coauthorpath} {hline 2} Automatically set path globals for project coauthors.


{title:Syntax}

{p 8 17 2}
{cmd:coauthorpath}
{user:1}
{path:1}
{user:2}
{path:2}
{...}
{user:n}
{path:n}
[{cmd:,} {opth p:ath(str)} ]


{title:Description}

{pstd}
Working with coauthors on do-files is hard enough without having do deal with different paths on different machines. {cmd:coauthorpath} will figure out which coauthor you are and set the path global to match.

{pstd}
{cmd:coauthorpath} accepts a list of paired string arguments. The first should be a string that uniquely identifies the author's computer (usually his or her name) and the second should be the path for the author to work from.

{title:Options}

{phang}
{opth path(str)} Allows you to set the global variable which will store the working directory path. If the {opt path()} option is not specified, the default is $path. {p_end}

{title:Examples}

{phang}{cmd:. coauthorpath author1 "C:/Users/author1/project" author2 "~/author2/project", path(projectpath)} {p_end}
{phang}{cmd:. di "$projectpath"} {p_end}

{title:Author}

{pstd} James Feigenbaum {p_end}
{pstd} Harvard University {p_end}
{pstd} jfeigenb@fas.harvard.edu {p_end}
{pstd} http://scholar.harvard.edu/jfeigenbaum {p_end}
