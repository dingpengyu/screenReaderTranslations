# Tone Master #

* 作者: Hrvoje Katić
* 下载 [稳定版][1]

欢迎来到Tone Master！我开发了这个小小的NVDA插件只是为了好玩，希望让你在使用它时玩得开心.

我一直想用NVDA来创作音乐曲调，而不仅仅是听NVDA的进度和错误的嘟嘟声。但是，这并不容易，所以首先我想让它变得更容易。这就是我写Tone Master的原因。想象一下，听到Mozzart或Beethoven的NVDA演奏歌曲是一种怎么样的体验，或者滚石乐队最受欢迎的歌曲。虽然最终结果听起来像旧手机上的铃声，但它可能仍然很有趣.

Tone Master通过实现音调数据文件简化了播放音调序列的过程。这些文件可以使用您喜欢的文本编辑器进行编辑，然后保存以便使用NVDA进行播放。继续阅读说明!

## 音调数据文件

在您使用Tone Master播放第一首乐曲之前，您必须先创建并加载音色数据文件。音调数据文件只是扩展名为.tdf的文本文件。 Tone Master使用这些文件处理和播放音调序列。要为Tone Master创建音色数据文件以便能够成功播放，您必须遵循下面描述的简单规则.

1. .tdf文件中的每一行*必须*包含三个以冒号（:)分隔的参数。第一个参数是音调，第二个参数是音调持续时间，第三个参数是每个音调之间的静音时间。所有三个参数都需要指定，否则Tone Master将无法播放您的音调数据.
2. 间距和持续时间参数必须指定为有符号整数，并且必须将静音指定为浮点实数值.
3. .tdf文件中任何行开头的哈希符号（＃）将作为注释进行树形化，Tone Master将忽略该符号.

例子：播放3个音调的序列

1500:100:0.5

1000:100:0.09

500:100:0.7

在该示例中，序列中的第一音调具有1500的音高，100的持续时间和0.5的静音。第二个音调的音高为1000，持续时间为100，静音为0.09。序列中的最后一个音调具有音高500，持续时间100，并且静音为0.7.

注意，即使您认为不是，也需要使用静音参数来指定，因为如果没有指定，NVDA将覆盖下一个音调的前一个音调，您将获得意想不到的结果。这就是为什么我认为这是必要的.

要更熟悉音调数据文件语法，请查看并尝试编辑此插件附带的示例文件。它位于“tones”子文件夹中，所有.tdf文件也必须位于此子文件夹中.

## 快捷键

* Alt+NVDA+T: 播放当前加载的音色数据.
* Alt+Shift+NVDA+T: 如果正在播放任何音调数据，则停止播放当前加载的音色数据.
* Alt+NVDA+N: 在记事本中创建并打开一个新的空白音调数据文件以进行编辑.
* Alt + NVDA + L：打开一个对话框，您可以选择要加载的一个可用音色数据文件进行播放.
* Alt + NVDA + E：在记事本中打开当前加载的音色数据文件以进行编辑.
* Alt + NVDA + O：打开一个带有音色数据文件的文件夹.

## 其他说明

您还可以通过进入NVDA菜单，Tools SubMenu，Tone Master SubMenu来创建，编辑和加载音色数据文件，或打开这些文件所在的音调文件夹.

显示创建新音调数据文件的对话框时，键入不带.tdf扩展名的名称。该扩展程序将由Tone Master自动添加。如果未指定名称，Tone Master将使用默认名称“untitled.tdf”。 Tone Master将自动为您创建和加载新文件，它也将在记事本中打开以进行编辑。在文件名提示下按Escape取消新文件创建.

注意：Tone Master使用记事本编辑音调数据文件，因为默认情况下它附带Windows中，因此任何计算机都应该有记事本这个程序.

当打开加载音调数据文件的对话框时，使用光标键选择要加载的文件，然后按Enter键。按Escape键取消加载.

使用.tdf文件打开文件夹时，可以在文本编辑器中加载它们以供查看或编辑。但是，为了在运行中听到您的结果，我强烈建议您尽可能先将文件加载到Tone Master中。然后，您可以编辑文件，保存进度，每次保存后，您可以使用播放快捷键来听取最后的结果.

## 版本 1.2

* 修正：解决主要问题，选择空音数据，然后选择另一个并尝试播放，导致音调数据无法播放.

## 版本 1.1

* 新增：创建新音色数据文件并在记事本中打开以进行编辑的选项.
* 新增：在记事本中编辑当前加载的音色数据文件的选项.
* 改进：错误消息提示现在变的更加友好.
* 改进：现在不允许在安全屏幕上禁用某些插件功能，例如打开音调文件夹或在记事本中编辑音调数据文件.
* 改进：如果音频数据播放停止，NVDA将通知用户.
* 修正：在播放音色数据时不允许重复播放音色数据.

## 版本 1.0

* 发布初始版本.

[1]: https://github.com/nvdaaddons/toneMaster/releases/download/v1.2/toneMaster-1.2.nvda-addon
