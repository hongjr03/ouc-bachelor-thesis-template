#import "@preview/pointless-size:0.1.2": zh

// https://forum.typst.app/t/is-there-any-simple-way-of-creating-a-three-line-table-like-latex/1193/8

#let continue-table = state("continue-table")

#let three-line-table = it => {


  if it.children.any(c => c.func() == table.hline) {
    return it
  }

  let toprule = table.hline(stroke: 0.08em)
  let bottomrule = toprule
  let midrule = table.hline(stroke: 0.05em)

  let meta = it.fields()
  meta.stroke = none
  meta.remove("children")

  let header = it.children.find(c => c.func() == table.header)
  let cells = it.children.filter(c => c.func() == table.cell)
  if header == none {
    let columns = meta.columns.len()
    header = table.header(
      table.cell(colspan: columns, {
        context if continue-table.get() != none {
          place(right + top, dy: -1.4em)[
            #set text(size: zh("五号"))
            续表#(query(figure.where(kind: table).before(here())).last().numbering)(none)
          ]
          v(-0.8em)
        } else {
          v(-0.8em)
          continue-table.update(true)
        }
      }),
      ..cells.slice(0, columns),
    )
    cells = cells.slice(columns)
  }

  return table(
    ..meta,
    toprule,
    header,
    midrule,
    ..cells,
    bottomrule,
  )
}
