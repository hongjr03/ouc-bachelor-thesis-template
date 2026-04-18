#import "components/cover.typ": cover
#import "components/abstract.typ": abstract
#import "components/outline.typ": outline
#import "components/bibliography.typ": bibliography
#import "components/acknowledgments.typ": acknowledgments
#import "utils/style.typ": apply-style, global-style
#import "utils/fonts.typ": fonts as default-fonts, setup-fonts
#import "@preview/valkyrie:0.2.2" as z

#let info-schema = z.dictionary((
  title: z.dictionary((
    zh: z.string(),
    en: z.string(),
  )),
  author: z.string(),
  student-id: z.string(),
  advisor: z.string(),
  college: z.string(),
  department: z.string(),
  abstract-content: z.dictionary((
    zh: z.any(),
    en: z.any(),
  )),
  keywords: z.dictionary((
    zh: z.array(z.string()),
    en: z.array(z.string()),
  )),
))

#let project(
  title: (:),
  author: "",
  student-id: "",
  advisor: "",
  college: "",
  department: "",
  abstract-content: (:),
  keywords: (:),
  fonts: default-fonts,
  body,
) = {
  let _ = z.parse(
    (
      title: title,
      author: author,
      student-id: student-id,
      advisor: advisor,
      college: college,
      department: department,
      abstract-content: abstract-content,
      keywords: keywords,
    ),
    info-schema,
  )

  // 把传入的纯字体名称转换为带有中西文 fallback 配置的实际可用字体数组
  let resolved-fonts = setup-fonts(fonts)

  // 封面
  cover(
    title: title.zh,
    author: author,
    student-id: student-id,
    advisor: advisor,
    college: college,
    department: department,
    fonts: resolved-fonts,
  )

  // 全局样式
  show: global-style.with(fonts: resolved-fonts)

  // 摘要
  abstract(
    title: title,
    abstract: abstract-content,
    keywords: keywords,
    fonts: resolved-fonts,
  )

  // 目录
  outline()

  // 正文样式与内容
  show: apply-style.with(title: title.zh)

  body
}
