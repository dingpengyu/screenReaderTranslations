# NVDA音频主题插件
此插件创建了一个虚拟音频显示器，在聚焦或导航对象（如按钮，链接等）时播放声音，音频将在与视觉显示中对象位置相对应的位置播放.

该插件还允许您激活，安装，删除，编辑，创建和分发音频主题包.


## 简介
此插件使您可以执行三个不同的任务，包括管理已安装的音频主题，编辑当前活动的音频主题以及创建新的音频主题.

您可以从NVDA主菜单中的插件子菜单访问这些功能.


### 管理音频主题
- 除了安装和删除音频主题外，“管理音频主题”对话框还可以激活或停用音频主题.
- 在这个对话框中有一些额外的选择，包括:
 - 在3D模式下播放声音：当取消选中此复选框时，无论对象位置如何变化，插件都将以单声道模式播放声音位置（始终位于音频显示的中央）.
 - 读出按钮，编辑框，链接等元素：当您取消选中此复选框时，NVDA将在聚焦对象时开始朗读元素而不是忽略它（这是安装此插件时的默认选项）.
 - 使用合成器音量：选中此框将设置此附加组件的声音播放器以使用活动语音，从而使所有声音输出与更改音量时的音量同步.
 - 音频主题音量滑块：您也可以使用此滑块设置插件的音量。将其设置为0将使所有声音静音，100为最大音量.


### 编辑活跃音频主题:
- 当您单击“编辑活跃音频主题”选项时，将打开一个对话框，其中包含当前所有活跃的声音列表。从这个对话框你可以:
- 更改所选：从列表中选择声音并单击此按钮，将打开浏览文件对话框，从文件系统中选择ogg或wave音频文件以替换所选声音，然后单击确认以完成该操作.
- 删除所选：这将从主题中删除所选声音，单击“是”以确认删除过程，并将删除所选声音.
- 添加新声音：单击此按钮时，将显示新对话框。从新打开的对话框中的第一个组合框中选择要为其分配声音的对象类型，例如（按钮，链接，选项卡，菜单等），然后单击“浏览音频文件”按钮选择要为先前选择的对象类型指定声音。 您可以单击预览按钮预览声音，最后单击确认按钮将应用更改并将所选声音分配给所选对象. 
- 关闭：点机此按钮以后将退出对话框而不执行任何操作.


### 创建新的音频主题
- 如果你有良好的声音制作能力，你可以在这里应用它们并创建自己的音频主题，而不是编辑现有的音频文件。为此，您可以按照以下步骤进行操作.
- 首先准备好您的音频文件，它必须是ogg或wave格式，并将它们重命名为你想要的名称。例如，当我为此插件创建默认音频主题时，我根据交互模式首先对声音进行分组，例如，组合框，下拉按钮和分割按钮都可以具有相同的声音，而编辑框，切换按钮和菜单检查项可以具有相同的声音。
- 首先从工具子菜单打开“创建新的音频主题”
- 这时候将打开一个对话框，询问您有关新音频主题的一些信息，包括:
*	主题名称：主题的名称将显示在音频主题管理器中。这必须是有效的Windows文件夹名称.
*	您的名字：输入您的真实姓名或昵称.
*	主题描述：关于您的音频主题的简要说明.
- 单击“确定”转到下一步.
- 在下一步中，将显示类似于“音频主题编辑器”的对话框，并且其过程与主题编辑过程相同，因此请参阅“编辑主动音频主题”部分.


## 版权：
版权所有（c）2014-2016 Musharraf Omer<ibnomer2011@hotmail.com> and Others

虽然这个插件是作为一个独立的项目进行开发的，但它确演变为Austin Hicks（camlorn38@gmail.com）和Bryan Smart（bryansmart@bryansmart.com）的“Unspoken”插件增强版本。这个插件的大部分开发都用于创建管理，编辑和创建音频主题包工具。所以非常感谢他们创建这样一个好用的插件，并让我们可以在他们的基础之上进行开发.


## 关于第三方音频文件:
此附加组件中的** Default **音频主题包使用来自多个来源的声音，这里是它们的列表:
- 未读出的3D音频：NVDA的插件
- TWBlue：一个免费的开源Twitter客户端
- Mushy TalkBack：androidd的屏幕阅读器的声音.


## 许可证
Licensed under the GNU General Public License. See the file **copying** for more details.
