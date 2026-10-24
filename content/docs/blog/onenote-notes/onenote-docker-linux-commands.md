---
title: "Docker-linux基础命令"
weight: 27
type: docs
bookToC: false
aliases:
  - "/s/jege/"
shortlink: "jege"
---

# Docker-linux基础命令

<div class="onenote-note">本页由同名 OneNote 笔记转换而来，可直接在线阅读；原始笔记文件见「<a href="/docs/blog/onenotes/">Go语言相关笔记</a>」页的原始链接。</div>

<div class="onenote-body">


<div class="title" data-onenote-x="0" data-onenote-y="0"><div class="container-outline" style="max-width: 768px"><div class="outline-element" style="margin-left: 0px"></div>
</div><div class="container-outline" style="max-width: 768px"><div class="outline-element" style="margin-left: 0px"></div>
<div class="outline-element" style="margin-left: 0px"></div>
</div></div><div data-onenote-x="0.5" data-onenote-y="2.4000000953674316" data-onenote-w="1" data-onenote-h="1"><a class="onenote-file" href="/files/onenote-notes/onenote-docker-linux-commands-_.html">附件：_.html（点击下载）</a></div>


</div>

## 附件文档全文（Linux 命令详解）

<div class="onenote-body onenote-doc">
<div class='mx-auto max-w-5xl shadow-md prose bg-white px-2 py-4'>
        <h1 class='flex flex-row justify-between items-center my-4 h-8'>
            <span>软件工程师</span>
            <a href="https://chatboxai.app" target="_blank" >
                <img src='https://chatboxai.app/icon.png'>
            </a>
        </h1>
        <hr />
        <div>
