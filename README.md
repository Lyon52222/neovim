# Lyon 的 Neovim 配置文件
----

## 快捷键
### 文件操作
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| fw| 保存文件 | w\<CR> |
| fq| 退出文件 | q\<CR> |
| fwq| 保存并退出文件 | wq\<CR> |
| fqq| 放弃保存直接退出文件 | q!\<CR>|

### 退出插入模式
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| JJ | 退出插入模式 | \<Esc> |

### 快速移动
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| L | 跳转到行尾 | \$ |
| H | 跳转到行首 | 0 |
| J | 向下移动5行 | 5j |
| K | 向上移动5行 | 5k |

### 划分窗口
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| \<leader>sp | 纵向划分窗口 | :split |
| \<leader>vs | 横向划分窗口 | :vsplit |

### 调整窗口大小
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| \<M-l> | 横向减少5个单位 | :vertical resize -5 |
| \<M-k> | 纵向减少5个单位 | :resize -5 |
| \<M-j> | 纵向增加5个单位 | :resize +5 |
| \<M-h> | 横向增加5个单位 | :vertical resize +5 |

### tab相关
| 快捷键 | 行为 | 原按键 |
|:-|:-|:-|
| th | 新建一个tab | :tabe |
| tj | 下一个tab | :-tabnext |
| tk | 上一个tab | :+tabnext |

### 终端
| 快捷键 | 行为 | 原命令 |
|:-|:-|:-|
| \<leader>/ | 打开一个新的终端 | :set split\<CR>:split\<CR>:res +10\<CR>:term\<CR> |

## 插件快捷键
### 自动补全
[Coc](https://github.com/neoclide/coc.nvim) 
| 快捷键 | 行为 |
|:-|:-|
| [g | 前往上一个警告处 |
| ]g | 前往下一个警告处 |
| gd | 列出定义列表 |
| gy | 转至类型定义 |
| gi | 列出引用列表 |
| gr | 列出参考列表 |
| T | 打开文档 |
| \<leader> | 重命名 |
| \<leader> | 格式化选中的代码 |

[UltiSnips](https://github.com/SirVer/ultisnips)
| 快捷键 | 行为 |
|:-|:-|
| \<tab> | 召唤一个代码片段 |
| \<tab> | 召唤下一个代码片段 |
| \<S-tab> | 召唤上一个代码片段 |

### 文件浏览
[vim-startify](https://github.com/mhinz/vim-startify)
| 快捷键 | 行为 |
|:-|:-|
| \<leader>st | 回到起始界面 |

[coc-explorer](https://github.com/weirongxu/coc-explorer)
| 快捷键 | 行为 |
|:-|:-|
| \<Space-e> | 打开文件浏览器 |
| ? | 查看帮助文档 |


[FZF 文件模糊查找](https://github.com/junegunn/fzf.vim)
| 快捷键 | 行为 |
|:-|:-|
| \<M-p> | 模糊查找文件 |
| \<M-f> | 模糊查找文件内容 |
| \<M-h> | 模糊查找历史文件 |
| \<M-b> | 模糊查找Buffers  |

### 文字编辑
[vim-multiple-cursor](https://github.com/terryma/vim-multiple-cursors)
| 快捷键 | 行为 |
|:-|:-|
| Ctrl+n | 选择键 |
| n/N | 选择下/上一个键 |
| [/] | 选择下/上一个光标 |
| q | 跳过当前选择下个键 |
| Q | 取消选择当前光标 |
| i,I,a,A | 进入插入模式 |
| Esc | 退出多重光标 |

[vim-surround](https://github.com/tpope/vim-surround)
| 快捷键 | 行为 |
|:-|:-|
| cs"' | 将两端的"修改为' |
| ds" | 删除两端的" |
| yss) | 在当前行的两端加() |
| yss( | 在当前行的两端加(  ) |
| ysiw} | iw表示一个text object |

### 缓冲区内导航
[vim-easy-motion](https://github.com/easymotion/vim-easymotion)
| 快捷键 | 行为 |
|:-|:-|
| \<leader>\<leader>w | 选择当前词进行单词级的跳转 |
| \<leader>\<leader>fo | 搜索单词o并进行跳转 |

[Vuista.vim](https://github.com/liuchengxu/vista.vim)
| 快捷键 | 行为 |
|:-|:-|
| \<M-v> | 打开/关闭Vista |

### 其它
[Goyo](https://github.com/junegunn/goyo.vim)
| 快捷键 | 行为 |
|:-|:-|
| \<leader>go | 打开/关闭Goyo |

## 自定义代码补全
### MarkDown
| ,n | \--- |
|:-|:-|
| ,b | 粗体** 的文字 |
| ,s | ~~被划去~~ 的文字 |
| ,i | *斜体* 的文字 |
| ,d | `代码块`  |
| ,c | 大的`代码块`|
| ,a | [链接]() |
| ,1 | # H1 |
| ,2 | ## H2 |
| ,3 | ### H3 |
| ,4 | #### H4 |
| ,l | \-------|
| ,f | 去往下一个\<++>(占位符)|
| ,w | 去往下一个\<++>(占位符)并按下`Enter`


