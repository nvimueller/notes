#import "src/template.typ": *

#show: conf

#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set page(paper: "a4")
#set par(leading: 1em, justify: true)

= Série de Fourier

== Funções Periódicas

#definition[$f(t)$ é $T$-periódica se $f(t + T) = f(t)$ $forall t in RR$, $T > 0$.]

#theorem[Uma função $T$-periódica admite períodos múltiplos de $T$.]

#example[$f(t) = sin(t)$ é $2pi$-periódica.]

#example[$f(t) = 1$ é periódica -- admite qualquer número positivo como período.]

#definition[
  - O menor período $T > 0$ é o período fundamental.
  - A frequência fundamental é $f = 1/T$.
  - A frequência angular fundamental é $omega = (2pi)/T$.
]

#example[$f(t) = 1$ não possui período fundamental.]

#exercise[Prove que o período fundamental de $cos(t)$ é $2pi$ e que sua frequência angular é $1$.]

#remark[$cos(a + b) = cos(a)cos(b) - sin(b)sin(a)$.]

#proof[
  Aplicando a definição de período, temos que $cos(t) = cos(t + T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $cos(a + b) = cos(a)cos(b) - sin(b)sin(a)$. Substituindo as variáveis $a$ e $b$, temos que $cos(t + T) = cos(t)cos(T) - sin(T)sin(t)$. Igualando os cossenos, temos que $cos(t) = cos(t)cos(T) - sin(T)sin(t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / 2$, temos o sistema 
  $ cases(cos(T) = 1, sin(T) = 0) $ 
  Desse modo, temos que $T$ precisa ser da forma $2n pi$, $n >= 1$. Finalmente, $T = 2n pi$. O período fundamental será, portanto, $T = 2pi$. Já a frequência angular será $(2pi) / (2pi) = 1$.
]

#exercise[Prove que o período fundamental de $sin(omega t)$ é $(2pi) / omega$ e que sua frequência angular é $omega$.]

#remark[$sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$.]

#proof[
  Aplicando a definição de período, temos que $sin(omega t) = sin(omega t + omega T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$. Substituindo as variáveis $a$ e $b$, temos que $sin(omega t + omega T) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Igualando os senos, temos que $sin(omega t) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / (2omega)$ temos o sistema 
  $ cases(sin(omega T) = 0, cos(omega T) = 1) $ 
  Desse modo, para que $sin(omega T) = 0$, $omega T$ precisa ser da forma $n pi$, $n >= 0$. Por outro lado, para que $cos(omega T) = 1$, $omega T$ precisa ser da forma $2n pi$, $n >= 0$. Finalmente, $omega T = 2n pi => T = (2n pi) / omega$. O período fundamental será, portanto, $T = (2pi) / omega$. Já a frequência angular será $(2pi) / ((2pi) / omega) = omega$.
]

#exercise[Encontre o período de $sin(omega_1 t) + sin(omega_2 t)$.]

#solution[
  O período de $sin(omega_1 t)$ é $T_1 = ((2pi)/omega_1)n$, $n >= 1$. Já o período de $sin(omega_2 t)$ é $T_2 = ((2pi)/omega_2)m$, $m >= 1$. Se existirem $n$ e $m$ $in ZZ$ tal que $T_1 = T_2$, a soma é periódica, isto é: $((2pi) / omega_1)n = ((2pi) / omega_2)m => omega_2 / omega_1 = m / n$.
]

#exercise[Prove que $sin(pi t) + sin(t)$ não é periódica.]

#proof[
  O período de $sin(pi t)$ é $T_1 = ((2 pi) / pi)n = 2n$. Já o período de $sin(t)$ é $T_2 = (2pi)m$. Se existirem $m$ e $n$ $in ZZ$ tal que $T_1 = T_2$, a soma é períodica, isto é: $2n = (2pi)m => n = pi m$. Não existe, porém, $m$ inteiro tal que multiplicado por um número irracional resulte em um inteiro. Logo, a função não é periódica.
]

