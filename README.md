howdoi-emacs
============

Search stack overflow for answers to programming questions.

This snippet was written on the morning of january 1, 2014. My head
hurt and I was tired of copy and pasting.

By invoking _M-x howdoi_ you will be asked what you wish to look
for. Lets assume you are in markdown mode and you want to know how you
can create a table.

    Invoke: M-x howdoi
	Minibuf: Search for: how do I create a table in markdown

After invoking the command stack overflow will be searched and the
result will be shown in a new buffer, called *howdoi*. The major mode
of the buffer is set to the major mode from which the command was
executed.

In our example the result would be:

    --------------------------------------------------
    | No | Sadly        | There is none              |
    --------------------------------------------------
    | Except this, which is a poor alternative       |
    --------------------------------------------------
    | There really      | should be one              |
    --------------------------------------------------

# Prerequisites

You will need the wonderful howdoi tool written by Benjamin
Gleitzman. It is available on gleitz/howdoi.

# Usage

As this is currently a very rough first setup, you would basically
just load the file in your *init.el*:

```elisp
(load "~/where/you/cloned/it/howdoi-emacs/howdoi.el")
```
When the code becomes more complete the setup will be more elegant.
