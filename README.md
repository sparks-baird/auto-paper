# auto-paper
Automate your scientific research paper (thesis, original article, review).

An automated workflow might look something like the following:
<img src=diagram/auto-paper-new.png width=600>

## Equations
### Existing LaTeX Code
Search for LaTeX code for common equations

### Mathpix Snipping Tool
Find an image of the equation you're looking for and use [Mathpix Snipping Tool](mathpix.com) to convert to LaTeX, MathML, etc.

### Mathematica
#### Beginner:  
Use <button type="button" name="button" class="btn">CopyAs..</button> <button type="button" name="button" class="btn">"LaTeX"</button>
* Typeset equations in Mathematica
* Can copy LaTeX or MathML into Mathematica (latter generally behaves better in my experience)

#### Advanced:
Using `TeXport[]`
* Export equations to a `.tex` file
* Export equations followed by variable definitions (e.g. "where a, b, and c represent apples, bananas, and cantouloupes, respectively.")
* Perform and typeset proofs (equations, variable definitions, sentences, and symbolic solutions)

Simple example:  
```
keys = {a, b, c};
values = {"apples", "bananas", "cantaloupe"};
equation = a + b == c;
keyvalues = {keys, values};
printQ = True;
fname = "texport-example";
TeXport[fname, equation, keyvalues, printQ]
```
> \begin{equation} \label{eq:texport-example}  
> a+b=c  
> \end{equation}  
> where $a$, $b$, and $c$ represent apples, bananas, and cantaloupe, respectively.  

<img src=main\code\mathematica\readme-images\texport-easy.png width=500>


## Plotting

### python

### MATLAB
mat-fig

## Literature
If it was easy, someone has probably already done it. If not, it's probably not as important as you think.

### Accurate PDF Metadata
EndNote Click (formerly Kopernio) has given the best results in my experience.

### Research Databases
Between Science Direct and Web of Science, you're likely to find all the research articles that you need. I find that searching both is better than searching only one. While Google Scholar and Google are great search engines for certain applications, I discourage heavy reliance on these for your literature searches. It is likely that you may miss seminal, cutting edge, and or obscure, important papers by neglecting to use Science Direct and Web of Science.
#### Keywords
Keywords deserve their own section because they can make or break your success in finding "gold" articles in your field.

#### Citation Trees
Citation trees (or webs) help you find "gold", "silver", and "bronze" articles in your field by allowing you to trace what works have been cited and what works have been doing the citing. Find 3-4 highly relevant papers in your field, moving up, down, and side-to-side in the citation tree can lead to a treasure trove of other articles.

#### Science Direct

#### Web of Science

### Data Extraction (from existing image-file figures)
[Web Plot Digitizer](https://apps.automeris.io/wpd/)

## Reference Management
Use EndNote Click to bring your documents in!
### Zotero vs. Mendeley vs. EndNote

#### Automatic export
My favorite is Zotero.

#### Citation Keys and Commands
Issues with Mendeley changing citation keys all the time on me. Has thrown off almost the entire LaTeX bibliography before.

Ability to quick-copy citation commands.

#### Annotations

#### Organization (folder structure and tags)


## LaTeX
Overleaf has great LaTeX documentation, even if you're not using Overleaf. Start out with [Documentation Home](https://www.overleaf.com/learn/latex/Main_Page) and the linked [Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes). Also note that the [TeX Stack Exchange](https://tex.stackexchange.com) is a great resource as well. Google searches will often pull up links to either resource.
### Packages
In addition to the above resources, packages have their own documentation and examples which are usually quite informative.

#### glossaries and glossaries-extra (for abbreviations)
Moved a section from the introduction to the right before the conclusion, and messed up all your glossary definitions? No problem with glossaries and glossaries-extra packages!

```
\gls{ml}
\Gls{rf}
\glspl{ann}
```
<img src=readme-images/gls-cmds.png width=250>

I like to \glsreset after the abstract and right before the conclusion.

#### siunitx (for SI units and values)
Dealing with numbers and units is a cinch with this package.

```
\SI{10.25}{\joule\per\square\meter}
\SIlist{10.25; 5; 6}{\joule}
\SIlist{10.25 +- 2.5; 5 \pm 2.1; 6}{\joule}
```
<img src=readme-images/siunitx-cmds.png width=250>

#### chemformula (for chemical formulas)
```
\ch{ThCR2Si2}
```
<img src=readme-images/ch-cmds.png width=250>

#### hyperref and cleveref (for references)
```
\cite{meredigCombinatorialScreeningNew2014}
\citet{meredigCombinatorialScreeningNew2014}
```
<img src=readme-images/cite-cmds.png width=250>

#### xr, zref-xr, or xr-hyper (for multi-document projects)
e.g. Supplementary Information or Supporting Information, or multiple documents with overlapping content.
Overleaf tutorial: [Cross referencing with the xr package in Overleaf](https://www.overleaf.com/learn/how-to/Cross_referencing_with_the_xr_package_in_Overleaf)

## Electronic Laboratory Notebooks (ELNs)
### SciNote vs. Labfolder vs. LabArchives vs. OneNote
### SciNote

### protocols.io
