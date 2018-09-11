# Lambda NVDA支持插件
* 作者: Alberto Zanella and the lambda-nvda team.
* 下载 [稳定版][1]
* 下载 [开发板][2]

该项目是LAMBDA软件的appModule。它的灵感来自于Comenius大学Peter Lecky的作品。
LAMBDA（用于盲文设备和音频合成的数学线性访问工具），可帮助盲人使用盲文点显器和语音合成器读写数学。
LAMBDA是欧盟项目的成果。有关LAMBDA的更多信息，请访问[http://www.lambdaproject.org/](http://www.lambdaproject.org/）。
当前版本的插件有意大利语和西班牙语的盲文表，其界面以大多数NVDA的官方语言提供，因为它是由NVDA翻译社区翻译的。
如果您是LAMBDA的非意大利用户，并且您希望以您的语言移植盲文表，请随时联系作者（见下文）或订阅项目邮件列表。

**请注意：** 这个插件由Alberto Zanella自愿开发。作者或贡献者也不参与销售和/或开发Lambda软件。如果您需要有关Lambda的更多信息，或者您需要有关如何使用它的支持，请联系您当地的经销商。如果您在使用或安装此插件时遇到任何困难，请联系作者或使用Github项目页面上的“问题”链接。

### [官方Github存储库]（https://github.com/lambda-nvda/lambdaNvda/）

## 插件功能：

### 语音合成器支持：

* 正确朗读对话框和菜单;
* 使用Lambda数学引擎对数学公式的自然语音支持，即“复合根3 sep复合根3 x加24，紧密复合根，减3等于0”;
* 通过字符，单词，行和全部朗读实现阅读;
* 在选择或扩展文本块时朗读（使用CTRL + B和SHIFT + CTRL + B）;
* 使用标准Windows快捷键和Lambda特定快捷键在文本编辑器中移动时朗读;
* 支持扩展和短语音模式（您可以使用Lambda中的“工具”菜单进行选择）;
* 现在可以正确朗读结构模式，计算器和矩阵窗口等特殊对话框，并在移动光标或键入新文本时正确读出NVDA;
* 键入echo使用Lambda文本处理器，因此将正确朗读符号和标记。

### 盲文支持：

* 插件安装（在用户配置文件目录中）并激活自定义盲文表。对于不同的语言，此表可能不同。自定义盲文表是使用Lambda插件中的JAWS（jbt文件）制作而成的。然后使用相同的点图案表示符号和标记;
* 插件为标准盲文配置创建NVDA配置文件。这样，仅当Lambda应用程序处于活动状态时，输出才会设置为自定义的盲文表;
* 对话框和菜单使用盲文正确阅读;
* 编辑器的内容以盲文正确呈现，用户可以使用盲文滚动键或光标路由键移动;
* 从插件版本1.1.0开始，Lambda编辑器中的文本有两种呈现方式：“平面模式”和“非平面模式”。当“平面模式”打开时，NVDA将使用显示模型从编辑器检索信息并确定插入位置。当用户需要在屏幕上移动时，即使在白色空间中，这也是特别有益的。当“平面模式”设置为“关闭”时，盲文显示器上的文本呈现更稳定，因为NVDA使用Windows API来检索它。然而，当插入符号在文本行的末尾旁边的空白区域中移动时，只要用户添加了非白色空格，盲文显示就不会跟随真实光标。

“平面模式”默认处于活动状态。您可以按NVDA + SHIFT + F打开或关闭“平面模式”。

如果您在Windows中使用自定义DPI（自定义大小调整选项），我们强烈建议您禁用平面模式，尤其是当您的屏幕设置超过96 dpi（大于100％）时。

* 对话框的结构更容易，重复的信息已被删除;
* 使用点7和8正确标记选择，并在按下标准Windows命令（SHIFT + ARROWS）或Lambda特定命令（CTRL + B，CTRL + SHIFT + B）时正确刷新标记。

## 开始使用这个插件之前。

此插件创建名为“lambda”的NVDA配置文件，该配置文件与“lambda.exe”应用程序关联。配置文件自动设置所有盲文选项：自定义盲文表，焦点绑定和平面模式设置。

如果系统中存在具有相同名称的先前配置文件，则插件不会覆盖它，您必须手动调整配置文件。

为避免这种情况，如果您要保留特定设置，可以使用“恢复LAMBDA配置文件向导”。启动此工具的快捷键是NVDA + alt + r（当然是LAMBDA插件激活的情况下）。

一个简单的选项也是在安装插件后删除旧版本的“lambda”配置文件。为此，请打开NVDA菜单，选择“配置文件”菜单项，然后按ENTER。

在“配置文件”对话框中，您将能够找到并删除“lambda”配置文件。将在下次启动Lambda应用程序时重新创建配置文件。

当插件遇到任何问题时，删除“lambda”配置文件也应该是一个简单的解决方案。例如，如果未正确设置盲文表，则可以简单地删除它，而不是手动配置配置文件。下次加载Lambda编辑器时，插件将创建一个新的配置文件。

每次启动Lambda编辑器时，此插件都会检查是否存在名为“lambda”的配置文件。如果没有，它会自动生成具有以下形式的配置文件：

```
filename : userData\profiles\lambda.ini :

[braille]
	readByParagraph = False
	tetherTo = focus
	translationTable = path-to-the-addon-brailleTable-dir\tableName

[lambda]
	brailleFlatMode = True

```

Where :

* path-to-the-addon-brailleTable-dir : is the absolute path of the addon directory + "\brailleTables"
* tableName : depends on the active NVDA language. Currently only the italian and Spanish braille tables, "lambda-ita.utb" and "lambda-esp.utb" respectively, is present.

## 插件快捷键：

* **NVDA + Shift + f **：打开或关闭盲文平面模式;
* **NVDA + alt + r **：打开“恢复LAMBDA配置文件向导”;
* **NVDA + d **：重复行（使用此控制对象+ d）。

## 已知的问题：

由于LAMBDA中存在错误，插件提供了报告空白区域的额外逻辑。在以下情况下，此逻辑可能会失败：

* 当诸如“space”，“spazio”，“Espacio”等词语被插入到文本中时，它们可以被NVDA报告为本地NVDA语言翻译。
* LAMBDA语音引擎不报告空行。用户将听到“空格”一词的翻译。这可以是空行或仅包含单词“space”的行。

## 有用的提示

这是一组提示，可以帮助您以更有效的方式使用插件。

* 逐字符报告：通常，在使用数学时，您希望NVDA报告您逐字逐句编写的内容。要做到这一点，有几个简单的步骤：确保关注LAMBDA的窗口或其中一个变体（例如，六个点表示）;按NVDA + 2（第二个）或导航到NVDA菜单>首选项>键盘设置，然后选中说出键入字符的方框;转到LAMBDA>选项>语音参数并确保复选框“echo”为ON，否则在您输入时NVDA将不会从语音引擎接收任何内容。完成后，NVDA会说出书面字符，但不要担心，只有在LAMBDA或其特殊窗口中，其余应用程序的设置将保持不变。

## 插件邮件列表：

要报告错误，建议或您想要贡献，您可以订阅插件组（英文）。
您可以从以下网站订阅： <https://groups.io/g/lambda-nvda>。

## 更新日志

以下是不同插件版本之间的更改列表。在括号之间的版本号旁边是开发状态。当前的开发版本不包括在内，因为它可能会发生变化，直到它被标记为稳定或被丢弃为候选。

### 稳定版 1.2.1a (稳定)

此更新旨在成为长期支持版本。这意味着，至少在2018年6月之前，它不会发布像这样稳定的版本。我们这样做是为了给学生提供最大的稳定性，并尽量减少学术年度的变化。

* 新语言。更新翻译。

### 稳定版 1.2.1 (稳定)

* 增加了与NVDA 2017.3用于管理盲文的方式的兼容性。保持向后兼容性。
* 解决了许多盲文问题。

### 版本 1.2.0 (开发)

此版本未发布为稳定版，因为版本1.2.1包含主要修复程序。

* 新的语言环境。更新本地化。

### 版本 1.1.8 (稳定)

* 发布初始版本

[1]: http://addons.nvda-project.org/files/get.php?file=lambda

[2]: http://addons.nvda-project.org/files/get.php?file=lambda-dev
