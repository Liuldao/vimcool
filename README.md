# VIM-COOL

#### AUTHOR: JACKLIU 
#### 2018.12.30



![vim_cool](vim-cool/screenshots/vim_cool.png)


插件没有添加搜索，可自行添加。
### 帮助

|说明           | 使用     |
|----------    | ---------|
|更新vimrc      | < . e > |
|关闭窗口        | < . q > |
|强制关闭窗口     | < .. q  >|
|保存            | < . w > |
|强制保存         | < .. w > |
|垂直分屏         | < .. v > |
|水平分屏         | < .. s > |
|插件安装         | < .. i > |
|插件更新         | < .. u >  |
|插件删除         | < .. c >  |
|帮助            |< . h > |
|文件打开         |  < F2 > |
|编译            | < F5 >|
|打开quickfix     | < F4 > |
|函数预览          | < F1 > |
|YCM重启          | < . rr>|
|YCM跳转Include   | <. n > |
|YCM 跳转声明      | < . m > |
|YCM FIX          | < . b > |
|YcmDiags         | < F3 > |
|注释 (visual)     | <. cc >   |
| 取消注释          | <. cu > |
| GO-bulid/test    | < . b > |
| GO-RUN           | < . R > |
| GO-FMT           | < . G > |
| venv激活          | < . v>  |

### 问题

* YCM：

C++标准库头
这是由libclang的问题引起的，该问题仅影响某些操作系统。使用clang二进制文件进行编译将使用正确的默认标头搜索路径，但使用libclang.so（YCM使用的）编译不会。
Mac OS X通常会受到影响，但YCM针对该特定操作系统提供了解决方法。如果您没有运行该操作系统但仍有相同的问题，请继续阅读。
解决方法是调用echo | clang -v -E -x c++ -并查看#include <...> search starts here:标题下的路径。您应该将这些路径-isystem添加到每个单独的路径之前，并将它们全部附加到从文件中的Settings函数 返回的标志列表中.ycm_extra_conf.py。
有关详细信息，[请参阅问题＃303](https://github.com/Valloric/YouCompleteMe/issues/303)




* nerdtree：

|Key      | Description |
|---------|-------------|
|o        |Open files, directories andbookmarks|
|go       |Open selected file, but leave cursor in the NERDTree|
|t        |Open selected node/bookmark in a new tab|
|T        |Same as 't' but keep the focus on the current tab|
|i        |Open selected file in a split window|
|gi       |Same as i, but leave the cursor on the NERDTree|
|s        |Open selected file in a new vsplit|
|gs       |Same as s, but leave the cursor on the NERDTree|
|O        |Recursively open the selected directory|
|x        |Close the current nodes parent|
|X        |Recursively close all children of the current node|
|e        |Edit the current dir|
|D        |Delete the current bookmark|
|P        |Jump to the root node|
|p        |Jump to current nodes parent|
|K        |Jump up inside directories at the current tree depth|
|J        |Jump down inside directories at the current tree depth|
|<C-J>    |Jump down to next sibling of the current directory|
|<C-K>    |Jump up to previous sibling of the current directory|
|C        |Change the tree root to the selected dir|
|u        |Move the tree root up one directory|
|U        |Same as 'u' except the old root node is left open|
|r        |Recursively refresh the current directory|
|R        |Recursively refresh the current root|
|m        |Display the NERD tree menu|
|cd       |Change the CWD to the dir of the selected node|
|CD       |Change tree root to the CWD|
|I        |Toggle whether hidden files displayed|
|f        |Toggle whether the file filters are used|
|F        |Toggle whether files are displayed|
|B        |Toggle whether the bookmark table is displayed|
|q        |Close the NERDTree window|
|A        |Zoom (maximize/minimize) the NERDTree window|
|?        |Toggle the display of the quick help|

### nerdcomment

| key      |  Description|
|----       |-------     |
|`<leader>cc` ( NERDComComment ) |注释掉在可视模式下选择的当前行或文本。|
|`<leader>cn` (NERDComNestedComment) |与cc相同但强制嵌套。|
|`<leader>c<space>` (NERDComToggleComment) |切换所选行的注释状态。如果评论最上面的选定行，则取消注释所有选定行，反之亦然。|
|`<leader>cm` (NERDComMinimalComment) |仅使用一组多部分分隔符来注释给定的行。|
|`<leader>ci `(NERDComInvertComment) |单独切换所选行的注释状态。|
|`<leader>cs` (NERDComSexyComment) |使用漂亮的块格式布局注释掉选定的行。|
|`<leader>cy` (NERDComYankComment) |与cc相同，不同之处在于评论的行首先被拉出。|
|`<leader>c$` (NERDComEOLComment) |注释从光标到行尾的当前行。|
|`<leader>cA `(NERDComAppendComment) |将注释分隔符添加到行尾并进入它们之间的插入模式。|
| (NERDComInsertComment) |在当前光标位置添加注释分隔符并在其间插入。默认情况下禁用。|
|`<leader>ca` (NERDComAltDelim) |切换到另一组分隔符。|
|`<leader>cl/<leader>cb `(NERDComAlignedComment 与 NERDComComment) |相同 除了分隔符在左侧（`<leader>cl`）或两侧（`<leader>cb`）对齐。|
|`<leader>cu`  (NERDComUncommentLine) |取消注释选定的行。|



### [vim-django](https://github.com/yodiaditya/vim-pydjango)

依赖
```shell
sudo apt-get install python-setuptools python-pip exuberant-ctags
sudo pip install git+git://github.com/kevinw/pyflakes.git
sudo pip install pylint
sudo pip install pep8
-------------------------
sudo apt-get install ipython
sudo pip install ipdb
```
|    Description    |   key   |
|----    |----- |
| MRU    | <leader>space |
|Pep8    |       F6       |
| FileManager + Tagbar | F8|
|FileManager  |<leader> t|
|FuzzFinder Files  |F2|
|FuzzFinder Buffer  |<leader> b|
|Tagbar  |<leader>l|
|Paste  |Ctrl + V|