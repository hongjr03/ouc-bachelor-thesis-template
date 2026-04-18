#import "components/cover.typ": cover
#import "components/abstract.typ": abstract
#import "components/outline.typ": outline
#import "components/acknowledgments.typ": acknowledgments
#import "@preview/pointless-size:0.1.2": zh
#import "utils/chapnum.typ": chap-num
#import "utils/three-line-table.typ": three-line-table

#let project(
  title: (:),
  author: "",
  student-id: "",
  advisor: "",
  college: "",
  department: "",
  abstract-content: (:),
  keywords: (:),
  body,
) = {
  set text(lang: "zh", region: "cn")
  set par(leading: 24pt, spacing: 24pt)

  cover(
    title: title.zh,
    author: author,
    student-id: student-id,
    advisor: advisor,
    college: college,
    department: department,
  )

  // 摘要
  abstract(
    title: title,
    abstract: abstract-content,
    keywords: keywords,
  )

  outline()

  show: chap-num
  counter(page).update(1)
  set page(
    header: block(width: 100%, stroke: (bottom: .5pt), align(center, text(size: zh("小五"), title.zh))),
  )

  set heading(numbering: "1.1")
  show heading: it => {
    set text(font: "SimHei")
    set block(spacing: 1.5em)
    if it.level == 1 {
      set text(size: zh("三号"))
      it
    } else {
      set text(size: zh("四号"))
      it
    }
  }

  set text(font: ((name: "Times New Roman", covers: "latin-in-cjk"), "SimSun"), size: zh("小四"))
  set par(first-line-indent: (amount: 2em, all: true))

  show figure.where(kind: table): set figure.caption(position: top)

  show table: three-line-table

  body
}
