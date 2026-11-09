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
  O período de $sin(2t)$ é $T_1 = ((2pi) / 2)n = pi n$, $n >= 1$. Já o período de $sin(6t)$ é $T_2 = ((2pi) / 6)m = (pi / 3)m$, $m >= 1$. Se existirem $n$ e $m$ $in ZZ$ tal que $T_1 = T_2$, a soma é periódica, isto é: $pi n = (pi / 3)m => 3 = m / n$. De fato, $n = 1$ e $m = 3$. O período fundamental será, portanto, $T = pi$. Já a frequência angular será $omega = (2pi) / pi = 2$.
]

#remark[Para a soma de funções trigonométricas com frequências angulares comensuráveis $omega_1$ e $omega_2$, a frequência angular resultante é $omega = op("mdc")(omega_1, omega_2)$, com período $T = (2pi) / op("mdc")(omega_1, omega_2)$. Como regra geral para funções periódicas, o período fundamental composto é dado pelo mínimo múltiplo comum dos períodos individuais: $T = op("mmc")(T_1, T_2)$.]

#theorem[Se $f$ é $T$-periódica e integrável, então $integral_x^(x+T) f(t) dif t = integral_0^T f(t) dif t$.]

#proof[
  Seja $I(x) = integral_x^(x+T) f(t) dif t$. Derivando, temos $I'(x) = f(x+T) - f(x)$ pela Regra de Leibniz. Como $f(x)$ é $T$-periódica, então $f(x+T) = f(x)$. Com isso temos que $I'(x) = 0$. Se a derivada de uma função é zero em todos os pontos, quer dizer que $I(x)$ é uma constante. Logo, como o valor da integral é o mesmo independentemente do valor de $x$, podemos escolher um valor conveniente $x = 0$. Portanto, $I(x) = I(0) = integral_0^T f(t) dif t$.
]

== Polinômio Trigonométrico

#definition[$f(t) = a_0 / 2 + sum_(n=1)^N (a_n cos(omega_n t) + b_n sin(omega_n t))$, onde $omega_n = (2pi n) / T$.]

== Série Trigonométrica

#definition[$f(t) = a_0 / 2 + sum_(n=1)^infinity (a_n cos(omega_n t) + b_n sin(omega_n t))$, onde $omega_n = (2pi n) / T$.]

#theorem[
  #set enum(spacing: 1.5em)
  1. $integral_0^T sin((2 pi n t) / T) sin((2 pi m t) / T) dif t = cases(0 "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  
  2. $integral_0^T cos((2 pi n t) / T) cos((2 pi m t) / T) dif t = cases(T "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  
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
  Se uma função admitir uma representação da forma de uma série trigonométrica, então os seus coeficientes são dados por:
  #set enum(spacing: 2em)
  - $a_0 = 2 / T integral_0^T f(t) dif t$.

  - $a_n = 2 / T integral_0^T f(t) cos(omega_n t) dif t$, para $n >= 1$.
 
  - $b_n = 2 / T integral_0^T f(t) sin(omega_n t) dif t$, para $n >= 1$.
]

#definition[$a_0$, $a_n$ e $b_n$ são os coeficientes de Fourier.]

#exercise[Demonstre o cálculo dos coeficientes $a_0$ e $b_n$.]

#definition[Uma série trigonométrica convergente é uma série de Fourier.]

#theorem[Se $f(t)$ é periódica, suave por partes e descontínua por saltos apenas em um número finito de pontos em cada período, então a série de Fourier existe e converge para $(f(t^+) + f(t^-)) / 2$.]

#example[Para a onda Dente de Serra $f(t) = t$, $T = 1$ e $omega_n = 2pi n$. Assim:
  - $a_0 = 1$
  - $a_n = 0$, $n >= 1$
  - $b_n = -1 / (pi n)$, $n >= 1$
  Logo, $f(t) = 1 / 2 - (1 / pi)sin(2pi t) - (1 / 2pi)sin(4pi t) - ...$
]


#definition[Uma função é denominada par se

  função sempre positiva não pode ser ímpar]

#definition[paridade par é espelhamento no eixo x]

== Forma Harmônica

#definition[$f(t) = A_0 + sum_(n = 1)^infinity A_n cos(omega_n t - phi_n) = f(t) = A_0 + sum_(n = 1)^infinity A_n (cos(omega_n t)cos(phi_n) + sin(omega_n t)sin(phi_n)) = f(t) = a_0 / 2 + sum_(n=1)^infinity (a_n cos(omega_n t) + b_n sin(omega_n t))$, onde:
  - $A_0 = a_0 / 2$
  - $a_n = A_n cos(phi_n)$
  - $b_n = A_n sin(phi_n)$
  - $A_n = + sqrt((a_n)^2 + (b_n)^2)$
  - $cases(cos(phi_n) = a_n / A_n, sin(phi_n) = b_n / A_n$
]

#example[Para a onda dente de serra em forma harmônica. Temos que $A_n = 1 / (pi n)$

  - $cases(cos(phi_n) = 0 / A_n, sin(phi_n) = -1 => phi_n = (3pi / 2)$
  Logo, f(t) = 

]
