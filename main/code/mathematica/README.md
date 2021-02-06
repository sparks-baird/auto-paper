# Mathematica

## TeXport
### Simple example:  
#### Code
```
keys = {a, b, c};
values = {"apples", "bananas", "cantaloupe"};
equation = a + b == c;
keyvalues = {keys, values};
printQ = True;
fname = "texport-example";
TeXport[fname, equation, keyvalues, printQ]
```
#### Output
> \begin{equation} \label{eq:texport-example}  
> a+b=c  
> \end{equation}  
> where $a$, $b$, and $c$ represent apples, bananas, and cantaloupe, respectively.

### Complex example:
#### Code
<img src='readme-images/texport-hard.png'>


#### Output
```
\begin{equation} \label{eq:svd-force}
	\overbrace{\left(
\begin{array}{cccc}
 b_{1,1} & b_{1,2} & \ldots  & b_{1,n-\text{nforce}} \\
 b_{2,1} & b_{2,2} & \ldots  & b_{2,n-\text{nforce}} \\
 \vdots  & \vdots  & \ddots & \vdots  \\
 b_{m,1} & b_{m,2} & \ldots  & b_{m,n-\text{nforce}} \\
\end{array}gp
\right)}^B=\overbrace{\left(
\begin{array}{cccc}
 u_{1,1} & u_{1,2} & \ldots  & u_{1,n} \\
 u_{2,1} & u_{2,2} & \ldots  & u_{2,n} \\
 \vdots  & \vdots  & \ddots & \vdots  \\
 u_{m,1} & u_{m,2} & \ldots  & u_{m,n} \\
\end{array}
\right)}^U \overbrace{\left(
\begin{array}{cccc}
 s_{1,1} & s_{1,2} & \ldots  & s_{1,n-\text{nforce}} \\
 s_{2,1} & s_{2,2} & \ldots  & s_{2,n-\text{nforce}} \\
 \vdots  & \vdots  & \ddots & \vdots  \\
 s_{n,1} & s_{n,2} & \ldots  & s_{n,n-\text{nforce}} \\
\end{array}
\right)}^{S_{\text{sub}}}
\end{equation}
where $\text{nforce}$ and $S_{\text{sub}}$ represent number of dimensions to be removed (even if it results in loss of information) and $S$ with the lowest nforce columns removed, respectively.
```

#### Typeset Output  
<img src=readme-images/texport-hard-latex.png>
