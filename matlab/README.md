# MATLAB Training

<img src=https://user-images.githubusercontent.com/45469701/111812253-8d7db180-889d-11eb-9daa-facd665d6147.png width = 250>

If you're new to MATLAB or looking to get an idea for the type of workflow that might happen in the lab as well as good coding practices, here are some resources.

## Tutorials

### Getting Started
#### MATLAB License
[Check if your school offers MATLAB licenses](https://www.mathworks.com/academia/tah-support-program/eligibility.html)

#### Intro Tutorials
[Getting Started With MATLAB](https://www.mathworks.com/help/matlab/getting-started-with-matlab.html) (~1 hr, run code yourself)

#### Data Science 
[MATLAB - Data Science Tutorial](https://www.mathworks.com/videos/series/data-science-tutorial.html) (~45 min)

#### MATLAB Central
[MATLAB Central](https://www.mathworks.com/matlabcentral/?s_tid=srchbrcm) has useful things like [Answers](https://www.mathworks.com/matlabcentral/answers/index/?s_tid=gn_mlc_an) (how do I ...?) and [File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/?s_tid=gn_mlc_fx) (has someone already written & packaged the piece of code you're trying to write?). Google searches with the keyword "matlab" will often pull up links to MATLAB Answers and the MATLAB File Exchange (abbreviated to FEX). Login to your MathWorks account and bookmark questions as you go.

There is a possibility that for whatever you're trying to do, a built-in MATLAB function or a function written by someone else already exists. Keep that in mind as you balance the time to search for existing code vs. writing your own.

I also recommend keeping a record of answers that you find on MATLAB Central or otherwise (I use OneNote, in which case I suggest having a separate section for each language or program, and a single page for each topic or title). Include both the link and a (preferably text) snippet of the relevant code that was useful. I both update and reference my personal record frequently (often daily) for MATLAB, Mathematica, git, python, bash, Excel, etc.
##### Sterling's OneNote MATLAB "personal library" (2021-03-19):
<img src=images/matlab-onenote.png width=1000>

##### Example OneNote Page
<img src=images/struct-initialize-onenote.png width=500>

When you find good resources, make them "yours" in the sense that you can get back to them quickly. OneNote has good search capabilities (Ctrl+E) where you have granular control over the scope (e.g. "This Notebook", "All Notebooks", etc.)

## Coding Practices
### arguments ... end syntax
New feature as of R2019b. Highly recommended:
[MATLAB - Function Argument Validation](https://www.mathworks.com/help/matlab/matlab_prog/function-argument-validation-1.html)
[MATLAB - arguments](https://www.mathworks.com/help/matlab/ref/arguments.html)

### Long scripts vs. compact functions
#### Long scripts
It is convenient and easier in the short-term to write code for a whole project in a single script, e.g. having 1000 lines of consecutive code. You can have every variable you assign accessible in a single workspace and you can send a single file instead of many via email, etc.

However, even with good documentation and comments, it becomes difficult for someone else to understand, modify, or debug the code (see [Debugging](https://github.com/BYU-Materials-Innovation/training/blob/master/MATLAB/README.md#debugging) section). It's likely that after a year or many years when you look back at the code, you will have forgotten the details of the workflow yourself.

#### Alternative: compact functions
While it takes more work initially, one effective coding methodology that pays off in the long-run involves:
- compartmentalizing code into functions with clear input/output behavior
- give every new function appropriate documentation & comments (see Code Preamble and Commenting sections)
- write a corresponding "test" function or use a test framework (see [Test Functions](https://github.com/BYU-Materials-Innovation/training/blob/master/MATLAB/README.md#test-functions) section)

Some key benefits are as follows:
- Forces you to think about what you're trying to accomplish
- Helps to keep you organized
- Helps you get into the habit of frequent documentation (remember to paste a preamble template into new functions, see [preamble template](https://github.com/BYU-Materials-Innovation/training/blob/master/MATLAB/README.md#preamble-template) section)
- **much easier to debug** (see [Debugging](https://github.com/BYU-Materials-Innovation/training/blob/master/MATLAB/README.md#debugging) section, and use `Ctrl+D` [shortcut](https://github.com/BYU-Materials-Innovation/training/blob/master/MATLAB/README.md#shortcuts)!)

<!---
#### Combining scripts & functions
Something I've liked to do recently is continuous [refactoring](https://digital.ai/resources/agile-101/code-refactoring) of script code into functions throughout the coding process. It goes something like the following:
1. begin writing code in a script called "run.m" in an appropriately named folder for the project
1. when it takes more than a few "mouse wheels" to scroll to the end of your code (not including code "graveyards", see [Code Graveyards]() section):
	1. identify pieces of code to refactor
	1. create a new function 
	1. copy preamble template
	* add extra comments and section titles where necessary
	* move commented code to code graveyard
--->

### Debugging
MATLAB excels in debugging features. [This article](https://coralogix.com/log-analytics-blog/this-is-what-your-developers-are-doing-75-of-the-time-and-this-is-the-cost-you-pay) claims the following about debugging:

> 1) On average, a developer creates 70 bugs per 1000 lines of code (!)
> 1) 15 bugs per 1,000 lines of code find their way to the customers
> 1) Fixing a bug takes 30 times longer than writing a line of code
> 1) 75% of a developer’s time is spent on debugging (1500 hours a year!)
> 1) In the US alone, $113B is spent annually on identifying & fixing product defects  
> (accessed 2020-09-17)

In research, you are the developer. Your customers are your advisor, your labmates, and other researchers (when you publish or share your code). Take the time to be more effective at both debugging and avoiding bugs, and you'll save time and headaches down the road!

Here are two places to start:
* [MATLAB - Debugging Code](https://www.mathworks.com/help/matlab/debugging-code.html)
* [MATLAB - Debugging Process and Features](https://www.mathworks.com/help/matlab/matlab_prog/debugging-process-and-features.html)

#### Test Functions
MATLAB also has a suite of tools for running test cases. Whether or not you use one of these frameworks, I highly suggest you write and use test functions.

[MATLAB - Testing Frameworks](https://www.mathworks.com/help/matlab/matlab-unit-test-framework.html)
For a simple, effective approach, check out the [Script-Based Unit Test Framework](https://www.mathworks.com/help/matlab/script-based-unit-tests.html).

Something that isn't talked about in the above tutorials is that test functions can also be a really effective way to visualize and understand a piece of code without cluttering the function itself. For example, if your code involves operations on high-dimensional data, you can include plotting routines to visualize and understand what happens in lower dimensions. The visualization is also useful as a double check for debugging: Is this the output you would expect from a particular process?

### Directory organization
- Input and output should be self-contained within a repository (this can be with nested submodules as well)
- I like to have one repo correspond to one (intended) paper. These can be split as needed and as the project progresses, but it allows for modular deployment of code
- By having at minimum a top-level "code", "data", and "results" folder, you can get the code ready for containerization/deployment via [Code Ocean](https://codeocean.com/) (super cool!). Best practice is generally to split these anyway
- If you use data that can't be posted publicly (due to copyright, licensing restrictions, etc.), but it is small/reasonable enough to fit inside a GitHub repo (i.e. files are all less than 100 MB and the repo isn't massive, i.e. < a few GiB), then you can make a submodule (i.e. repo) that contains that data but doesn't get made public when the rest of the code gets made public. However, there are generally better [alternatives](https://www.nature.com/sdata/policies/repositories) to hosting your data, such as figshare (first 100 GB free).
- Hosting code inside a GitHub organization (free to create, e.g. @BYU-Materials-Innovation or @sgbaird-5DOF) rather than a personal account (e.g. sgbaird) allows you to assign granular permissions (e.g. Read vs. Write vs. Admin) to people while keeping the repo private until launch. Haven't seen any downsides to this approach yet.

### Sharing code
* [GitHub repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/about-repositories) (recommended)
  * [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
* [MATLAB packages](https://www.mathworks.com/help/matlab/matlab_oop/scoping-classes-with-packages.html) (can be combined with GitHub repositories)
* [GitHub Packages](https://docs.github.com/en/packages/publishing-and-managing-packages/about-github-packages) (I don't know a lot about these, but multiple packages can be contained within a single GitHub repository)

### Commenting

#### Code Preamble

##### Research-specific
Add a **date** to the preamble (YYYY-MM-DD) and **references** to published papers or other resources (try copy as .. formatted citation in Mendeley). Cite other people's work! If e.g. a MATLAB answer goes beyond general knowledge or has a useful description of what's going on, include a link to that as well in the format: "https://www.mathworks.com/matlabcentral/answers/<####>" (e.g. https://www.mathworks.com/matlabcentral/answers/15345), which will be more permanent (if the question title changes, the URL doesn't change), or just use the URL from your browser which includes (at least part of) the question title.

##### Add Help for your Program
[MATLAB - Add Help for your Program](https://www.mathworks.com/help/matlab/matlab_prog/add-help-for-your-program.html)

##### Preamble template
[preamble-template.txt](preamble-template.txt) leverages built-in program help features, readability, lab-specific coding practices, as well as the ability to use `Ctrl-J` to reformat the preamble section. Copy this template or make your own and place it somewhere easily accessible while coding.

### Shortcuts
[Navigation](https://www.mathworks.com/help/matlab/matlab_env/use-keyboard-shortcuts-to-navigate-matlab.html)

Condensed version from [8 Handy MATLAB Shortcuts That Will Save You a Ton of Time](https://interestingengineering.com/8-handy-matlab-shortcuts-that-will-save-you-a-ton-of-time) including other(s) that I've added.

Function | Windows | Mac
---|---|---
Function Help | `F1` | `F1` (?)
Comment | `Ctrl+R` | `⌘+/`
Un-comment | `Ctrl+T` | `⌘+T`
Auto-Indent | `Ctrl+I` | `⌘+I`
Abort | `Ctrl+C` | `⌘+C`
Run all code | `F5` | `⌘+return`
Run highlighted code | `F9` | `fnkey+F9`
Switch panes | `Ctrl+tab` | `Ctrl+1, 2, 3` etc.
Jump to cursor location | `ALT +` left arrow key or right arrow key | N/A
New script | `Ctrl+N` | `⌘+N`
Cancel current action | `Esc` | `Esc`
Open function | `Ctrl+D` | (?)

[other list](http://keyxl.com/aaae261/277/MatLab-keyboard-shortcuts.htm)

## Image Credit
| Image | Source |
| --- | --- |
| Simba Learns to Code | https://www.reddit.com/r/ProgrammerHumor/comments/a9dijb/legacy_code/ |

## Acknowledgements
Primarily based on page from @BYU-Materials-Innovation/training private repo.