#remark[É necessário que $m$ e $n$ sejam inteiros porque o período da soma das funções precisa se repetir um número inteiro de vezes dentro de um intervalo de tempo para que a soma seja periódica.]

#exercise[Encontre o período fundamental e a frequência de $sin(2t) + sin(6t)$.]

#solution[
  O período de $sin(2t)$ é $T_1 = ((2pi) / 2)n = pi n$, $n >= 1$. Já o período de $sin(6t)$ é $T_2 = ((2pi) / 6)m = (pi / 3)m$, $m >= 1$. Se existirem $n$ e $m$ $in ZZ$ tal que $T_1 = T_2$, a soma é periódica, isto é: $pi n = (pi / 3)m => m / n = 3$. De fato, $n = 1$ e $m = 3$. O período fundamental será, portanto, $T = pi$. Já a frequência angular será $omega = (2pi) / pi = 2$.
]

#remark[Para a soma de funções trigonométricas com frequências angulares comensuráveis $omega_1$ e $omega_2$, a frequência angular resultante é $omega = op("mdc")(omega_1, omega_2)$, com período $T = (2pi) / (op("mdc")(omega_1, omega_2))$. Como regra geral para funções periódicas, o período fundamental composto é dado pelo mínimo múltiplo comum dos períodos individuais: $T = op("mmc")(T_1, T_2)$.]

#theorem[Se $f$ é $T$-periódica e integrável, então $integral_x^(x+T) f(t) dif t = integral_0^T f(t) dif t$.]

#proof[
  Seja $I(x) = integral_x^(x+T) f(t) dif t$. Derivando, temos $I'(x) = f(x+T) - f(x)$ pela Regra de Leibniz. Como $f(x)$ é $T$-periódica, então $f(x+T) = f(x)$. Com isso temos que $I'(x) = 0$. Se a derivada de uma função é zero em todos os pontos, quer dizer que $I(x)$ é uma constante. Logo, como o valor da integral é o mesmo independentemente do valor de $x$, podemos escolher um valor conveniente $x = 0$. Portanto, $I(x) = I(0) = integral_0^T f(t) dif t$.
]

== Polinômio Trigonométrico

#definition[$f(t) = a_0 / 2 + sum_(n=1)^N a_n cos(omega_n t) + b_n sin(omega_n t)$, onde $omega_n = (2pi n) / T$.]

== Série Trigonométrica

#definition[$f(t) = a_0 / 2 + sum_(n=1)^infinity a_n cos(omega_n t) + b_n sin(omega_n t)$, onde $omega_n = (2pi n) / T$.]

#theorem[
  1. $integral_0^T sin((2 pi n t) / T) sin((2 pi m t) / T) dif t = cases(0 "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  #v(0.5em)
  2. $integral_0^T cos((2 pi n t) / T) cos((2 pi m t) / T) dif t = cases(T "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  #v(0.5em)
  3. $integral_0^T cos((2 pi n t) / T) sin((2 pi m t) / T) dif t = 0$ 
]

#remark[$sin(a)sin(b) = 1/2(cos(a - b) - cos(a + b))$.]

#proof[
  Aplicando a identidade trigonométrica ao integrando:
  $ integral_0^T sin((2pi n t) / T) sin((2pi m t) / T) dif t = 1 / 2 integral_0^T cos((2pi t(n - m)) / T) - cos((2pi t(n + m)) / T) dif t $ 
  
  Se $n = m = 0$, os termos se cancelam e o resultado é integral de zero, que é zero. Se $m = n != 0$, o termo da subtração angular se torna $cos(0) = 1$, enquanto o termo da soma integra para zero no período completo. Logo, o resultado é $1 / 2 integral_0^T 1 dif t = T / 2$. Se $n != m$, então a integral dos cossenos com frequências múltiplas de um período completo é zero.
]

#exercise[Demonstre as relações 2 e 3.]

