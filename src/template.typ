#let thm-counter = counter("theorem")

#let conf(body) = {
  set page(paper: "a4", margin: 2.5cm, numbering: "1")
  set text(font: "New Computer Modern", size: 10pt)
  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    thm-counter.update(0)
    block(above: 2em, below: 1.5em)[
      #set text(size: 1.35em, weight: "bold", fill: rgb("#1d3557")) 
      #if it.numbering != none [
        #box(fill: rgb("#457b9d"), inset: (x: 8pt, y: 6pt), radius: 4pt, text(fill: white)[#counter(heading).display()])
        #h(0.5em)
      ]
      #it.body
    ]
  }

  show heading.where(level: 2): it => block(above: 1.5em, below: 1em)[
    #set text(size: 1.18em, weight: "bold", fill: rgb("#2b2d42"))
    #if it.numbering != none [
      #text(fill: rgb("#457b9d"))[#counter(heading).display()]
      #h(0.4em)
      #box(width: 2.5pt, height: 0.9em, fill: rgb("#457b9d"), baseline: 15%, radius: 2pt)
      #h(0.4em)
    ]
    #it.body
  ]

  body
}

#let thmbox(kind, base-color, title, body, numbered: true) = block(
  fill: base-color.lighten(90%),
  stroke: (left: 4pt + base-color, rest: 0.5pt + base-color.lighten(40%)),
  inset: (x: 14pt, y: 12pt),
  radius: 4pt, 
  width: 100%,
  above: 1.2em, below: 1.2em,
  [
    #if numbered [#thm-counter.step()]
    #text(weight: "bold", fill: base-color.darken(10%))[
      #kind #if numbered [#context {
        let h1 = counter(heading).get().at(0, default: 0)
        let thm-num = thm-counter.get().first()
        if h1 > 0 [#(str(h1) + "." + str(thm-num))] else [#thm-num]
      }] #if title != "" [ (#title)].
    ]
    #h(0.4em)
    #body
  ]
)

#let theorem(title: "", body) = thmbox("Teorema", rgb("#457b9d"), title, body, numbered: true)
#let lemma(title: "", body) = thmbox("Lema", rgb("#2a9d8f"), title, body, numbered: true) 
#let definition(title: "", body) = thmbox("Definição", rgb("#6d597a"), title, body, numbered: true)
#let corollary(title: "", body) = thmbox("Corolário", rgb("#e76f51"), title, body, numbered: true) 
#let example(title: "", body) = thmbox("Exemplo", rgb("#588157"), title, body, numbered: false) 
#let remark(title: "", body) = thmbox("Observação", rgb("#d62828"), title, body, numbered: false)
#let exercise(title: "", body) = thmbox("Questão", rgb("#3d5a80"), title, body, numbered: true)

#let proof(body) = block(
  fill: rgb("#f8f9fa"), stroke: (left: 4pt + rgb("#8d99ae"), rest: 0.5pt + rgb("#edf2f4")),
  inset: (x: 14pt, y: 12pt), radius: 4pt, width: 100%, above: 1.2em, below: 1.2em,
  [
    #text(weight: "bold", fill: rgb("#2b2d42"))[Prova.]
    #h(0.4em) #body #h(1fr) $square$
  ]
)

#let solution(body) = block(
  fill: rgb("#f6fff8"), stroke: (left: 4pt + rgb("#81b29a"), rest: 0.5pt + rgb("#d8e2dc")),
  inset: (x: 14pt, y: 12pt), radius: 4pt, width: 100%, above: 1.2em, below: 1.2em,
  [
    #text(weight: "bold", fill: rgb("#344e41"))[Solução.]
    #h(0.4em) #body
  ]
)
