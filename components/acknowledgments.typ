#import "@preview/pointless-size:0.1.2": zh

#let acknowledgments(body) = page({
  heading("致谢".clusters().join(" " * 3), numbering: none)
  body
})
