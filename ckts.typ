#import "@preview/zap:0.6.0"
#import "src/template.typ": *

#show: conf

#set page(margin: 2cm, paper: "a4")
#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set par(leading: 1em, justify: true)

#exercise[Usando o método das tensões nodais, determinar a tensão $V_0$ do circuito abaixo.]

#align(center)[
  #zap.circuit({
    import zap: *

    vsource("source", (0, 0), (0, 3), label: (content: $15 thin "V"$, anchor: "north"), polarity: true, variant: "ieee")
    vsource("dependent", (6, 3), (4, 3), label: (content: $5 V_Delta$, anchor: "south"), polarity: true, variant: "ieee", dependent: true)

    resistor("r1", (2, 3), (2, 0), label: (content: $33 Omega$, distance: 2pt), variant: "ieee")
    resistor("r2", (2, 3), (4, 3), label: $10 Omega$, variant: "ieee")
    resistor("r3", (4, 3), (4, 0), label: $2 Omega$, u: (content: $V_Delta$, anchor: "south", label-distance: 8pt, distance: 6pt), variant: "ieee")
    resistor("r4", (6, 3), (6, 0), label: $20 Omega$, variant: "ieee")
    resistor("r5", (8, 3), (8, 0), label: $40 Omega$, u: (content: $V_0$, anchor: "south", label-distance: 8pt, distance: 6pt), variant: "ieee")

    wire((0, 3), (2, 3))
    wire((0, 0), (8, 0))
    wire((6, 3), (8, 3))
  })
]

#remark[$V_0$ é a polaridade do resistor de $40 Omega$ e $V_Delta$ é a polaridade do resistor de $2 Omega$.]

#solution[Temos que a equação do supernó é $(15 - V_Delta)/10 = V_Delta/2 + V_0/20 + V_0/40$ e a equação de restrição da fonte dentro do supernó é $V_Delta - V_0 = 5 V_Delta$. Disso temos que $V_0 = -20"V"$.]

#exercise[Verifique a solução anterior determinando o equivalente de Thévenin para o circuito nos terminais do resistor de $40 Omega$.]

#solution[
  Temos que a equação do supernó é $(15 - V_Delta)/10 = V_Delta/2 + V_"th"/20$ e a equação de restrição da fonte dentro do supernó é $V_Delta - V_"th" = 5 V_Delta$. Disso temos que $V_"th" = -15"V"$. Agora, podemos encontrar $I_"sc"$ com o circuito trabalhando com as malhas $M_1 &-> -33 I_1 + 33 I_2 = -15$, $M_2 &-> 33 I_1 - 45 I_2 + 2 I_3 = 0$ e $M_3 &-> -8 I_2 + 8 I_3 = 0$. Disso temos que $I_3 = 3/2"A"$. Logo $R_"th" = -10 Omega$. Para agora obter a tensão no resistor de $40 Omega$, fazemos uma malha $-30 I = 15 => I = -0,5"A"$. No terminal superior do resistor temos $-15 - (-10)(-0,5) = -20"V"$. No terminal inferior do resistor temos $(-20 - V_b) / 40 &= -0,5 => V_b &= 0"V"$. De fato, $V_0 = -20"V"$.
]

#exercise[Indicar como o balanço de potência pode ser obtido.]

#solution[

  $P_(15"V") = 15 I = 15(15/33 + (15 - V_Delta) / 10) = 15(15/33 + 33/33) = 15(48/33) = 21,81"W"$
  #v(0.5em)
  $P_(5 V_Delta) = 25 I = 25(20/20 + 20/40) = 37,5"W"$
  #v(0.5em)
  $P_(10 Omega) = - (15-5)^2 / 10 = -10"W"$
  #v(0.5em)
  $P_(33 Omega) = - 15^2 / 33 = -6,81"W"$
  #v(0.5em)
  $P_(2 Omega) = - 5^2 / 2 = -12,5"W"$
  #v(0.5em)
  $P_(20 Omega) = - (-20)^2 / 20 = -20"W"$
  #v(0.5em)
  $P_(40 Omega) = -(-20)^2 / 40 = -10"W"$
]
