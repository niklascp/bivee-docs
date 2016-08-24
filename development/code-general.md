# General coding conventions

[http://mdo.github.io/code-guide/] has really great coding guidelines that are good to follow in general.

`.editorconfig` files are a great way to keep everybody's IDE's on the same page, formatting-wise. Read more [here](http://editorconfig.org). We all like Sublime Text, and [here's a plugin along with some recommended defaults](https://github.com/sindresorhus/editorconfig-sublime). 

Here's an [.editorconfig with Bivee defaults](https://gist.github.com/2a81eec5ba4215de5c92.git).


## Spacing

Tabs: 4 spaces ("soft tabs")

## Commenting

Add `TODO:` when a known code revision is required, such as a rewrite, efficiency improvement, bug, or removing test code. A name can be added (e.g., `\\ TODO: Jay, the UI needs to be fixed after adding this feature`), which makes it easy for a person to see what they need to do via a terminal command like `grep -R "TODO:" | grep -i "Jay"`
