install jellybeans.vim
```
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
```

vscode vim extension setting:
```
vim:Foldfix
- [X] Uses a hack to move around folds properly
```

Add the following lines into "Editor: Token Color Customizations" setting, inside settings.json file.
```
"workbench.colorCustomizations": {
    "editor.selectionBackground": "#135564",
    "editor.selectionHighlightBackground": "#135564"
},
```
