#import "@preview/pointless-size:0.1.2": zh

#let bibliography(
  bib-file,
) = {
  std.bibliography("/" + bib-file, style: "gb-7714-2015-numeric")
}
