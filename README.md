# auto-paper
Automate your scientific research paper (thesis, original article, review). The aim of auto-paper is to give you tips, tricks, and tools to accelerate your publication rate and improve publication quality.

> :warning: 2021-03-20 This repository is under construction. The end-goal is to have a plug-and-play system that links many of the existing (and amazing) tools that are available to help create scientific documents and add some new tools as well. In the meantime, I hope that the "tips, tricks, and tools" covered in this repository can be of use for you. Please open up an Issue if you have feedback, suggestions, or things you're particularly interested in. I'll prioritize these. Pull requests are welcome.

## Seminar
### Video
<!--- [Watch the seminar](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=131s):  -->
> Taylor Sparks
> 7K subscribers
>
> Sterling Baird, PhD candidate at the University of Utah's Materials Science & Engineering Department in Dr. Taylor Sparks' laboratory, explains some incredible tips, tricks, and tools for automating your research paper. This presentation includes awesome video tutorials for using Github, LaTeX, Matlab, Mathematica, overleaf, Zotero, Web of Science, Scinote, Endnote Click, Science Direct, Table generators, Mathpix snip, protocols.io, and so much more!
Sterling has video demonstrations for each software package and explains how they can all work together in one seamless workflow that will make life easy for any graduate student or researcher. Learn how to be a graduate student from the future with these amazing tools that will astonish your PhD advisor!
>
> [<img src=https://user-images.githubusercontent.com/45469701/111828653-3b468b80-88b1-11eb-94d1-18bc5b92b732.png width=300>](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=131s)   
> [0:00](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=0s) survey results of current tools  
> [1:47](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=107s) automation overview  
> [4:30](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=270s) LaTeX & github  
> [12:20](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=740s) summary of automated workflow tools  
> [18:39](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=1119s) literature management  
> [24:10](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=1450s) conversion apps  
> [25:10](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=1510s) LaTeX packages  
> [30:00](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=1800s) code integrations  
> [36:09](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=2169s) electronic lab notebooks  
> [38:31](https://www.youtube.com/watch?v=K7xbBEMm8I0&t=2311s) Q&A

### Slides
Due to the large filesize, the slides are not available in this repository. However, you can download a copy of slides at their saved state on 2021-03-18:

- [auto-paper-210318.pptx](https://byu-my.sharepoint.com/:p:/g/personal/sbaird9_byu_edu/EdKzWo69pe1EpyNz5aErgPoBD9IZsx3C0E2sUCEZtkPvcA?e=zCz82n)
- [alternate download](https://drive.google.com/file/d/1TD_YIRS6vcisnJZGNpMV2NxLggAgb2Xg/view?usp=sharing)

## Intro

| An automated workflow might look something like: | My personal workflow looks like the following: |
| --- | --- |
| <img src=diagram/auto-paper-new.png width=600> | <img src=diagram/auto-paper-new12-protocols.png width=650> |

LaTeX and Git are the bread and butter of an automated scientific research paper. While you can use some aspects of these tips/tricks without LaTeX/Git (e.g. MathPix Snipping Tool), many others are highly integrated. Learning LaTeX and Git might have a startup cost of 10-100 hrs (depending on desired skill level), but could easily save 100's of hrs in the first year or two of using it.

## LaTeX Document Typesetting
LaTeX (pronounced "Lah-tech" or "Lay-tech") allows you to focus more on content rather than formatting.

See 🔗[LaTeX Teaching](latex-teaching)

## Git Version Control
Git gives you ease, control, power, and peace of mind in version control.

See 🔗[Git Teaching](git-teaching)

## Figures

### python
Plotting videos by Dr. Taylor Sparks: Python to make nice figures.

[Part I](https://www.youtube.com/watch?v=rUV8VFbUi_U)

[Part II](https://www.youtube.com/watch?v=Y8JWfGjj2ok)

[Part III](https://www.youtube.com/watch?v=fwZahTYfyxA)

### MATLAB
Wrap built-in functions into custom versatile functions that suit your research needs. For example, using `parityplot.m` from mat-fig (need to add repo link):  
<img src=https://github.com/sgbaird/latex-teaching/blob/main/figures/single-parity.png width=300>  

See [MATLAB Directory](matlab)

## Tables
[Tables Generator](https://www.tablesgenerator.com/#latex)

<img src=figures/tables-generator.gif width=600>

## Equations
### Existing LaTeX Code
Search for LaTeX code for common equations

### Mathpix Snipping Tool
Find an image of the equation you're looking for and use [Mathpix Snipping Tool](mathpix.com) to convert to LaTeX, MathML, etc.

<img src=figures/mathpix-simple.gif width=500>

### Mathematica

### Quick, Interactive Tutorial
You can play around with Mathematica code (including use of `TeXForm`) and get some quick interactive tutorials via the [Wolfram Programming Lab](https://www.wolfram.com/programming-lab/) (no sign-in required). If after spending a few minutes, you decide you're interested in trying it out, I suggest downloading Mathematica with a 15-day free trial or using your institution's license if applicable. <img src="http://tiny.cc/u-logo" width=20> Mathematica licenses are not yet offered at UoU for general download, but you can use it via [UoU CHPC](https://www.chpc.utah.edu/documentation/software/Mathematica.php). Also, [student pricing](https://www.wolfram.com/mathematica/pricing/students/) (as of 2021-03-20) is as follows:

<img src=https://user-images.githubusercontent.com/45469701/111865007-04f92280-892a-11eb-8b36-a985bbb0ba23.png width=175>

You can also [call Mathematica functions from within Python](https://reference.wolfram.com/language/WolframClientForPython/), but you still need to install Mathematica in the default location or connect to a Cloud kernel ([basic plan of Wolfram Cloud is free](https://www.wolframcloud.com/)).

#### Beginner:  
Right click on selection and <button type="button" name="button" class="btn">CopyAs..</button> <button type="button" name="button" class="btn">"LaTeX"</button>
* Typeset equations in Mathematica
* Can copy LaTeX or MathML into Mathematica (latter generally behaves better in my experience)

#### Intermediate:

##### More advanced typesetting:
To help you learn the shortcuts, consider opening the Math Assistant Palette and hovering over the relevant "boxes" to see the shortcut commands. While the palettes can be useful at first, don't let them become a crutch. Chances are you won't need them most of the time once you're more comfortable. Advanced typesetting is demonstrated for a teaching figure:

<img src=figures/mathematica-crabnet-4x.gif width=950>

##### LaTeX Formatted:

<img src=figures/mathematica-latex-formatted.png width=600>

##### Mathematica "Copy As.. LaTeX" Output

```latex
\begin{equation}
    \begin{array}{cccc}
     \overbrace{\left(
    \begin{array}{c}
     \text{Distances} \\
     \text{Angles} \\
     \text{Area} \\
     \text{Volume} \\
    \end{array}
    \right)}^{\text{Features}} & \overbrace{\left(
    \begin{array}{c}
     0.1\text{\AA} \\
     0\text{rad} \\
     0\text{\AA}^2 \\
     0\text{\AA}^3 \\
    \end{array}
    \right)}^{\text{Lower Bound}} & \overbrace{\left(
    \begin{array}{ccccccccccccc}
     0 & 0.1 & 0.3 & 0.1 & 0 & 0 & 0.2 & 0.4 & 0.2 & 0 & 0 & \ldots  & 0 \\
     0 & 0.1 & 0.2 & 0.4 & 0.2 & 0.1 & 0 & 0 & 0 & 0 & 0 & \ldots  & 0.2 \\
     0 & 0 & 0 & 0.3 & 0.6 & 0.3 & 0 & 0 & 0 & 0.1 & 0.2 & \ldots  & 0 \\
     0 & 0 & 0 & 0 & 0 & 0.4 & 0.6 & 0.4 & 0 & 0 & 0 & \ldots  & 0.1 \\
    \end{array}
    \right)}^{\text{Gaussian Encoding}} & \overbrace{\left(
    \begin{array}{c}
     15\text{\AA} \\
     \pi \text{rad} \\
     225\text{\AA}^2 \\
     3375\text{\AA}^3 \\
    \end{array}
    \right)}^{\text{Upper Bound}} \\
    \end{array}
\end{equation}
```

#### Advanced:
Using [TeXport](https://github.com/sgbaird/TeXport)
* Export equations to a `.tex` file
* Export equations followed by variable definitions (e.g. "where a, b, and c represent apples, bananas, and cantouloupes, respectively.")
* Perform and typeset proofs (equations, variable definitions, sentences, and symbolic solutions)

### MathType
I've played around with [MathType](https://store.wiris.com/en/products/mathtype/download) and have been able to get a comparable typesetting experience as Mathematica (i.e. edit the equation in its "full" form and copy as LaTeX code). Most shortcuts are fairly complicated for being shortcuts (almost all of the standard ones involves a Ctrl+<key1>, release, then <key2>). MathType is the only thing I've found so far that gives a similar typesetting experience to Mathematica. Once the free trial expires, the cost is ~$50/year. Personally, I prefer Mathematica still (MathType is only typesetting), but this may suit your needs.

## Literature
If it was easy, someone has probably already done it. If not, it's probably not as important as you think.

### WoS Accurate PDF Metadata
[EndNote Click (formerly Kopernio)](https://kopernio.com/) has given the best results for adding the correct metadata to PDFs.

<img src=figures/endnote-click.gif width=650>

### Research Databases
Between Science Direct and Web of Science, you're likely to find all the research articles that you need. I find that searching both is better than searching only one. While Google Scholar and Google are great search engines for certain applications, I discourage heavy reliance on these for your literature searches. It is likely that you may miss seminal, cutting edge, and or obscure, important papers by neglecting to use Science Direct and Web of Science.

#### Keywords
Keywords deserve their own section because they can make or break your success in finding "gold" articles in your field.

#### Citation Trees
Citation trees (or webs) help you find "gold", "silver", and "bronze" articles in your field by allowing you to trace what works have been cited and what works have been doing the citing. Find 3-4 highly relevant papers in your field, moving up, down, and side-to-side in the citation tree can lead to a treasure trove of other articles.

Here is an example of navigating to "citing" articles within Web of Science:
<img src=figures/wos-citing-article.gif width=650>

#### Science Direct
[Science Direct](https://www.sciencedirect.com)

#### Web of Science
[Web of Science](https://www.webofknowledge.com)

### Data Extraction (from existing image-file figures)
[Web Plot Digitizer](https://apps.automeris.io/wpd/)

## Reference Management
Use EndNote Click to bring your documents in!
### Zotero vs. Mendeley vs. EndNote
See [ref-software](ref-software)

#### Automatic export
My favorite is Zotero.

#### Citation Keys and Commands
Issues with Mendeley changing citation keys all the time on me. Has thrown off almost the entire LaTeX bibliography before.

Ability to quick-copy citation commands in Zotero is great.

#### Annotations

<img src=figures/foxit-annotation.gif width=650>

#### Organization (folder structure and tags)
After downloading with EndNote Click, drag-and-drop the PDF into Zotero into a folder structure that you organize, and notice that the metadata is automatically extracted:

<img src=figures/zotero-metadata-extraction.gif width=650>

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

I like to `\glsreset` after the abstract and right before the conclusion so that people don't have to go digging through the paper if they're just reading one of those sections. I generally use `\acrfull{}` in the first usage within a figure or table caption, and then `\acrshort{}` afterwards (within the same caption). I believe captions are supposed to be stand-alone components similar to the abstract.

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
Especially useful for cross-reference between main and Supplementary/Supporting information document in same project.
Overleaf tutorial: [Cross referencing with the xr package in Overleaf](https://www.overleaf.com/learn/how-to/Cross_referencing_with_the_xr_package_in_Overleaf)

## Electronic Laboratory Notebooks (ELNs)
### SciNote vs. Labfolder vs. LabArchives vs. OneNote
### SciNote

### protocols.io

### Diagrams
https://tikzit.github.io/#styles
