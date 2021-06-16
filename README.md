# Lyon 的 Neovim 配置文件
----


<!-- vim-markdown-toc GFM -->

* [快捷键](#快捷键)
	* [文件操作](#文件操作)
	* [文本编辑](#文本编辑)
	* [快速移动](#快速移动)
	* [划分窗口](#划分窗口)
	* [窗口跳转](#窗口跳转)
	* [调整窗口大小](#调整窗口大小)
	* [tab相关](#tab相关)
	* [其它](#其它)
* [插件快捷键](#插件快捷键)
	* [文件浏览](#文件浏览)
	* [功能扩展](#功能扩展)
	* [辅助编辑](#辅助编辑)
	* [python](#python)
	* [移动增强](#移动增强)
	* [自动补全](#自动补全)
	* [Git](#git)
* [文件相关](#文件相关)
	* [MarkDown](#markdown)
	* [Latex](#latex)
	* [MarkDown](#markdown-1)

<!-- vim-markdown-toc -->

## 快捷键
### 文件操作
| 快捷键 | 行为                 |
| :-     | :-                   |
| fw     | 保存文件             |
| fq     | 退出文件             |
| fwq    | 保存并退出文件       |
| fqq    | 放弃保存直接退出文件 |


### 文本编辑
| 快捷键     | 行为                             |
| :-         | :-                               |
| +          | 数字加1                          |
| -          | 数字减1                          |
| Y          | 复制到系统剪切板                 |
| \<leader>J | 将多行拼接为一行，中间加空格     |
| \<leader>C | 将多行拼接为一行，中间不不加空格 |


### 快速移动
| 快捷键                       | 行为                     |
| :-                           | :-                       |
| \<C-j>                       | 向下移动5行              |
| \<C-k>                       | 向上移动5行              |
| \<C-h>                       | 向前搜索当前光标下的单词 |
| \<C-l>                       | 向后搜索当前光标下的单词 |
| \<localleader>\<localleader> | 取消搜索后的高亮         |


### 划分窗口
| 快捷键      | 行为                       |
| :-          | :-                         |
| \<leader>sj | 在当前窗口下方新建一个窗口 |
| \<leader>sk | 在当前窗口上方新建一个窗口 |
| \<leader>sh | 在当前窗口左方新建一个窗口 |
| \<leader>sl | 在当前窗口右方新建一个窗口 |


### 窗口跳转
| 快捷键   | 行为             |
| :-       | :-               |
| \<left>  | 跳转到左边的窗口 |
| \<down>  | 跳转到下面的窗口 |
| \<up>    | 跳转到上面的窗口 |
| \<right> | 跳转到右边的窗口 |

### 调整窗口大小
| 快捷键 | 行为            |
| :-     | :-              |
| \<M-l> | 横向减少5个单位 |
| \<M-k> | 纵向减少5个单位 |
| \<M-j> | 纵向增加5个单位 |
| \<M-h> | 横向增加5个单位 |

### tab相关
| 快捷键 | 行为          |
| :-     | :-            |
| tn     | 新建一个tab   |
| tj     | 将当前tab前移 |
| tk     | 将当前tab后移 |
| tc     | 关闭当前tab   |

### 其它
| 快捷键             | 行为                      |
| :-                 | :-                        |
| \<leader>sc        | 打开/关闭拼写检查         |
| \<leader>\<leader> | 找到下一个\<++>并进入编辑 |

## 插件快捷键
### 文件浏览
[vim-startify](https://github.com/mhinz/vim-startify)
| 快捷键      | 行为         |
| :-          | :-           |
| \<leader>st | 回到起始界面 |

[coc-explorer](https://github.com/weirongxu/coc-explorer)
| 快捷键     | 行为           |
| :-         | :-             |
| \<Space-e> | 打开文件浏览器 |
| ?          | 查看帮助文档   |


[FZF 文件模糊查找](https://github.com/junegunn/fzf.vim)
| 快捷键 | 行为             |
| :-     | :-               |
| \<M-f> | 模糊查找文件     |
| \<M-t> | 模糊查找文件内容 |
| \<M-i> | 模糊查找历史文件 |
| \<M-b> | 模糊查找Buffers  |

[far.vim](https://github.com/brooth/far.vim)
| 快捷键     | 行为 |
| :-         | :-   |
| \<leader>F | 搜索 |
| \<leader>R | 替换 |

[vista.vim](https://github.com/liuchengxu/vista.vim) 
| 快捷键          | 行为           |
| :-              | :-             |
| \<localleader>v | 打开/关闭vista |

[any-jump.vim](https://github.com/pechorin/any-jump.vim) 
| 快捷键           | 行为                       |
| :-               | :-                         |
| \<localleader>g  | 打开any-jump               |
| \<localleader>ab | 回到上一次打开的文件       |
| \<localleader>al | 打开最后关闭的搜索结果窗口 |

### 功能扩展
[vim-terminal-help](https://github.com/skywind3000/vim-terminal-help) 
| 快捷键      | 行为                    |
| :-          | :-                      |
| ALT+=       | 打开或关闭终端          |
| ALT+SHIFT+h | 移动到左边的窗口        |
| ALT+SHIFT+j | 移动到下面的窗口        |
| ALT+SHIFT+k | 移动到上面的窗口        |
| ALT+SHIFT+l | 移动到右面的窗口        |
| ALT+SHIFT+n | 移动到上一个窗口        |
| ALT+\-      | 粘贴寄存器0的内容到终端 |
| ALT+q       | 退出终端到正常模式      |

[vim-signature](https://github.com/kshenoy/vim-signature)
| 快捷键      | 行为                                                       |
| :-          | :-                                                         |
| mx          | 对当前行添加书签x                                          |
| dmx         | 删除当前行的标签x                                          |
| m,          | 放置下一个可用的标签                                       |
| m.          | 如果当前行无标签，放置下一个可用的标签。否则删除存在在标签 |
| m-          | 删除当前行的所有标签                                       |
| m\<space>   | 删除当前buffer的所有标签                                   |
| ]\`         | 前往下一个标签处                                           |
| [\`         | 前往上一个标签处                                           |
| ]'          | 跳到下一个具有标签行的开始                                 |
| ['          | 跳到上一个具有标签行的开始                                 |
| \`]         | 按照字母表顺序跳转到下一个标签                             |
| \`[         | 按照字母表顺序跳转到上一个标签                             |
| ']          | 按照字母表顺序跳转到下一个标签行的开始                     |
| '[          | 按照字母表顺序跳转到上一个标签行的开始                     |
| m/          | 查看当前buffer的所有marks                                  |
| m[0-9]      | Toggle the corresponding marker                            |
| m\<S-[0-9]> | Remove all markers of the same type                        |
| ]-          | Jump to next line having a marker of the same type         |
| [-          | Jump to prev line having a marker of the same type         |
| ]=          | Jump to next line having a marker of any type              |
| [=          | Jump to prev line having a marker of any type              |
| m?          | Open location list and display markers from current buffer |
| m\<BS>      | Remove all markers                                         |

[Goyo](https://github.com/junegunn/goyo.vim)
| 快捷键      | 行为          |
| :-          | :-            |
| \<leader>go | 打开/关闭Goyo |

[Letcode](https://github.com/ianding1/leetcode.vim)
| 快捷键      | 行为         |
| :-          | :-           |
| \<leader>li | 登陆LeetCode |
| \<leader>ll | 列出问题列表 |
| \<leader>lt | 测试提交     |
| \<leader>ls | 提交代码     |

### 辅助编辑
[UltiSnips](https://github.com/SirVer/ultisnips)
| 快捷键   | 行为               |
| :-       | :-                 |
| \<tab>   | 召唤一个代码片段   |
| \<tab>   | 召唤下一个代码片段 |
| \<S-tab> | 召唤上一个代码片段 |

[nerdcommenter](https://github.com/preservim/nerdcommenter)
| 快捷键             | 行为                               |
| :-                 | :-                                 |
| \<leader>cc        | 注释当前行，或者视图模式的选择内容 |
| \<leader>cn        | 和cc相同，不过强制嵌套             |
| \<leader>c\<space> | 切换当前行的注释方式               |
| \<leader>cm        | 使用简易的多行注释                 |
| \<leader>ci        | 单独改变选择行的注释方式           |
| \<leader>cs        | 以感性的方式注释                   |
| \<leader>cy        | 和cc相同，不过会复制               |
| \<leader>c\$       | 注释从当前位置到行尾               |
| \<leader>cA        | 在尾部添加注释，并进入插入模式     |
| \<leader>cu        | 取消选择行的注释方式               |


[vim-multiple-cursor](https://github.com/terryma/vim-multiple-cursors)
| 快捷键  | 行为               |
| :-      | :-                 |
| Ctrl+n  | 选择键             |
| n/N     | 选择下/上一个键    |
| [/]     | 选择下/上一个光标  |
| q       | 跳过当前选择下个键 |
| Q       | 取消选择当前光标   |
| i,I,a,A | 进入插入模式       |
| Esc     | 退出多重光标       |

[vim-surround](https://github.com/tpope/vim-surround)
| 快捷键 | 行为                  |
| :-     | :-                    |
| cs"'   | 将两端的"修改为'      |
| ds"    | 删除两端的"           |
| yss)   | 在当前行的两端加()    |
| yss(   | 在当前行的两端加(  )  |
| ysiw}  | iw表示一个text object |

[auto-pairs](https://github.com/jiangmiao/auto-pairs) 
| 快捷键   | 行为                |
| :-       | :-                  |
| \<ALT-p> | 打开/关闭auto-pairs |

[splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) 
| 快捷键   | 行为                |
| :-       | :-                  |
| gS       | 将一行转换为多行    |
| gJ       | 将多行转换为一行    |


[vim-easy-align](https://github.com/junegunn/vim-easy-align) 

| 快捷键     | 行为                           |
| :-         | :-                             |
| gaip       | ga表示对齐操作，ip表示块选命令 |
| ipga       | ip表示块选命令，ga表示进入对齐 |
| \<space>   | 对齐第一个空格                 |
| 2\<space>  | 对齐第二个空格                 |
| -\<space>  | 对齐倒数第一个空格             |
| -2\<space> | 对齐倒数第二个空格             |
| =          | 对齐所有=                      |
| \<enter>   | 切换左对齐，右对齐             |
| ctrl-x     | 进入正则匹配模式               |

[vim-after-object](https://github.com/junegunn/vim-after-object)
| 快捷键             | 行为                           |
| :-                 | :-                             |
| v/s/d.. a\<object> | 选择/替换/删除object之后的内容 |

### python

[vim-slime](https://github.com/jpalardy/vim-slime) 
| 快捷键       | 行为                       |
| :-           | :-                         |
| \<C-c>\<C-c> | 运行当前段或者选中区域内容 |
| \<C-c>v      | 查看当前配置文件           |

### 移动增强
[vim-easy-motion](https://github.com/easymotion/vim-easymotion)
| 快捷键               | 行为                       |
| :-                   | :-                         |
| \<leader>\<leader>w  | 选择当前词进行单词级的跳转 |
| \<leader>\<leader>fo | 搜索单词o并进行跳转        |

[vim-move](https://github.com/matze/vim-move) 
| 快捷键 | 行为                       |
| :-     | :-                         |
| K      | 将当前行或者选中内容上移   |
| J      | 将当前行或者选中内容下移   |
| H      | 将当前单词或者选中内容左移 |
| L      | 将当前单词或者选中内容右移 |



### 自动补全
[Coc](https://github.com/neoclide/coc.nvim) 
| 快捷键          | 行为                       |
| :-              | :-                         |
| [g              | 前往上一个警告处           |
| ]g              | 前往下一个警告处           |
| gd              | 列出定义列表               |
| gy              | 转至类型定义               |
| gi              | 列出引用列表               |
| gr              | 列出参考列表               |
| \<localleader>h | 打开文档                   |
| \<leader>rn     | 重命名                     |
| \<leader>f      | 格式化选中的代码           |
| \<leader>a      | 对选中的区域进行codeAction |
| \<leader>ac     | 对当前buffer进行codeAction |
| \<leader>qf     | 对当前行进行AutoFix        |

| text object | region     |
| :-          | :-         |
| if          | 在函数块中 |
| af          | 函数块     |
| ic          | 类区域中   |
| ac          | 类区域     |


### Git
[lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
| 快捷键           | 行为        |
| :-               | :-          |
| \<localleader>lg | 打开lazygit |


[git-gitgutter](https://github.com/airblade/vim-gitgutter)
| 快捷键 | 行为 |
|:-|:-|
| \<leader>gf | 折叠GitGutter |
| \<leader>gn | 下一个GitGutter |
| \<leader>gN | 上一个GitGuuter |


## 文件相关
### MarkDown
[vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)
| 命令 | 行为 |
|:-|:-|
| :GenTocGFM | 生成GFM风格的目录，适用于GitHub和GitBook中的MarkDown文件 |
| :GenTocRedcarpet | 生成Redcarpet风格的目录，适用于Redcarpet作为MarkDown引擎的Jekyll项目或者其它地方 |
| :RemoveToc | 删除本插件生成的目录 |

### Latex
[vim-tex](https://github.com/lervag/vimtex)
| 快捷键           | 行为                                           |
| :-               | :-                                             |
| \<localleader>li | vimtex-info(文件信息)                          |
| \<localleader>lt | vimtex-toc-open(打开目录)                      |
| \<localleader>ll | vimtex-compile(编译文件)                       |
| \<localleader>lv | vimtex-view(查看pdf文档)                       |
| \<localleader>li | vimtex-imap-list(查看insert模式下已定义的映射) |
| \<localleader>le | 显示编译信息                                   |
| dse              | 删除光标周围\begin \end 环境                   |
| dsc              | 删除光标周围\command{} 环境                    |
| ds\$             | 删除光标周围\$ \$环境                          |
| dsd              | 删除光标周围括号                               |
| cse              | 修改光标周围\begin \end 环境                   |
| csc              | 修改光标周围\command{} 环境                    |
| cs\$             | 修改光标周围\$ \$环境                          |
| csd              | 修改光标周围括号                               |
| tsc              | \command{} 和 \command*{}互换                  |
| tse              | \begin{env} 和 \begin{env*}互换                |
| tsd              | (...) 和 \left(...\right)互换                  |
text object
| text object      | region                                         |
| :-               | :-                                             |
| ic ac            | Command                                        |
| id ad            | Delimiters                                     |
| ie ae            | Environments                                   |
| i\$ a\$          | Inline math strucures                          |
| iP aP            | Sections                                       |
| im am            | Items                                          |


### MarkDown
| 插入模式输入 | 扩展为                  |
| :-           | :-                      |
| ,n           | \---                    |
| ,b           | 粗体** 的文字           |
| ,s           | ~~被划去~~ 的文字       |
| ,i           | *斜体* 的文字           |
| ,d           | `代码块`                |
| ,c           | 大的`代码块`            |
| ,a           | [链接]()                |
| ,1           | # H1                    |
| ,2           | ## H2                   |
| ,3           | ### H3                  |
| ,4           | #### H4                 |
| ,l           | \-------                |
| ,f           | 去往下一个\<++>(占位符) |
| ,w           | 去往下一个\<++>(占位符)并按下`Enter`

