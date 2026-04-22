#import "@preview/pointless-size:0.1.2": zh
#import "@preview/zebraw:0.6.1": zebraw
#import "@preview/itemize:0.2.0": default-enum-list
#import "chapnum.typ": chap-num
#import "three-line-table.typ": three-line-table
#import "@preview/cuti:0.4.0": fakebold, fakeitalic

#let global-style(
  fonts: (:),
  body,
) = {
  set text(lang: "zh", region: "cn")
  set text(font: fonts.宋体, size: zh("小四"), top-edge: "ascender", bottom-edge: "descender")
  set par(leading: 24pt - zh("小四"), first-line-indent: (amount: 2em, all: true))

  show heading: it => {
    set text(font: fonts.黑体, weight: "bold")
    set block(spacing: 1em)
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

  show raw: set text(font: fonts.等宽)
  show strong: it => context {
    if "simsun" in text.font {
      fakebold(it)
    } else {
      it
    }
  }
  show emph: it => context {
    if "simsun" in text.font {
      fakeitalic(it)
    } else {
      it
    }
  }
  show bibliography: it => pagebreak(weak: true) + it

  body
}

#let apply-style(title: "", body) = {
  show: chap-num

  counter(page).update(1)

  set page(
    header: block(width: 100%, stroke: (bottom: .5pt), inset: (bottom: .15em), align(center, text(
      size: zh("小五"),
      title,
    ))),
    footer: context align(center, {
      set text(size: zh("小五"))
      counter(page).display()
    }),
  )

  set heading(numbering: "1.1")

  show raw.where(block: true): zebraw.with(
    radius: .25em,
    background-color: (luma(245), luma(235)),
    lang: false,
  )

  show: default-enum-list

  body
}
