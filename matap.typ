#import "src/template.typ": *

#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set page(paper: "a4", margin: 0.5in)
#set par(justify: true)

= Série de Fourier

== Funções Periódicas

#definition[$f$ é $T$-periódica se $f(t+T) = f(t)$ $forall t in RR$, $T > 0$.]

#example[$f(t) = sin(t)$ é $2pi$-periódica.]

#example[$f(t) = 1$ é periódica (admite qualquer número positivo como período).]

#definition[Uma função T-periódica admite períodos T, 2T, 3T, 4T, ..., pois $ f(t) = f(t+T) = f(t+2T) = f(t+3T) $]

*Definição:*

+ O menor período $T > 0$ é o período fundamental.
+ A frequência fundamental é $f = 1/T$.
+ A frequência angular fundamental é $w = 2pi/T$.

*Exemplo:*

$2pi$ é o período fundamental de $sin(t)$ e $w = 1$ é a frequência angular fundamental. De fato, $pi$ não é período de $sin(t)$, pois $sin(pi/2) |= sin(pi/2 + pi) = -1$

$f(t) = 1$ não possui período fundamental.

$sin(w t) = $

O período satisfaz $ sin(w t) = sin(w(t+T)) $\
Em especial, se $t = 0$, temos $sin(w T) = sin(0) = 0$\
$ => w T = n\pi, n > 0$\
$ T = n\pi / w $

Candidatos a período são $pi/w$, $2pi/w$, $3pi/w$, ...

Observe que $pi/w$ não é período, pois se $t = pi/2w$, temos $ sin(w pi/2w)) |= sin(w(pi/2w + pi/w)) = -1 $

Também observe que $ sin(w t) = sin(w(t + 2pi/w))$
$ = sin(w t)cos(2pi) + sin(2pi)cos(w t) $
$ sin(w t), forall t in RR $

Logo, $T = 2pi/w$ é o período fundamental de $sin(w t)$ e $2pi/(2pi/w) = w$ é a frequência angular fundamental.

*Exemplo:* Período de $sin(w_1 t) + sin(w_2 t)$

Período do $sin(w_1 t) -> T_1 = (2pi/w_1)n, n >= 1$

Período do $sin(w_2 t) -> T_1 = (2pi/w_2)m, m >= 1$

Se existirem $m$ e $n$ tal que $T_1 = T_2$, a soma é periódica, isto é: $ (2pi/w_1)n = (2pi/w_1)m => w_2/w_1 = m/n $

*Observação:* $sin(pi\t) + sin(t)$ não é periódica, pois $1/pi = m/n$ não possui solução em $QQ$.

*Exemplo:* Período e Frequência de $sin(2t) + sin(6t)$

$ T = pi, w = 2 $

$w$ é como que MDC e $T = 2pi/"MMC"(w_1, w_2)$.

*Teorema:* Se $f$ é T-periódica e integrável, então $integral_x^(x+t) f(t) dif t = integral_x^t f(t) dif t$\
Em especial, se $x = -T/2$, temos $ integral_(-pi/2)^(pi/2) f(t) dif t = integral_0^T f(t) dif t $

*Demonstração:*

$I(x) = integral_x^(x+T) f(t) dif t$
$I'(x) = f(x+T) - f(x) = 0$
$I(x) = I(0) = integral_0^T f(t) dif t$

== Polinômio Trigonométrico

$ f(t) = a_0/2 + sum_n=1^N a_n cos(w_n t) + b_n sin(w_n t), w_n = (2pi/T)n $

== Série Trigonométrica

$ f(t) = a_0/2 + sum_(n=1)^infinity a_n cos(w_n t) + b_n sin(w_n t), w_n = (2pi/T)n $

*Teorema:* Relações de Ortogonalidade
