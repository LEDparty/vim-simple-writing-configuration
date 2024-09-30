# About

This is a simple alternative to the more complex vim configurations for
writers: vim was created for the purpose of writing computer programs, which is
very different from writing documents. Rather than provide install
instructions separately, the tiny amount of code completely explained. This repository can be used in the fallowing ways:

-if you want to use vim mainly (or only) for writing documents, then you can
just copy the .vimrc file to your home directly. This should work for linux and
apple desktop systems.

-if you want to switch between writing and coding, you can copy the code in the
"copy" file to your own vimrc, and this will give you the commands "Write" and
"Code". A sessions document will keep track of your preferred settings, and you
can switch between writing and coding for each document.

-This makes navigating the virtual lines and "real" lines the same:

<code><pre>   
nnoremap j gj
nnoremap k gk
</code></pre>

-writers normally start typing off the bat, so this ensures vim will start in
insert mode. With coding, you are probably spending more time editing a text
file instead of typing more characters into it, which is why it starts in normal
mode by default:

<code><pre>
startinsert
</code></pre>

-for whatever reason, vim by default does not remember where your cursor was the
last time you were editing the document, which in my opinion, a universally
helpful setting. This vim code changes this behavior:

<code><pre>
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
<code></pre>

-writing software needs to let the user continue typing regardless of the
number of words that fit in a line, and it needs to automatically put words that exceed the line length on the next line:

<pre><code>
set wrap
set textwidth=80
set linebreak
</pre></code>

This is one of the key features that separates word processors from text 
editors: but now we can combine that with the powers of vim.

-Since we may need to copy the whole document to a word processor (or website,
etc.), let's create a mapping that copies the entire document to the mouse
clipboard:

<pre><code>
nnoremap <c-y> gg"+yG
</pre></code>

You can now press ctrl + y to copy and paste an entire document to any window
you please.

-vim spell checking, since we will be dealing with english words as writers.
Vim also offers ways of moving between mispelled words, and can give you a list
of alternate spellings:

set spell

-and finally, since writers tend to think of their work in terms of numbers of
words (instead of numbers of lines, as with programmers/coders), let's put the
word count at the bottom of the page:

<pre><code>
set statusline=%F\ \ \ \ Words:\ %{wordcount().words}\ \ \ \ Col:\ %c
</pre></code>
