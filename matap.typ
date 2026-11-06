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
- A frequência angular fundamental é $w = (2pi)/T$.
]

#example[$f(t) = 1$ não possui período fundamental.]

#exercise[Prove que o período fundamental de $sin(w t)$ é $(2pi) / w$.]

#proof[

  Aplicando a definição de período, temos que $sin(w t) = sin(w t + w T)$, $T > 0$. Utilizando a identidade trigonométrica, temos que $sin(a + b) = sin(a)cos(b) + sin(b)cos(a)$. Substituindo as variáveis $a$ e $b$, temos que $sin(w t + w T) = sin(w t)cos(w T) + sin(w T)cos(w t)$. Igualando os senos, temos que $sin(w t) = sin(w t)cos(w T) + sin(w T)cos(w t)$. Com uma avaliação em pontos convenientes como $t = 0$ e $t = pi / (2w)$ temos o sistema $ cases(sin(w T) = 0, cos(w T) = 1) $ Desse modo, para que $sin(w T) = 0$, $w T$ precisa ser da forma $n pi$, $n >= 0$. Por outro lado, para que $cos(w T) = 1$, $w T$ precisa ser da forma $2n pi$, $n >= 0$. Finalmente, $w T = 2n pi => T = (2n pi) / w$. O período fundamental será, portanto, $T = (2pi) / w$.]
    $sin(w t) = sin(w(t + T))$

    Em especial, se $t = 0$, temos $sin(w T) = sin(0) = 0 => w T = n pi$, $n > 0$

    Então, $T = n pi / w$


  Candidatos a período são $pi/w$, $(2pi)/w$, $(3pi)/w$, ...

  Observe que $pi/w$ não é período, pois se $t = pi/(2w)$, temos $ sin(w pi/(2w)) != sin(w(pi/2w + pi/w)) = -1 $

  Também observe que $ sin(w t) = sin(w(t + (2pi/w)))$
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
