#import "src/template.typ": *

#show: conf

#set text(font: "New Computer Modern", size: 10pt, lang: "pt", region: "br")
#set page(paper: "a4")
#set par(leading: 0.5em, justify: true)

#exercise[Cite três características das máquinas RISC que foram adotadas por quase todas as arquiteturas de CPU atuais.]

#solution[Arquitetura load-store, tamanho fixo de instruções, favorecimento de instruções mais elementares porém mais rápidas.]

#exercise[
  Um programa executa 1 bilhão de instruções MIPS. Destas, $30%$ são LW, $15%$ SW, $25%$ BEQ e $30%$ são do tipo-R. Para as respostas, basta montar as equações, indicando o que significa cada termo.
  + Qual o tempo de execução em um processador monociclo com período de $5 "ns"$?
  + Qual o tempo de execução em um processador multiciclo com período de $1,5 "ns"$? Considere que o controle da execução é feito pelo diagrama de estados na figura 3.
  + Qual o tempo de execução para um processador pipeline com período de $1,5 "ns"$? Considere, neste caso, que BEQs são decididos sem previsão de desvios, e que a decisão do salto é calculado no terceiro estágio.
  + Um arquiteto sugeriu trazer a decisão do salto para o segundo estágio, usando um comparador logo à saída do banco de registradores. Esta modificação, contudo, eleva o tempo de ciclo em $10%$. Esta modificação vale a pena? Justifique.
]

#solution[
  + $T = 10^9 times 1 times 5 times 10^(-9) = 5 "s"$.
  + $T = 10^9 times (0.3 times 5 + 0.15 times 4 + 0.25 times 3 + 0.3 times 4) times 1.5 times 10^(-9) = 6.07 "s"$.
  + $T = 10^9 times (0.75 times 1 + 0.25 times 3) times 1.5 times 10^(-9) = 2.25 "s"$.
  + $T = 10^9 times (0.75 times 1 + 0.25 times 2) times (1.5 times 1.1) times 10^(-9) = 2.06 "s"$. Vale a pena. 
]

#remark[A intuição geométrica de penalidade consiste no cálculo de um novo CPI. Uma penalidade implica em um aumento do número de ciclos para executar uma certa instrução. O número de instruções, denominador do CPI, continua o mesmo. O número de ciclos -- que podemos pensar como o novo número de instruções ou linhas do diagrama do pipeline -- aumenta com a penalidade. Usemoos o exemplo da primeira questão quanto ao atraso de dois ciclos por instrução BEQ. O número de instruções permananece $10^9$. Porém, o número de ciclos -- ou linhas de instruções -- aumenta em dois a cada $25%$ das instruções, isto é, $75%$ das instruções leva um ciclo, enquanto $25%$ levam três ciclos -- um ciclo devido ao pipeline ideal acrescido de dois ciclos de penalidade.]
Explicar intuição geométrica.
#exercise[


]

#exercise[]

#solution[

]

