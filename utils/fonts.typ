#let fonts = (
  // 宋体
  宋体: "SimSun",
  // 黑体
  黑体: "SimHei",
  // 楷体
  楷体: "KaiTi",
  // 仿宋
  仿宋: "FangSong",
  // 纯西文字体
  西文: "Times New Roman",
  // 等宽字体
  等宽: ("Courier New", "SimSun"),
  // 微软雅黑
  雅黑: "Microsoft YaHei",
)

#let setup-fonts(fonts) = (
  宋体: ((name: fonts.西文, covers: "latin-in-cjk"), fonts.宋体),
  黑体: ((name: fonts.西文, covers: "latin-in-cjk"), fonts.黑体),
  楷体: ((name: fonts.西文, covers: "latin-in-cjk"), fonts.楷体),
  仿宋: ((name: fonts.西文, covers: "latin-in-cjk"), fonts.仿宋),
  西文: fonts.西文,
  等宽: fonts.等宽,
  雅黑: fonts.雅黑,
)