#theorem[
  Se uma função admitir uma representação da forma de uma série trigonométrica, então os seus coeficientes de Fourier são dados por:
  - $a_0 = 2 / T integral_0^T f(t) dif t$.
  - $a_n = 2 / T integral_0^T f(t) cos(omega_n t) dif t$, para $n >= 1$.
  - $b_n = 2 / T integral_0^T f(t) sin(omega_n t) dif t$, para $n >= 1$.
]

#exercise[Demonstre o cálculo dos coeficientes $a_0$ e $b_n$.]

#definition[Uma série trigonométrica convergente é uma série de Fourier.]

#theorem[Se $f(t)$ é periódica, suave por partes e descontínua por saltos apenas em um número finito de pontos em cada período, então a série de Fourier existe e converge para $(f(t^+) + f(t^-)) / 2$.]

#example[Para a onda dente de serra $f(t) = t$, com período $T = 1$ e $omega_n = 2pi n$, temos: $a_0 = 1$, $a_n = 0$ para $n >= 1$, e $b_n = -1 / (pi n)$ para $n >= 1$. Logo, a série é: $f(t) = 1/2 - sum_(n = 1)^infinity 1 / (pi n) sin(2 pi n t)$.]

#definition[Uma função $f(t)$ é denominada par se $f(t) = f(-t)$.]

#definition[Uma função $f(t)$ é denominada ímpar se $f(t) = -f(t)$.]

#remark[$cos(a - b) = cos(a)cos(b) + sin(b)sin(a)$.]

== Forma Harmônica

#definition[
  A série de Fourier também pode ser escrita na forma harmônica:
  $ f(t) &= A_0 + sum_(n = 1)^infinity A_n cos(omega_n t - phi_n) \
         &= a_0 / 2 + sum_(n=1)^infinity (a_n cos(omega_n t) + b_n sin(omega_n t)) $
]

#definition[
  Se uma função admitir uma representação da forma de uma série trigonométrica, então os seus coeficientes de Fourier da forma harmônica são dados por:
  - $A_0 = a_0 / 2$
  - $a_n = A_n cos(phi_n)$
  - $b_n = A_n sin(phi_n)$
  - $A_n = sqrt(a_n^2 + b_n^2)$
  #v(0.3em)
  - $cases(cos(phi_n) = a_n / A_n, sin(phi_n) = b_n / A_n)$
]

#exercise[Converta a onda dente de serra para a forma harmônica.]

DATA: 11/11

#remark[Já vimos até agora:
  $f(t) = a_0 / 2 + sum_(n=1)^infinity a_n cos(omega_n t) + b_n sin(omega_n t)$, onde $omega_n = (2pi n) / T$.
  - $omega_n = (2pi n) / T$
  - $a_0 = 2 / T integral_0^T f(t) dif t$.
  - $a_n = 2 / T integral_0^T f(t) cos(omega_n t) dif t$, para $n >= 1$.
  - $b_n = 2 / T integral_0^T f(t) sin(omega_n t) dif t$, para $n >= 1$.
  $f(t) = A_0 + sum_(n = 1)^infinity A_n cos(omega_n t - phi_n)$.
  - $A_0 = a_0 / 2$
  - $a_n = A_n cos(phi_n)$
  - $b_n = A_n sin(phi_n)$
  - $A_n = sqrt(a_n^2 + b_n^2)$
  #v(0.3em)
  - $cases(cos(phi_n) = a_n / A_n, sin(phi_n) = b_n / A_n)$
]

= Forma Exponencial

#definition[
  $f(t) = a_0 / 2 + sum_(n=1)^infinity a_n (e^(i omega_n t) + e^(-i omega_n t)) / 2 + b_n (e^(i omega_n t) - e^(-i omega_n t)) / 2i$.
  $f(t) = a_0 / 2 + sum_(n=1)^infinity ((a_n - i b_n) / 2) e^(i omega_n t) + ((a_n + i b_n) / 2) e^(-i omega_n t)$.
  $f(t) = a_0 / 2 + sum_(n=1)^infinity ((a_n - i b_n) / 2) e^(i omega_n t) + sum_(n = 1)^infinity ((a_n + i b_n) / 2) e^(-i omega_n t)$.
  $f(t) = a_0 / 2 + sum_(n=1)^infinity ((a_n - i b_n) / 2) e^(i omega_n t) + sum_(n = -1)^(-infinity) ((a_(-n) + b_(-n)) / 2) e^(-i omega_(-n) t)$.
]

