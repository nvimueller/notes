#import "@preview/zap:0.6.0"
#import "src/template.typ": *

#set page(margin: 2cm, paper: "a4")
#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set par(justify: true)

#exercise[Usando o método das tensões nodais, determinar a tensão $V_0$ do circuito abaixo.]

#align(center)[
  #zap.circuit({
    import zap: *

    vsource("source", (0, 0), (0, 3), label: (content: $15V$, anchor: "north"), polarity: true, variant: "ieee")
    vsource("dependent", (6, 3), (4, 3), label: (content: $5V_Delta$, anchor: "south"), polarity: true, variant: "ieee", dependent: true)

    resistor("r1", (2, 3), (2, 0), label: $33 Omega$, variant: "ieee")
    resistor("r2", (2, 3), (4, 3), label: $10 Omega$, variant: "ieee")
    resistor("r3", (4, 3), (4, 0), label: $2 Omega$, variant: "ieee")
    resistor("r4", (6, 3), (6, 0), label: $20 Omega$, variant: "ieee")
    resistor("r5", (8, 3), (8, 0), label: $40 Omega$, variant: "ieee")

    wire((0, 3), (2, 3))
    wire((0, 0), (8, 0))
    wire((6, 3), (8, 3))
  })
]

#remark[$V_0$ é a polaridade do resistor de $40 Omega$ e $V_Delta$ é a polaridade do resistor de $2 Omega$.]

#solution[

  Temos a equação do supernó: $ (15 - V_Delta)/10 = V_Delta/2 + V_0/20 + V_0/40 $
  E sua equação de restrição: $ V_Delta - V_0 = 5V_Delta $
  Disso temos que: $ V_0 = -20V $
]

#exercise[Verifique a solução anterior determinando o equivalente de Thévenin para o circuito nos terminais do resistor de $40 Omega$.]

#align(center)[
  #zap.circuit({
    import zap: *

    vsource("source", (0, 0), (0, 3), label: (content: $15V$, anchor: "north"), polarity: true, variant: "ieee")
    vsource("dependent", (6, 3), (4, 3), label: (content: $5V_Delta$, anchor: "south"), polarity: true, variant: "ieee", dependent: true)

    resistor("r1", (2, 3), (2, 0), label: $33Omega$, variant: "ieee")
    resistor("r2", (2, 3), (4, 3), label: $10Omega$, variant: "ieee")
    resistor("r3", (4, 3), (4, 0), label: $2Omega$, variant: "ieee")
    resistor("r4", (6, 3), (6, 0), label: $20Omega$, variant: "ieee")

    wire((0, 3), (2, 3))
    wire((0, 0), (8, 0))
    wire((6, 3), (8, 3))
  })
]

#solution[
  
  Temos a equação do supernó: $ (15 - V_Delta)/10 = V_Delta/2 + V_"th"/20 $
  E sua equação de restrição: $ V_Delta - V_"th" = 5V_Delta $
  Disso temos que: $ V_"th" = -15V $
  Agora, podemos encontrar $I_"sc"$ com o circuito trabalhando com três malhas:

  #align(center)[
    #zap.circuit({
      import zap: *

    vsource("source", (0, 0), (0, 3), label: (content: $15V$, anchor: "north"), polarity: true, variant: "ieee")
    vsource("dependent", (6, 3), (4, 3), label: (content: $5V_Delta$, anchor: "south"), polarity: true, variant: "ieee", dependent: true)

    resistor("r1", (2, 3), (2, 0), label: $33 Omega$, variant: "ieee")
    resistor("r2", (2, 3), (4, 3), label: $10 Omega$, variant: "ieee")
    resistor("r3", (4, 3), (4, 0), label: $2 Omega$, variant: "ieee")

    wire((0, 3), (2, 3))
    wire((0, 0), (6, 0))
    wire((6,0), (6,3))
  })
  ]

  Temos as malhas:
  $ -33I_1 + 33I_2 = -15 $
  $ 33I_1 - 45I_2 + 2I_3 = 0 $
  $ -8I_2 + 8I_3 = 0 $
  Disso temos que: $ I_3 = 3/2A $
  Logo: $ R_"th" = -10 Omega $
  Resultando no circuito:
   #align(center)[
    #zap.circuit({
      import zap: *

      vsource("source", (0, 0), (0, 3), label: (content: $-15V$, anchor: "north"), polarity: true, variant: "ieee")

      resistor("r1", (0, 3), (2, 3), label: $-10 Omega$, variant: "ieee")
      resistor("r2", (2, 3), (2, 0), label: $40 Omega$, variant: "ieee")

      wire((0, 0), (2, 0))
    })
  ]

  Para agora obter a tensão no resistor de $40 Omega$, fazemos uma malha:
  $ -30I = 15 $
  Achando: $ I = -0,5A $
  No terminal superior do resistor: $ -15 - (-10)(-0,5) =  -20V $
  No terminal inferior do resistor: $ (-20 - V_b) / 40 = -0,5 $
  $ V_b = 0V $
  De fato: $ V_0 = -20V $
]

#exercise[Indicar como o balanço de potência pode ser obtido.]

#solution[

  $P_(15V) = 15I = 15(15/33 + (15 - V_Delta) / 10) = 15(15/33 + 33/33) = 15(48/33) = 21,81 W$\
  
  $P_(5V_Delta) = 25I = 25(20/20 + 20/40) = 37,5W $\
 
  $P_(10Omega) = (15-5)^2 / 10 = -10W $\
  
  $P_(33Omega) = 15^2/33 = -6,81W$\
  
  $P_(2Omega) = 5^2 / 2 = -12,5W$\
  
  $P_(20Omega) = 40^2 / 20 = -20W$\
  
  $P_(40Omega) = 40^2 / 40 = -10W$\
]
