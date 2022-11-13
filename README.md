# Basic-Octave 


## Colebrook’s Formula
### The friction factor x for turbulent flow in a pipe of diameter D and interior roughness characterized by a roughness coefficient σ is given by Colebrook’s formula:
<br>

## f_x = (1/sqrt(x)) - 1.14 + 2*log10((s/D) + (9.35/(Re*sqrt(x))))

<p>
where Re is the Reynolds number indicating laminar or turbulent flow.
Implement OCTAVE program to find the root of the function f(x) in (2), that is, the
value of the friction factor x which solves the nonlinear equation, f(x) = 0, using following
methods:
 </p>
 
<ol>
<li> Bisection method </li>
<li> Regular Falsi method </li>
<li>Secant method </li>
</ol>

## program must:
<br>
Read the input data from keyboard or from a file. The input data are D, σ, Re,
accuracy level of your program, the left endpoint of the selected initial and the right
endpoint of the selected interval.
You can assume that D = 0.1 m, σ = 0.0025 m and Re = 3 × 104
