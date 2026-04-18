#import "components/cover.typ": cover
#import "components/abstract.typ": abstract
#import "components/outline.typ": outline
#import "utils/style.typ": apply-style, global-style
#import "utils/fonts.typ": 字体 as 默认字体, setup-fonts

#let project(
  title: (:),
  author: "",
  student-id: "",
  advisor: "",
  college: "",
  department: "",
  abstract-content: (:),
  keywords: (:),
  fonts: 默认字体,
  body,
) = {
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