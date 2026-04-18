#import "@preview/pointless-size:0.1.2": zh
#import "chapnum.typ": chap-num
#import "three-line-table.typ": three-line-table
#import "fonts.typ": 字体

#let global-style(
  fonts: (:),
  body
) = {
  set text(lang: "zh", region: "cn")
  set text(font: fonts.宋体, size: zh("小四"))
  set par(leading: 24pt, spacing: 24pt, first-line-indent: (amount: 2em, all: true))

  show heading: it => {
    set text(font: fonts.黑体, weight: "bold")
    set block(spacing: 1.5em)
    if it.level == 1 {
      set text(size: zh("三号"))
      // Note: headings are block elements so it.body acts normally, but we can set align here:
      if it.numbering != none {
        it
      } else {
        align(center, it)
      }
    } else {
      set text(size: zh("四号"))
      it
    }
  }

  show figure.where(kind: table): set figure.caption(position: top)
  show table: three-line-table

  body
}

#let apply-style(title: "", body) = {
  show: chap-num
  
  counter(page).update(1)
  
  set page(
    header: block(width: 100%, stroke: (bottom: .5pt), align(center, text(size: zh("小五"), title))),
  )

  set heading(numbering: "1.1")

  body
}