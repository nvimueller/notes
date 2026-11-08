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
  Aplicando a definição de período, temos que $cos(t) = cos(t + T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $cos(a + b) = cos(a)cos(b) - sin(b)sin(a)$. Substituindo as variáveis $a$ e $b$, temos que $cos(t + T) = cos(t)cos(T) - sin(T)sin(t)$. Igualando os cossenos, temos que $cos(t) = cos(t)cos(T) - sin(T)sin(t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / 2$, temos o sistema $ cases(cos(T) = 1, sin(T) = 0) $ Desse modo, temos que $T$ precisa ser da forma $2n pi$, $n >= 1$. Finalmente, $T = 2n pi$. O período fundamental será, portanto, $T = 2pi$. Já a frequência angular será $(2pi) / (2pi) = 1$.
]

#exercise[Prove que o período fundamental de $sin(omega t)$ é $(2pi) / omega$ e que sua frequência angular é $omega$.]

#remark[$sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$.]

#proof[
  Aplicando a definição de período, temos que $sin(omega t) = sin(omega t + omega T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$. Substituindo as variáveis $a$ e $b$, temos que $sin(omega t + omega T) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Igualando os senos, temos que $sin(omega t) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / (2omega)$ temos o sistema $ cases(sin(omega T) = 0, cos(omega T) = 1) $ Desse modo, para que $sin(omega T) = 0$, $omega T$ precisa ser da forma $n pi$, $n >= 0$. Por outro lado, para que $cos(omega T) = 1$, $omega T$ precisa ser da forma $2n pi$, $n >= 0$. Finalmente, $omega T = 2n pi => T = (2n pi) / omega$. O período fundamental será, portanto, $T = (2pi) / omega$. Já a frequência angular será $(2pi) / ((2pi) / omega) = omega$.
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
  O período de $sin(2t)$ é $T_1 = ((2pi) / 2)n = pi n$, $n >= 1$. Já o período de $sin(6t)$ é $T_2 = ((2pi) / 6)m = (pi / 3)m$, $m >= 1$. Se existirem $n$ e $m$ $in ZZ$ tal que $T_1 = T_2$, a soma é periódica, isto é: $pi n = (pi / 3)m => 3 = m / n$. De fato, $n = 1$ e $m = 3$. O período fundamental será, portanto, $T = pi$. Já a frequência angular será $w = (2pi) / pi = 2$.
]

#remark[Para funções trigonométricas, o período $T = (2pi) / "MDC"(omega_1, omega_2)$, enquanto a frequência angular $omega = "MDC"(omega_1, omega_2)$. Note que, de modo geral, $T = "MMC"(T_1, T_2)$.]

#theorem[Se $f$ é $T$-periódica e integrável, então $integral_x^(x+T) f(t) dif t = integral_0^T f(t) dif t$.]

#proof[
  Seja $I(x) = integral_x^(x+T) f(t) dif t$. Derivando, temos $I'(x) = f(x+T) - f(x) = 0$ pela Regra de Leibniz. Como $f(x)$ é $T$-periódica, então $f(x) = f(x + T)$. Com isso temos que $I'(x) = 0$. Se a derivada de uma função é $0$ em todos os pontos, quer dizer que $I(x)$ é uma constante. Logo, como a integral é a mesma independentemente do valor de $x$, podemos escolher um valor conveniente $x = 0$. Portanto, $I(x) = I(0) = integral_0^T f(t) dif t$.
]

== Polinômio Trigonométrico

#definition[$f(t) = a_0 / 2 + sum_(n=1)^N a_n cos(w_n t) + b_n sin(w_n t)$, $w_n = (2pi n) / T$.]

== Série Trigonométrica

#definition[$f(t) = a_0 / 2 + sum_(n=1)^infinity a_n cos(w_n t) + b_n sin(w_n t)$, $w_n = (2pi n) / T$.]

#theorem[
  1. $integral_0^T sin((2 pi n t) / T) sin((2 pi m t) / T) dif t = cases(0 "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  #v(1em) 
  2. $integral_0^T cos((2 pi n t) / T) cos((2 pi m t) / T) dif t = cases(T "if" m = n = 0, T / 2 "if" m = n != 0, 0 "if" m != n)$
  #v(1em) 
  3. $integral_0^T cos((2 pi n t) / T) sin((2 pi m t) / T) dif t = 0$ 
]

#remark[$sin(a)sin(b) = (cos(a - b) - cos(a + b)) / 2$.]

#proof[
  $integral_0^T sin((2pi n t) / T) sin((2pi m t) / T) dif t = 1 / 2 integral_0^T (cos((2pi n t) / T - (2pi m t) / T) - cos((2pi t n t) / T + (2pi m t) / T)) / 2 dif t$. Se $n = m = 0$, o resultado é zero. Se $m = n != 0$, o resultado é $1 / 2 integral_0^T 1 - cos((4pi n t) / T) dif t = T / 2$. Se $n != m$, então o resultado da integral dos senos é zero.
]

#exercise[Demonstre 1 e 2.]

#theorem[
  Se uma função admitir uma representação da forma de uma série trigonométrica, então:
  - $a_0 = 2 / T integral_0^T f(t) dif t$.
  #v(0.5em)
  - $a_n = 2 / T integral_0^T f(t) cos(w_n t) dif t$, $n >= 1$.
  #v(0.5em)
  - $b_n = 2 / T integral_0^T f(t) sin(w_n t) dif t$, $n >= 1$.
]

#definition[$a_0$, $a_n$ e $b_n$ são os coeficientes de Fourier.]

#proof[$integral_0^T f(t) cos(w_m t) dif t = integral_0^T ((a_0 cos(w_m t)) / 2) dif t + sum_(n=1)^infinity a_n integral_0^T cos(w_n t)cos(w_m t) dif t + b_n integral_0^T sin(w_n t)cos(w_m t) dif t$

  $ => m >= 1 $ -- Teorema da Ortogonalidade

  $ integral_0^T f(t)cos(w_m t) dif t = (a_m T) / 2 $
]

#exercise[Demonstre $a_0$ e $b_n$.]

#definition[Uma série trigonométrica convergente é uma série de Fourier.]

#theorem[Se $f(t)$ é periódica, suave por partes e descontínua por saltos apenas em um número finito de pontos em cada período, então a série de Fourier existe e converge para $(f(t^+) + f(t^-)) / 2$.]
