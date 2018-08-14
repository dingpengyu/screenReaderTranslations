# dropbox #

* 作者: Patrick ZAJDA, Filaos and other contributors
* 下载 [稳定版][1]
* 下载 [开发板][2]

此插件将添加一个托盘来宣布Dropbox状态，版本或打开Dropbox系统托盘菜单。还可以使用Ctrl + Tab / Ctrl + Shift + Tab和Ctrl + PageUp / Down在首选项对话框中使用页面选项卡。最后，还可以使用取消按钮与escape一起退出托盘。

* 快捷键： NVDA+Shift+D
* Ctrl+Alt+T 朗读激活的标签。

## 已知问题 ##

* 如果您使用快捷方式在标签之间切换，当您关闭首选项窗口以后，NVDA将无法获取窗口。这是NVDA的已知问题，无法修复。

## 版本 4.0 ##

* 翻译更新。
* 修复了Windows 8 metro app的问题.

## 版本 3.1 ##

* 使用其他方式获取取消按钮和页面选项卡。现在我们不必在使用快捷方式之前进行浏览。
* 更改活动选项卡时，焦点移动到选项卡页面，因此当按Tab键时，选项卡的第一项将被激活，而不是停留在之前使用的选项卡上，即使它不再被激活。
* 在首选项对话框中，现在可以按上光标/下光标ctrl+plus页面在标签之间切换。 Control + tab和control + shift + tab仍然有效。
* 现在所有本地化的清单文件都应该可以.
* 小修正.

## 版本 3.0 ##

* 为完善的清单文件修正。
* 完善上下文菜单检测，可连续三次按下组合键“Shift+NVDA+D”实现。
* “退出”按钮有效（仅当 DropBox使用的语言与 NVDA相同时）。
* 许多代码的修正。
* 增加/更新所有脚本的文档。
* 新语言支持：包括阿拉伯语巴西葡萄牙语、捷克语、荷兰语、芬兰语、加利西亚与、德语、匈牙利语、日本语、尼泊尔语、波兰语、俄语、西班牙语、斯洛伐克语、坦尼耳语、
  土耳其语。

## 版本2.0 ##

* 新语言：意大利语
* 当托盘菜单打开时，极使重复按下该快捷键多次也不会再产生任何故障。

## 版本1.0 ##

* 初始版本

[[!tag dev stable]]

[1]: http://addons.nvda-project.org/files/get.php?file=dx

[2]: http://addons.nvda-project.org/files/get.php?file=dx-dev
