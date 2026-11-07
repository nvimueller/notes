#import "src/template.typ": *

#show: conf

#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set page(paper: "a4")
#set par(justify: true)

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

#exercise[Prove que o período fundamental de $sin(omega t)$ é $(2pi) / omega$ e que sua frequência angular é $omega$.]

#proof[

  Aplicando a definição de período, temos que $sin(omega t) = sin(omega t + omega T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$. Substituindo as variáveis $a$ e $b$, temos que $sin(omega t + omega T) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Igualando os senos, temos que $sin(omega t) = sin(omega t)cos(omega T) + sin(omega T)cos(omega t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / (2omega)$ temos o sistema $ cases(sin(omega T) = 0, cos(omega T) = 1) $ Desse modo, para que $sin(omega T) = 0$, $omega T$ precisa ser da forma $n pi$, $n >= 0$. Por outro lado, para que $cos(omega T) = 1$, $omega T$ precisa ser da forma $2n pi$, $n >= 0$. Finalmente, $omega T = 2n pi => T = (2n pi) / omega$. O período fundamental será, portanto, $T = (2pi) / omega$.
]

#exercise[Encontre o período de $sin(omega_1 t) + sin(omega_2 t)$.]

#solution[

  Período do $sin(omega_1 t) -> T_1 = ((2pi)/omega_1)n$, $n >= 1$.

  Período do $sin(omega_2 t) -> T_2 = ((2pi)/omega_2)m$, $m >= 1$.

  Se existirem $m$ e $n$ tal que $T_1 = T_2$, a soma é periódica, isto é: $((2pi) / omega_1)n = ((2pi) / omega_2)m => omega_2 / omega_1 = m / n$.
]

#remark[$sin(pi t) + sin(t)$ não é periódica, pois $1/pi = m/n$ não possui solução em $QQ$.]

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

$ f(t) = a_0/2 + sum_n=1^N a_n cos(w_n t) + b_n sin(w_n t), w_n = ((2pi) / T)n $

== Série Trigonométrica

$ f(t) = a_0/2 + sum_n=1^infinity a_n cos(w_n t) + b_n sin(w_n t), w_n = ((2pi) / T)n $

#theorem(title: "Relações de Ortogonalidade")[
  + $integral_0^T sin((2pi) / T)n t sin((2pi) / T)m t dif t = cases(0 "if" m = n = 0, T / 2 "if" m = n != 0, 0, m != n)$
  + $integral_0^T cos((2pi) / T)n t cos((2pi) / T)m t dif t = cases(0 "if" m = n = 0, T / 2 "if" m = n != 0, 0, m != n)$
  + $integral_0^T cos((2pi) / T)n t sin((2pi) / T)m t dif t = 0$
]

#remark[$sin(a)sin(b) = (cos(a - b) - cos(a + b)) / 2$]

#proof[
  $integral_0^T sin((2pi) / T)n t sin((2pi) / T)m t dif t = 1 / 2 integral_0^T (cos(((2pi) / T)(n - m)t) - cos(((2pi) / T)(n + m)t)) / 2 dif t$

  Se $n = m = 0$, o resultado é zero. Se $m = n != 0$, $ = 1 / 2 integral_0^T (1 - cos(((4pi) / T)n t)) dif t = T / 2$.

  Se $n != m$, então a integral dos senos será $= 0$.
]

#exercise[Demonstre 1 e 2.]

#theorem[

  Se uma função admitir uma representação da forma

  $ f(t) = a_0/2 + sum_n=1^infinity a_n cos(w_n t) + b_n sin(w_n t), w_n = ((2pi) / T)n $

  Então $a_0 = 2 / T integral_0^T f(t) dif t$

  $a_n = 2 / T integral_0^T f(t) cos(w_n t) dif t$, $n >= 1$

  $b_n = 2 / T integral_0^T f(t) sin(w_n t) dif t$, $n >= 1$

  $a_0$, $a_n$ e $b_n$ são os coeficientes de Fourier.
]

#proof[
  $integral_0^T f(t)cos(w_m t) dif t = integral_0^T ((a_0 cos(w_m t)) / 2) dif t + sum_n=1^infinity a_n integral_0^T (cos(w_n t)cos(w_m t)) dif t + b_n integral_0^T (sin(w_n t)cos(w_m t)) dif t$

  $ => m >= 1 $ -- Teorema da Ortogonalidade

  $ integral_0^T f(t)cos(w_m t) dif t = (a_m T) / 2 $
]

#exercise[Demonstre $a_0$ e $b_n$.]

#definition[Uma série trigonométrica convergente é uma série de Fourier.]

#theorem[
  Se $f(t)$ é periódica, suave por partes e descontínua por saltos apenas em um número finito em cada período, então a série de Fourier existe e converge para $(f(t^+) + f(t^-)) / 2$
]

#example[
  

]