= Extensões dos Coeficientes

$omega_n = (2pi n) / T => omega_(-n) = (2pi / T)(-n) = (-2pi n) / T = -omega_n$, $n >= 0$.
$omega_n = 0$
$a_(-n) = 2 / T integral_0^T f(t) cos(omega_(-n) t) dif t = 2 / T integral_0^T f(t) cos(-omega_n t) dif t = a_n$, $n >= 1$.
$b_n = 2 / T integral_0^T f(t) sin(omega_(-n) t) dif t = 2 / T integral_0^T f(t) sin(-omega_n t) dif t = -b_n$, $n >= 1$
$b_0 = 0$.
Temos:
$f(t) = a_0 / 2 + sum_(n=1)^infinity ((a_n - i b_n) / 2) e^(i omega_n t) + sum_(n = -1)^(-infinity) ((a_n - i b_n) / 2) e^(i omega_n t)$.
$f(t) = ((a_0 - i b_0) / 2) e^(i omega_0 t) + sum_(n=1)^infinity ((a_n - i b_n) / 2) e^(i omega_n t) + sum_(n = -1)^(-infinity) ((a_n - i b_n) / 2) e^(i omega_n t)$.
$f(t) = sum_(-infinity)^(infinity) C_n e^(i omega_n t)$, onde $C_n = (a_n - i b_n) / 2$.
$C_n = (a_n - i b_n) / 2 = (1 / 2) (2 / T integral_0^T f(t) cos(omega_n t) dif t - (2i) / T integral_0^T f(t) sin(omega_n t) dif t)$
$C_n = 1 / T integral_0^T f(t) e^(-i omega_n t) dif t$
$overline(C_n) = C_(-n)$


= Diagramas de Espectro

Escrevemos $C_n = |C_n| e^(i phi n)$.

+ O gráfico discreto de $|C_n|$ em termos de $omega_n$ é o diagrama de espectro de amplitudes.
+ O gráfico discreto de $phi_n$ em termos de $omega_n$ é o diagrama de espectro de fases.

*Gráficos não anotados do quadro - deve ter no REAMAT* (Foto 1)

#example[
  *Gráfico da função* (Foto 2)
  $T = 4, omega_n = (pi / 2)n$.
  $f(t)$ não é par nem ímpar.
  $a_0 = 2 / 4 integral_0^4 f(t) dif t = 1 / 2$.
  $a_n = sin((pi n) / 2) / (pi n) = cases(0 "se" n "par", ((-1)^((n - 1) / 2)) / (2pi) "se" n "ímpar")$.
  $b_n = (1 - cos((pi / 2)n)) / (pi n) = cases(1 / (pi n) "se" n "ímpar", (1 - (-1)^(n / 2)) / (pi n), "se" n "par")$.
  $A_0 = 1 / 4$.
  $cases(cos(Delta_1) = sqrt(2) / 2, sin(Delta_1) = sqrt(2) / 2) => Delta_1 = pi / 4$.
  $Delta_2 = pi / 2$.
  $C_0 = (a_0 - i b_0) / 2 = 1 / 4$.
  $C_1 = (1 - i) / 2pi$.
  $C_2 = -i / 2pi$...
  
  *Foto da tabela*
]

#remark[Saber resolver módulo e fase de números complexos.]

#exercise[$f(t) = sin(t) + cos(t) + sin(2t)$]

#remark[Conjugado troca somente sinal da parte imaginária.]

#remark[Prova pode pedir qual é a série dados os diagramas de espectro de fases e de amplitudes. Isso dá a forma exponencial da série, que posteriormente pode ser convertida para as outras formar se necessário.]