<h2>1. Linux命令详解</h2>
<div>
<p><b>SYSTEM: </b></p>
<div><p>你是一个高级软件工程师，你需要帮我解答各种技术难题、设计技术方案以及编写代码。你编写的代码必须可以正常运行，而且没有任何 Bug 和其他问题。如果你的回答中用代码，请用 markdown 代码块，并且在代码块中标明使用的编程语言。</p></div></div>
<div>
<p><b>USER: </b></p>
<div><p>讲解Linux的基础命令。要求全面，详细，有实例，列表讲解，然后讲解进阶命令</p></div></div>
<div>
<p><b>ASSISTANT: </b></p>
<div><p>下面是一份系统化的 Linux 命令讲解，分为基础与进阶两大部分。每个命令都有说明与可运行的示例。为避免误操作，示例尽量在安全的目录或只读场景下进行；涉及系统改动的命令均用 sudo，确保你有相应权限。</p>
<p>一、基础概念</p>
<ul>
<li>路径类型:
<ul>
<li>绝对路径：从根目录 / 开始，例如 /etc/hosts</li>
<li>相对路径：相对当前工作目录，例如 ./logs 或 ../tmp</li>
</ul>
</li>
<li>通配符与扩展:
<ul>
<li>星号 * 匹配任意字符；问号 ? 匹配一个字符；方括号 [abc] 指定集合</li>
<li>大括号扩展：file{1..3}.txt → file1.txt file2.txt file3.txt</li>
</ul>
</li>
<li>重定向与管道:
<ul>
<li>
<blockquote>
<p>覆盖输出，&gt;&gt; 追加输出，2&gt; 重定向标准错误，| 用上一个命令的输出作为下一个命令输入</p>
</blockquote>
</li>
</ul>
</li>
<li>权限位:
<ul>
<li>rwx 表示读、写、执行，分属用户/组/其他；数字表示法如 754 → 用户 rwx(7)、组 r-x(5)、其他 r--(4)</li>
</ul>
</li>
</ul>
<p>二、基础命令（按类别）</p>
<ol>
<li>文件与目录操作</li>
</ol>
<ul>
<li>pwd：打印当前路径</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>pwd</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>ls：列出目录</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ls</span><span> -lah          </span><span># 包含隐藏文件、显示人类可读大小</span><span>
</span><span>3</span><span></span><span>ls</span><span> -l /etc       </span><span># 详细列出 /etc</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>cd：切换目录</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>cd</span><span> /var/log
</span><span>3</span><span></span><span>cd</span><span> -             </span><span># 返回上一个目录</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>mkdir / rmdir：创建/删除空目录</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>mkdir</span><span> -p projects/demo/src  </span><span># 递归创建</span><span>
</span><span>3</span><span></span><span>rmdir</span><span> emptydir              </span><span># 仅能删除空目录</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>cp / mv / rm：复制、移动/重命名、删除</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>cp</span><span> -r docs docs_backup      </span><span># 递归复制目录</span><span>
</span><span>3</span><span></span><span>mv</span><span> app.log app.log.1        </span><span># 重命名文件</span><span>
</span><span>4</span><span></span><span>rm</span><span> -i file.txt              </span><span># 交互式删除（更安全）</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>touch / stat：创建或更新时间戳 / 查看文件详细信息</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>touch</span><span> new.txt
</span><span>3</span><span></span><span>stat</span><span> new.txt
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>ln：创建链接</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ln</span><span> file.txt file.hardlink     </span><span># 硬链接</span><span>
</span><span>3</span><span></span><span>ln</span><span> -s /var/log logs_link      </span><span># 软链接</span><span>
</span><span>4</span></code></div></div></div></pre>
<ol start="2">
<li>查看与搜索</li>
</ol>
<ul>
<li>cat / tac / nl：打印文件，倒序打印，加行号</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>cat</span><span> /etc/hosts
</span><span>3</span><span></span><span>nl</span><span> -ba /etc/hosts            </span><span># 所有行编号</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>less / more：分页查看大文件</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>less</span><span> /var/log/syslog         </span><span># 上下翻页、搜索：输入 /关键字</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>head / tail：查看开头/结尾</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>head</span><span> -n </span><span>20</span><span> /etc/passwd
</span><span>3</span><span></span><span>tail</span><span> -f /var/log/syslog      </span><span># 实时跟踪</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>grep：文本匹配</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>grep</span><span> -n </span><span>&quot;ERROR&quot;</span><span> app.log               </span><span># 显示匹配行号</span><span>
</span><span>3</span><span></span><span>grep</span><span> -r --color </span><span>&quot;TODO&quot;</span><span> src/           </span><span># 递归目录，彩色高亮</span><span>
</span><span>4</span><span></span><span>grep</span><span> -E </span><span>&quot;foo|bar&quot;</span><span> file.txt            </span><span># 扩展正则</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>find：按条件查找文件</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>find</span><span> </span><span>.</span><span> -type f -name </span><span>&quot;*.log&quot;</span><span> -size +10M
</span><span>3</span><span></span><span>find</span><span> /var -type f -mtime -1           </span><span># 最近一天修改</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>locate：按数据库快速查找（需先更新数据库）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> updatedb
</span><span>3</span><span></span><span>locate</span><span> ssh_config
</span><span>4</span></code></div></div></div></pre>
<ol start="3">
<li>文本处理与管道</li>
</ol>
<ul>
<li>sort / uniq：排序与去重</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sort</span><span> names.txt </span><span>|</span><span> </span><span>uniq</span><span>                 </span><span># 去重</span><span>
</span><span>3</span><span></span><span>uniq</span><span> -c </span><span>&lt;</span><span>(</span><span>sort</span><span> names.txt</span><span>)</span><span> </span><span>|</span><span> </span><span>sort</span><span> -nr  </span><span># 统计频次并倒序</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>cut / paste / join：列裁剪、合并、按键合并</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>cut</span><span> -d</span><span>&#x27;:&#x27;</span><span> -f1,3 /etc/passwd                 </span><span># 以冒号分隔，取第1和3列</span><span>
</span><span>3</span><span></span><span>paste</span><span> file1.txt file2.txt                   </span><span># 按行合并两文件</span><span>
</span><span>4</span><span></span><span>join</span><span> -t</span><span>&#x27;,&#x27;</span><span> -1 </span><span>1</span><span> -2 </span><span>1</span><span> a.csv b.csv            </span><span># 以第1列为键连接两CSV</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>tr：字符转换</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>tr</span><span> </span><span>&#x27;[:lower:]&#x27;</span><span> </span><span>&#x27;[:upper:]&#x27;</span><span> </span><span>&lt;</span><span> words.txt      </span><span># 转为大写</span><span>
</span><span>3</span><span></span><span>tr</span><span> -d </span><span>&#x27;\r&#x27;</span><span> </span><span>&lt;</span><span> file.txt </span><span>&gt;</span><span> file_unix.txt       </span><span># 删除回车（DOS 转 UNIX）</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>awk：按列处理，支持脚本化</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>awk</span><span> -F</span><span>&#x27;:&#x27;</span><span> </span><span>&#x27;{print $1, $3}&#x27;</span><span> /etc/passwd            </span><span># 以:为分隔，打印第1和3列</span><span>
</span><span>3</span><span></span><span>awk</span><span> </span><span>&#x27;{sum+=$NF} END{print sum}&#x27;</span><span> nums.txt          </span><span># 累加最后一列</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>sed：流编辑，替换/删除/插入</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sed</span><span> -n </span><span>&#x27;1,10p&#x27;</span><span> file.txt                           </span><span># 打印1到10行</span><span>
</span><span>3</span><span></span><span>sed</span><span> </span><span>&#x27;s/error/ERROR/g&#x27;</span><span> app.log </span><span>&gt;</span><span> app_upper.log     </span><span># 全局替换</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>wc：统计</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>wc</span><span> -l app.log                     </span><span># 行数</span><span>
</span><span>3</span><span></span><span>wc</span><span> -w app.log                     </span><span># 单词数</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>tee：边输出边写文件</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>echo</span><span> </span><span>&quot;Hello&quot;</span><span> </span><span>|</span><span> </span><span>tee</span><span> hello.txt
</span><span>3</span></code></div></div></div></pre>
<ol start="4">
<li>权限、用户与组</li>
</ol>
<ul>
<li>chmod：修改权限</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>chmod</span><span> </span><span>754</span><span> run.sh                  </span><span># 数字模式</span><span>
</span><span>3</span><span></span><span>chmod</span><span> u+x script.sh               </span><span># 符号模式：给用户加执行</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>chown / chgrp：变更所有者/组</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>chown</span><span> root:root /var/myfile
</span><span>3</span><span></span><span>sudo</span><span> </span><span>chgrp</span><span> developers project/ -R
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>umask：默认权限掩码</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>umask</span><span>                             </span><span># 查看当前 umask</span><span>
</span><span>3</span><span></span><span>umask</span><span> 022                         </span><span># 新文件默认去除组/其他写权限</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>id / whoami / groups：身份信息</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>id</span><span>
</span><span>3</span><span></span><span>whoami</span><span>
</span><span>4</span><span></span><span>groups</span><span>
</span><span>5</span></code></div></div></div></pre>
<ol start="5">
<li>进程与作业控制</li>
</ol>
<ul>
<li>ps / top：进程列表与实时监控</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ps</span><span> aux </span><span>|</span><span> </span><span>grep</span><span> nginx
</span><span>3</span><span></span><span>top</span><span>                                </span><span># 交互式查看，按 k 可杀进程，h 查看帮助</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>pgrep / pkill / kill：按名查杀</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span>pgrep -fl python
<span>3</span><span></span><span>pkill</span><span> -9 </span><span>node</span><span>
</span><span>4</span><span></span><span>kill</span><span> -</span><span>TERM</span><span> </span><span>12345</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>nice / renice：调整优先级</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>nice</span><span> -n </span><span>10</span><span> long_job.sh
</span><span>3</span><span></span><span>sudo</span><span> </span><span>renice</span><span> -n -5 -p </span><span>12345</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>jobs / fg / bg / nohup / disown：前后台控制</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sleep</span><span> </span><span>100</span><span> </span><span>&amp;</span><span>         </span><span># 放后台</span><span>
</span><span>3</span><span></span><span>jobs</span><span>
</span><span>4</span><span></span><span>fg</span><span> %1               </span><span># 拉到前台</span><span>
</span><span>5</span><span></span><span>nohup</span><span> long_job.sh </span><span>&amp;</span><span> </span><span># 忽略挂起信号</span><span>
</span><span>6</span><span>disown %1           </span><span># 拆离作业</span><span>
</span><span>7</span></code></div></div></div></pre>
<ol start="6">
<li>网络工具</li>
</ol>
<ul>
<li>ip / ifconfig：网络配置与查看</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ip</span><span> a
</span><span>3</span><span></span><span>ip</span><span> r
</span><span>4</span><span></span><span>sudo</span><span> </span><span>ip</span><span> </span><span>link</span><span> </span><span>set</span><span> eth0 up
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>ss：查看套接字与端口</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span>ss -tulnp                    </span><span># 监听的 TCP/UDP 端口</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>ping / traceroute：连通性与路径</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ping</span><span> -c </span><span>4</span><span> example.com
</span><span>3</span><span></span><span>traceroute</span><span> example.com       </span><span># 若未安装：sudo apt install traceroute</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>nslookup / dig：DNS 查询</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>dig</span><span> A example.com
</span><span>3</span><span></span><span>dig</span><span> +short MX gmail.com
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>curl / wget：HTTP 请求与下载</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>curl</span><span> -I https://example.com               </span><span># 仅请求头</span><span>
</span><span>3</span><span></span><span>curl</span><span> -s https://api.github.com </span><span>|</span><span> jq </span><span>&#x27;.&#x27;</span><span>   </span><span># 与 jq 配合（需安装）</span><span>
</span><span>4</span><span></span><span>wget</span><span> -O page.html https://example.com
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>ssh / scp / sftp / rsync：远程登录与文件同步</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>ssh</span><span> user@host
</span><span>3</span><span></span><span>scp</span><span> ./file.txt user@host:/tmp/
</span><span>4</span><span></span><span>sftp</span><span> user@host
</span><span>5</span><span></span><span>rsync</span><span> -av --progress ./data/ user@host:/opt/data/
</span><span>6</span></code></div></div></div></pre>
<ul>
<li>nc (netcat)：端口测试/简易服务器</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>nc</span><span> -l </span><span>8080</span><span>
</span><span>3</span><span></span><span>nc</span><span> -vz </span><span>host</span><span> </span><span>22</span><span>            </span><span># 探测端口</span><span>
</span><span>4</span></code></div></div></div></pre>
<ol start="7">
<li>软件包管理（按发行版）</li>
</ol>
<ul>
<li>Debian/Ubuntu: apt</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>apt</span><span> update
</span><span>3</span><span></span><span>sudo</span><span> </span><span>apt</span><span> </span><span>install</span><span> </span><span>htop</span><span>
</span><span>4</span><span></span><span>apt</span><span> search redis
</span><span>5</span><span></span><span>sudo</span><span> </span><span>apt</span><span> remove </span><span>htop</span><span>
</span><span>6</span></code></div></div></div></pre>
<ul>
<li>CentOS/RHEL: yum/dnf</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> dnf </span><span>install</span><span> </span><span>htop</span><span>
</span><span>3</span><span></span><span>sudo</span><span> dnf remove </span><span>htop</span><span>
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>Arch: pacman</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> pacman -Syu
</span><span>3</span><span></span><span>sudo</span><span> pacman -S </span><span>htop</span><span>
</span><span>4</span></code></div></div></div></pre>
<ol start="8">
<li>系统信息与日志</li>
</ol>
<ul>
<li>uname / lsb_release / os-release：系统信息</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>uname</span><span> -a
</span><span>3</span><span></span><span>cat</span><span> /etc/os-release
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>df / du：磁盘占用</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>df</span><span> -h
</span><span>3</span><span></span><span>du</span><span> -sh /var/log/*
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>free / vmstat / iostat：内存与IO</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>free</span><span> -h
</span><span>3</span><span></span><span>vmstat</span><span> </span><span>1</span><span> </span><span>5</span><span>
</span><span>4</span><span>iostat -xz </span><span>1</span><span> </span><span>3</span><span>                 </span><span># 需安装 sysstat</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>lsof / dmesg / journalctl：打开文件/内核消息/系统日志</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>lsof</span><span> -i :80
</span><span>3</span><span></span><span>dmesg</span><span> </span><span>|</span><span> </span><span>tail</span><span>
</span><span>4</span><span>journalctl -xe                 </span><span># 最近错误</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>uptime / who / w / last：系统与登录</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>uptime</span><span>
</span><span>3</span><span></span><span>who</span><span>
</span><span>4</span>w
<span>5</span>last
<span>6</span></code></div></div></div></pre>
<ol start="9">
<li>文件系统与磁盘</li>
</ol>
<ul>
<li>lsblk / blkid：块设备与UUID</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span>lsblk -f
<span>3</span><span></span><span>sudo</span><span> blkid
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>mount / umount：挂载/卸载</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>mount</span><span> /dev/sdb1 /mnt
</span><span>3</span><span></span><span>sudo</span><span> </span><span>umount</span><span> /mnt
</span><span>4</span></code></div></div></div></pre>
<ul>
<li>fdisk / parted：分区管理（谨慎操作）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>fdisk</span><span> /dev/sdb
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>mkfs / fsck：格式化与检查（谨慎操作）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> mkfs.ext4 /dev/sdb1
</span><span>3</span><span></span><span>sudo</span><span> </span><span>fsck</span><span> -f /dev/sdb1
</span><span>4</span></code></div></div></div></pre>
<ol start="10">
<li>压缩与归档</li>
</ol>
<ul>
<li>tar：打包与解包</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>tar</span><span> -czf site.tar.gz ./site          </span><span># 压缩</span><span>
</span><span>3</span><span></span><span>tar</span><span> -xzf site.tar.gz                 </span><span># 解压到当前目录</span><span>
</span><span>4</span><span></span><span>tar</span><span> -tf site.tar.gz                  </span><span># 列表</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>gzip / bzip2 / xz / zip：</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>gzip</span><span> file.txt       </span><span># 生成 file.txt.gz</span><span>
</span><span>3</span>gunzip file.txt.gz
<span>4</span><span></span><span>zip</span><span> -r archive.zip ./docs
</span><span>5</span><span></span><span>unzip</span><span> archive.zip
</span><span>6</span></code></div></div></div></pre>
<ol start="11">
<li>定时任务</li>
</ol>
<ul>
<li>crontab / systemd timer</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>crontab</span><span> -e                                   </span><span># 编辑当前用户的定时任务</span><span>
</span><span>3</span><span></span><span># 例如：每天1:30执行备份</span><span>
</span><span>4</span><span></span><span># 30 1 * * * /usr/local/bin/backup.sh &gt;&gt; /var/log/backup.log 2&gt;&amp;1</span><span>
</span><span>5</span></code></div></div></div></pre>
<ol start="12">
<li>编辑器入门</li>
</ol>
<ul>
<li>nano / vim</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>nano</span><span> file.txt
</span><span>3</span><span></span><span>vim</span><span> file.txt            </span><span># 基本：i 插入，:w 保存，:q 退出，:wq 保存并退出</span><span>
</span><span>4</span></code></div></div></div></pre>
<ol start="13">
<li>安全与提权</li>
</ol>
<ul>
<li>sudo / su / visudo：</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> -v                     </span><span># 更新认证缓存</span><span>
</span><span>3</span><span></span><span>sudo</span><span> -l                     </span><span># 查看权限</span><span>
</span><span>4</span><span></span><span>sudo</span><span> visudo                 </span><span># 编辑 /etc/sudoers（安全校验）</span><span>
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>防火墙 ufw（Ubuntu）：</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> ufw status
</span><span>3</span><span></span><span>sudo</span><span> ufw allow </span><span>22</span><span>/tcp
</span><span>4</span><span></span><span>sudo</span><span> ufw </span><span>enable</span><span>
</span><span>5</span></code></div></div></div></pre>
<p>三、实用组合示例（管道思维）</p>
<ul>
<li>统计访问日志的 Top 10 IP</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>awk</span><span> </span><span>&#x27;{print $1}&#x27;</span><span> access.log </span><span>|</span><span> </span><span>sort</span><span> </span><span>|</span><span> </span><span>uniq</span><span> -c </span><span>|</span><span> </span><span>sort</span><span> -nr </span><span>|</span><span> </span><span>head</span><span> -n </span><span>10</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>查找大于 100MB 的日志并压缩</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>find</span><span> /var/log -type f -name </span><span>&quot;*.log&quot;</span><span> -size +100M -print0 </span><span>|</span><span> </span><span>xargs</span><span> -0 -I</span><span>{</span><span>}</span><span> </span><span>gzip</span><span> </span><span>&quot;{}&quot;</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>监控某进程打开的文件变化</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>watch</span><span> -n </span><span>1</span><span> </span><span>&quot;lsof -p </span><span>$(</span><span>pgrep -n myservice</span><span>)</span><span> | wc -l&quot;</span><span>
</span><span>3</span></code></div></div></div></pre>
<p>四、进阶命令与主题</p>
<ol>
<li>awk 进阶</li>
</ol>
<ul>
<li>条件、格式化与内置变量</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span># 过滤第5列大于100的行，并自定义输出格式</span><span>
</span><span>3</span><span></span><span>awk</span><span> </span><span>&#x27;BEGIN{FS=OFS=&quot;,&quot;} $5&gt;100 {printf &quot;user=%s, score=%d\n&quot;, $1, $5}&#x27;</span><span> data.csv
</span><span>4</span>
<span>5</span><span></span><span># 使用内置变量 NR(行号) 与 NF(列数)</span><span>
</span><span>6</span><span></span><span>awk</span><span> </span><span>&#x27;{print NR, NF, $NF}&#x27;</span><span> file.txt
</span><span>7</span></code></div></div></div></pre>
<ol start="2">
<li>sed 进阶</li>
</ol>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span># 仅在匹配行进行替换</span><span>
</span><span>3</span><span></span><span>sed</span><span> </span><span>&#x27;/ERROR/s/debug/DEBUG/g&#x27;</span><span> app.log
</span><span>4</span>
<span>5</span><span></span><span># 多点编辑：删除空行并去掉行首空格</span><span>
</span><span>6</span><span></span><span>sed</span><span> -e </span><span>&#x27;/^$/d&#x27;</span><span> -e </span><span>&#x27;s/^[[:space:]]\+//&#x27;</span><span> file.txt
</span><span>7</span></code></div></div></div></pre>
<ol start="3">
<li>find + -exec 与 xargs</li>
</ol>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span># 对查到的文件执行命令，{} 代表当前文件</span><span>
</span><span>3</span><span></span><span>find</span><span> </span><span>.</span><span> -type f -name </span><span>&quot;*.tmp&quot;</span><span> -exec </span><span>rm</span><span> -v </span><span>{</span><span>}</span><span> </span><span>\</span><span>;</span><span>
</span><span>4</span>
<span>5</span><span></span><span># 使用 -print0 与 xargs -0 安全处理空格</span><span>
</span><span>6</span><span></span><span>find</span><span> </span><span>.</span><span> -type f -name </span><span>&quot;*.jpg&quot;</span><span> -print0 </span><span>|</span><span> </span><span>xargs</span><span> -0 -I</span><span>{</span><span>}</span><span> convert </span><span>&quot;{}&quot;</span><span> -resize </span><span>50</span><span>% </span><span>&quot;{}&quot;</span><span>
</span><span>7</span></code></div></div></div></pre>
<ol start="4">
<li>Bash 脚本与健壮性</li>
</ol>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>#!/usr/bin/env bash</span><span>
</span><span>3</span><span></span><span>set</span><span> -euo pipefail
</span><span>4</span><span></span><span>IFS</span><span>=</span><span>$&#x27;</span><span>\n</span><span>\t</span><span>&#x27;</span><span>
</span><span>5</span>
<span>6</span><span></span><span>log</span><span>(</span><span>)</span><span> </span><span>{</span><span> </span><span>echo</span><span> </span><span>&quot;[</span><span>$(</span><span>date</span><span> +</span><span>&#x27;%F %T&#x27;</span><span>)</span><span>] </span><span>$*</span><span>&quot;</span><span>;</span><span> </span><span>}</span><span>
</span><span>7</span>
<span>8</span><span></span><span>usage</span><span>(</span><span>)</span><span> </span><span>{</span><span> </span><span>echo</span><span> </span><span>&quot;Usage: </span><span>$0</span><span> -f file -n number&quot;</span><span>;</span><span> </span><span>}</span><span>
</span><span>9</span>
<span>10</span><span></span><span># 参数解析</span><span>
</span><span>11</span><span></span><span>while</span><span> </span><span>getopts</span><span> </span><span>&quot;:f:n:&quot;</span><span> opt</span><span>;</span><span> </span><span>do</span><span>
</span><span>12</span><span>  </span><span>case</span><span> </span><span>&quot;</span><span>$opt</span><span>&quot;</span><span> </span><span>in</span><span>
</span><span>13</span><span>    f</span><span>)</span><span> </span><span>FILE</span><span>=</span><span>&quot;</span><span>$OPTARG</span><span>&quot;</span><span> </span><span>;</span><span>;</span><span>
</span><span>14</span><span>    n</span><span>)</span><span> </span><span>NUM</span><span>=</span><span>&quot;</span><span>$OPTARG</span><span>&quot;</span><span> </span><span>;</span><span>;</span><span>
</span><span>15</span><span>    *</span><span>)</span><span> usage</span><span>;</span><span> </span><span>exit</span><span> </span><span>1</span><span> </span><span>;</span><span>;</span><span>
</span><span>16</span><span>  </span><span>esac</span><span>
</span><span>17</span><span></span><span>done</span><span>
</span><span>18</span>
<span>19</span><span></span><span>:</span><span> </span><span>&quot;</span><span>${FILE</span><span>:?</span><span>required}</span><span>&quot;</span><span>;</span><span> </span><span>:</span><span> </span><span>&quot;</span><span>${NUM</span><span>:?</span><span>required}</span><span>&quot;</span><span>
</span><span>20</span>
<span>21</span><span>log </span><span>&quot;Processing </span><span>$FILE</span><span> with NUM=</span><span>$NUM</span><span>&quot;</span><span>
</span><span>22</span><span></span><span>awk</span><span> -v </span><span>num</span><span>=</span><span>&quot;</span><span>$NUM</span><span>&quot;</span><span> </span><span>&#x27;NR&lt;=num {print}&#x27;</span><span> </span><span>&quot;</span><span>$FILE</span><span>&quot;</span><span> </span><span>|</span><span> </span><span>tee</span><span> output.txt
</span><span>23</span></code></div></div></div></pre>
<ol start="5">
<li>进程/系统调试</li>
</ol>
<ul>
<li>strace：系统调用跟踪</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> </span><span>strace</span><span> -p </span><span>$(</span><span>pgrep -n nginx</span><span>)</span><span> -o /tmp/nginx.strace
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>ltrace：库调用跟踪</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> ltrace -p </span><span>$(</span><span>pgrep -n nginx</span><span>)</span><span> -o /tmp/nginx.ltrace
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>perf / valgrind / gdb（需安装）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> perf </span><span>top</span><span>
</span><span>3</span><span>valgrind --leak-check</span><span>=</span><span>full ./app
</span><span>4</span><span>gdb -q ./app -ex </span><span>&quot;run&quot;</span><span> -ex </span><span>&quot;bt&quot;</span><span>        </span><span># 运行并打印堆栈</span><span>
</span><span>5</span></code></div></div></div></pre>
<ol start="6">
<li>systemd 深入</li>
</ol>
<ul>
<li>管理服务与日志过滤</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> systemctl status nginx
</span><span>3</span><span></span><span>sudo</span><span> systemctl </span><span>enable</span><span> nginx --now
</span><span>4</span><span>journalctl -u nginx -f               </span><span># 仅查看某服务日志，跟随</span><span>
</span><span>5</span><span>journalctl --since </span><span>&quot;1 hour ago&quot;</span><span>      </span><span># 时间过滤</span><span>
</span><span>6</span></code></div></div></div></pre>
<ul>
<li>自定义 unit 示例</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span># /etc/systemd/system/myjob.service</span><span>
</span><span>3</span><span></span><span># [Unit]</span><span>
</span><span>4</span><span></span><span># Description=My Job</span><span>
</span><span>5</span><span></span><span>#</span><span>
</span><span>6</span><span></span><span># [Service]</span><span>
</span><span>7</span><span></span><span># Type=simple</span><span>
</span><span>8</span><span></span><span># ExecStart=/usr/local/bin/myjob.sh</span><span>
</span><span>9</span><span></span><span># Restart=on-failure</span><span>
</span><span>10</span><span></span><span>#</span><span>
</span><span>11</span><span></span><span># [Install]</span><span>
</span><span>12</span><span></span><span># WantedBy=multi-user.target</span><span>
</span><span>13</span>
<span>14</span><span></span><span>sudo</span><span> systemctl daemon-reload
</span><span>15</span><span></span><span>sudo</span><span> systemctl start myjob
</span><span>16</span><span></span><span>sudo</span><span> systemctl </span><span>enable</span><span> myjob
</span><span>17</span></code></div></div></div></pre>
<ol start="7">
<li>网络排查进阶</li>
</ol>
<ul>
<li>tcpdump（需 sudo）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>sudo</span><span> tcpdump -i any -nn port </span><span>80</span><span> -c </span><span>20</span><span>
</span><span>3</span></code></div></div></div></pre>
<ul>
<li>ss 高级过滤</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span>ss -p state established </span><span>&#x27;( sport = :80 or dport = :80 )&#x27;</span><span>
</span><span>3</span></code></div></div></div></pre>
<ol start="8">
<li>Git 与构建工具</li>
</ol>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>git</span><span> log --oneline --graph --decorate --all
</span><span>3</span><span></span><span>git</span><span> rebase -i HEAD~5
</span><span>4</span><span></span><span>git</span><span> bisect start </span><span>;</span><span> </span><span>git</span><span> bisect bad </span><span>;</span><span> </span><span>git</span><span> bisect good v1.2.3
</span><span>5</span>
<span>6</span><span></span><span>make</span><span> -j</span><span>$(</span><span>nproc</span><span>)</span><span>
</span><span>7</span><span>cmake -S </span><span>.</span><span> -B build </span><span>&amp;&amp;</span><span> cmake --build build
</span><span>8</span></code></div></div></div></pre>
<ol start="9">
<li>容器与编排（基础）</li>
</ol>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>docker</span><span> run --rm -it alpine:latest </span><span>sh</span><span>
</span><span>3</span><span></span><span>docker</span><span> </span><span>ps</span><span> -a
</span><span>4</span><span></span><span>docker</span><span> logs -f mycontainer
</span><span>5</span><span></span><span>docker</span><span> </span><span>exec</span><span> -it mycontainer </span><span>sh</span><span>
</span><span>6</span></code></div></div></div></pre>
<ol start="10">
<li>安全与防护进阶</li>
</ol>
<ul>
<li>SELinux（RHEL/CentOS）</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span>getenforce
<span>3</span><span></span><span>sudo</span><span> semanage fcontext -a -t httpd_sys_content_t </span><span>&quot;/srv/www(/.*)?&quot;</span><span>
</span><span>4</span><span></span><span>sudo</span><span> restorecon -Rv /srv/www
</span><span>5</span></code></div></div></div></pre>
<ul>
<li>iptables/ufw 简述（按发行版使用 ufw 或 firewall-cmd 更易）</li>
</ul>
<ol start="11">
<li>命令行生产力技巧</li>
</ol>
<ul>
<li>快捷历史与别名</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>history</span><span> </span><span>|</span><span> </span><span>tail</span><span>
</span><span>3</span><span></span><span>alias</span><span> </span><span>ll</span><span>=</span><span>&#x27;ls -lah&#x27;</span><span>
</span><span>4</span><span></span><span>!</span><span>!</span><span>         </span><span># 上一条命令</span><span>
</span><span>5</span><span></span><span>!</span><span>$         </span><span># 上一条命令最后一个参数</span><span>
</span><span>6</span></code></div></div></div></pre>
<ul>
<li>进程替换与子进程</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>diff</span><span> </span><span>&lt;</span><span>(</span><span>sort</span><span> a.txt</span><span>)</span><span> </span><span>&lt;</span><span>(</span><span>sort</span><span> b.txt</span><span>)</span><span>
</span><span>3</span></code></div></div></div></pre>
<ol start="12">
<li>常见排错范式</li>
</ol>
<ul>
<li>CPU/内存/IO/网络/日志五要素</li>
</ul>
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4.887 20h11.868c.893 0 1.664 -.665 1.847 -1.592l2.358 -12c.212 -1.081 -.442 -2.14 -1.462 -2.366a1.784 1.784 0 0 0 -.385 -.042h-11.868c-.893 0 -1.664 .665 -1.847 1.592l-2.358 12c-.212 1.081 .442 2.14 1.462 2.366c.127 .028 .256 .042 .385 .042z"></path><path d="M9 8l4 4l-6 4"></path><path d="M12 16h3"></path></svg><span>BASH</span></div><div></div></div><div><div><code><span>1</span><span># bash</span><span>
</span><span>2</span><span></span><span>top</span><span> </span><span>|</span><span> </span><span>head</span><span> -n </span><span>20</span><span>
</span><span>3</span><span></span><span>free</span><span> -h
</span><span>4</span><span>iostat -xz </span><span>1</span><span> </span><span>3</span><span>
</span><span>5</span>ss -tulnp
<span>6</span><span>journalctl -p err -n </span><span>100</span><span>
</span><span>7</span></code></div></div></div></pre>
<p>五、学习与使用建议</p>
<ul>
<li>将命令按任务组合，熟悉标准输入输出与管道。</li>
<li>优先使用安全选项：例如 rm -i，find 配合 -print0 与 xargs -0。</li>
<li>脚本中设置 set -euo pipefail，减少隐性错误。</li>
<li>区分发行版包管理器与服务管理器（systemd vs SysV）。</li>
</ul>
<p>如果你使用的是特定发行版（如 Ubuntu、CentOS、Arch 等），或有具体场景（开发、运维、数据处理），告诉我，我可以按你的环境定制更贴近实际的命令清单与脚本模板。</p></div></div>
<hr />
</div>

        <hr />
        <a href="https://chatboxai.app" target="_blank">
            <img src='https://chatboxai.app/icon.png'>
            <b style='font-size:30px'>Chatbox AI</b>
        </a>
        <p><a a href="https://chatboxai.app" target="_blank">https://chatboxai.app</a></p>
    </div>
</div>
