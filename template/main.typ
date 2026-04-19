#import "@preview/unofficial-ouc-bachelor-thesis:0.1.0": acknowledgments, bibliography, project

#show: project.with(
  title: (
    zh: "基于唱跳说唱篮球的舞蹈练习",
    en: "The Practice of Dance Based on Singing, Dancing, Rapping and Basketball",
  ),
  author: "蔡徐坤",
  student-id: "123456789",
  advisor: "唱跳导师",
  college: "信息科学与工程学院",
  department: "计算机科学与技术2017级",
  abstract-content: (
    zh: [
      出道之后，蔡徐坤大部分精力都投身于新歌的创作和专辑的打造。彼时，他需要随着 NINE PERCENT 在三个月内完成 17 场大型巡回见面会，因此写歌的时间必须挤出来。洗澡时、做造型时、飞机上、两个行程间或吃饭的空隙，只要有手机和旋律，任何地方都是他的创作场所；偶尔待在录音室里，甚至成为他的喘息时间。去年，新京报记者见到他时正值午饭，化妆室里传来哼鸣声，采访完的休息时间，我都可以写一段词。我还年轻，我觉得这都 OK。他曾表示。而《1》的发表同样违背偶像市场的规律。蔡徐坤本可以每月发一首，制造更多话题。但他认为，一首首发表并不足以让外界更全面地了解他的音乐风格，当别人都走得很快，我反而要踏踏实实一步步走。偶尔听到舆论质疑他没有作品，蔡徐坤也曾犹豫，要不要先发一部分出来？但内心却总有个声音说，你可以再多做几首不同风格的作品，让大家看到最全面、最好的你，而不是急于求成地去展现自己。
    ],
    en: [
      After his debut, Cai devoted most of his energy to the creation of new songs and albums. At that time, he needed to complete 17 large-scale tour meetings with NINE PERCENT in three months, so the time for writing songs had to be squeezed out. While bathing, modeling, on the plane, between two itineraries or meals, as long as there was a mobile phone and melody, anywhere could be his creation place. Occasionally, staying in the studio even became his breathing time. Last year, when the reporter of The Beijing News saw him, it was lunch time, and there was humming in the dressing room. He once said, I can write a paragraph during the rest time after the interview. I am still young. I think it is OK.
    ],
  ),
  keywords: (
    zh: ("蔡徐坤", "篮球", "舞台"),
    en: ("Cai Xukun", "Basketball", "Dance"),
  ),
)

// 正文
= 引言

== 课题研究背景及意义

一百多年前，物理学家与化学家们研究出光谱成像技术，最初被用来检测材料中的物质成分。随着遥感成像技术的进步，80 年代初期光谱成像技术被应用于地球检测上从而衍生出高光谱遥感技术 @fu2020。高光谱图像是一种高维图像，可反应地物的空间信息和遥感信息。高光谱图像分类是指整合高光谱数据的信息，进行特征提取，并利用光谱信息丰富的特征对把不同的图像区分开来，用以达到对图片分类和目标的自动识别的目的。高光谱目标探测与分类技术逐渐发展为地面观测的一个重要的组成部分，在军事领域通常被用来目标检测和军事侦察等，在民用技术领域高光谱图像技术应用更加广泛，经常被运用于作物生长情况检测、油气勘探等领域，在科研中，高光谱图像分类技术也具有非常重要的研究意义。

== 国内外研究历史与研究现状

=== 发展历史

最早的卷积神经网络可以追溯到 20 世纪 80 年代，日本科学家福岛邦彦提出了一个包含卷积层、池化层的神经网络结构 Neocognitron @fukushima1982。1998 年，Yann Lecun 在论文中提出了 LeNet-5 @lecun1998，该方法将 BP 算法运用于神经网络中，使其包含了最基本的卷积层、池化层以及全连接层，至此，卷积神经网络雏形基本形成。到了 2012 年，Alex Krizhevsky 在论文中发表了 AlexNet @krizhevsky2012，它比 LeNet 使用了更深更宽的网络结构，使用 Relu 作为激活函数并采用了全新的 dropout 方法，在当年的 ImageNet 竞赛中大放异彩。AlexNet 之后，卷积神经网络进入了快速发展时期，比如牛津大学的 VGG @simonyan2014，在 AlexNet 的基础上进一步加深了网络结构，以及 Google 的 Google Net @szegedy2015 和微软提出的 ResNet @he2016 等都是卷积神经网络中具有代表性的网络结构。


= 示例章节

卷积神经网络的参数共享意味着对所有的样例采用相同的卷积核参数，而动态卷积，也即条件参数卷积所提出的便是为每个样例学习一个特定的卷积核参数。

== 示例章节

=== 示例章节

中国海洋大学的发展目标是：到 2025 年建校百年前后，将学校建设成为国际知名、特色显著的高水平研究型大学；到本世纪中叶或更长一段时间，立足海洋强国建设，大力推进改革创新，通过强化建设和持续发展，努力实现全面跨越，力争使学校跻身特色显著的世界一流大学行列。

测试公式：

$ x = y + z $

测试图片：

#figure(
  image("assets/logo.svg", width: 4.2cm),
  caption: [中国海洋大学],
)<fig:ouc-logo>

@fig:ouc-logo 这是一张中国海洋大学的校徽图片。

测试表格：

#figure(
  table(
    columns: 2,
    align: center,
    table.header([*Name*], [*Made public*]),
    [Typst], [2023],
    [LaTeX], [1984],
    [TeX], [1978],
  ),
  caption: [一个基本的三线表],
)<fig:example-table>

@fig:example-table 这个表格展示了三种文本排版系统的名称和它们被公开发布的年份。

测试公式：

$
  lim_(x -> 0) (e^x - 1) / (2x)
  = lim_(x -> 0) e^x / 2
  = 1/2
$ <eq:limit>

@eq:limit 这个公式展示了一个极限的计算过程，最终得出结果为 $1\/2$。

#figure(
  ```typst
  = Heading 1
  == Heading 2
  === Heading 3
  ```,
  caption: [标题层级示例],
) <fig:raw-example>

@fig:raw-example 这个示例展示了 Typst 中的标题层级，从一级标题到三级标题。

- 这是一个无序列表的示例。
  - 这是一个二级无序列表项。
    - 这是一个三级无序列表项。
+ 这是一个有序列表的示例。
  1. 这是一个二级有序列表项。
    1. 这是一个三级有序列表项。
+ 这是一个枚举列表的示例。
  - 这是一个二级枚举列表项。
    - 这是一个三级枚举列表项。

#bibliography("references.bib")

#acknowledgments()[
  在论文的最后我想向所有帮助支持过我的亲人、朋友、老师致以崇高的敬意和真诚的感谢，感谢你们在我的学习和科研中给予的生活和工作的支持。

  这段时光中，我要特别感谢指导老师在选题、研究方法和论文写作上的悉心指导；感谢同学和朋友在我碰到问题时给予帮助；最后特别感谢我的父母，感谢你们对我学习生涯的支持与鼓励。
]
