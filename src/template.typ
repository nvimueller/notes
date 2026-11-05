#let thm-counter = counter("theorem")

#let thmbox(kind, bg-color, border-color, title, body, numbered: true) = {
  block(
    fill: bg-color,
    stroke: (left: 4pt + border-color, rest: 0.5pt + border-color.lighten(40%)),
    inset: (x: 16pt, y: 12pt),
    radius: 4pt,
    width: 100%,
    [
      #if numbered [
        #thm-counter.step()
        #text(weight: "bold", fill: border-color.darken(20%))[#kind #context thm-counter.display()]#if title != "" [ (#title)]#text(weight: "bold", fill: border-color.darken(20%))[.] 
      ] else [
        #text(weight: "bold", fill: border-color.darken(20%))[#kind]#if title != "" [ (#title)]#text(weight: "bold", fill: border-color.darken(20%))[.]
      ]
      #h(0.4em)
      #body
    ]
  )
}

#let theorem(title: "", body) = thmbox("Teorema", rgb("#eff6ff"), rgb("#1d4ed8"), title, body, numbered: true)
#let lemma(title: "", body) = thmbox("Lema", rgb("#f0fdf4"), rgb("#0f766e"), title, body, numbered: true)
#let definition(title: "", body) = thmbox("Definição", rgb("#faf5ff"), rgb("#7e22ce"), title, body, numbered: true)
#let corollary(title: "", body) = thmbox("Corolário", rgb("#fffbeb"), rgb("#b45309"), title, body, numbered: true)
#let example(title: "", body) = thmbox("Exemplo", rgb("#f0fdf4"), rgb("#15803d"), title, body, numbered: false)
#let remark(title: "", body) = thmbox("Observação", rgb("#fff1f2"), rgb("#be123c"), title, body, numbered: false)
#let exercise(title: "", body) = thmbox("Questão", rgb("#eef2ff"), rgb("#4338ca"), title, body, numbered: true)

#let solution(body) = block(
  fill: rgb("#f0fdf4"),
  stroke: (left: 4pt + rgb("#059669"), rest: 0.5pt + rgb("#a7f3d0")),
  inset: (x: 16pt, y: 12pt),
  radius: 4pt,
  width: 100%,
  [
    #text(weight: "bold", fill: rgb("#047857"))[Solução.]
    #h(0.4em)
    #body
  ]
)

#let proof(body) = block(
  fill: rgb("#f8fafc"),
  stroke: (left: 4pt + rgb("#64748b"), rest: 0.5pt + rgb("#cbd5e1")),
  inset: (x: 16pt, y: 12pt),
  radius: 4pt,
  width: 100%,
  [
    #text(weight: "bold", fill: rgb("#334155"))[Prova.]
    #h(0.4em)
    #body
    #h(1fr) $square$
  ]
)

#set heading(numbering: "1.1")
#set text(font: "New Computer Modern", size: 10pt)

#show heading.where(level: 1): set text(size: 1.35em, weight: "bold")
#show heading.where(level: 2): set text(size: 1.18em, weight: "bold")
#show heading.where(level: 3): set text(size: 1.05em, weight: "bold")
#show heading: set block(above: 1.4em, below: 0.8em)
