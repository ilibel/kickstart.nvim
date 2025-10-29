### ~/.ideavimrc
```
" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc


"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

set clipboard+=unnamedplus

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

" Redo
map U <C-r>

" Move cursor to the first non-blank character
map H ^
" Move cursor to the last character in the line
map L $

" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapJumpParent = 'h'

" set <leader> to <space>
let mapleader = " "

map <leader>or <Action>(RedesignedRunConfigurationSelector)

" Search
map <leader>sf <Action>(GotoFile)
map <leader>sg <Action>(FindInPath)

" Test
map <leader>ot <Action>(GotoTest)
map <leader>T <Action>(RunClass)

" Debug
map <M-m> <Action>(XDebugger.MuteBreakpoints)
map <M-b> <Action>(ToggleLineBreakpoint)
map <M-j> <Action>(StepOver)
map <M-k> <Action>(StepOut)
map <M-s> <Action>(StepInto)
map <M-c> <Action>(Resume)

" LSP
map grd <Action>(GotoDeclaration)
map grt <Action>(GotoTypeDeclaration)
map gri <Action>(GotoImplementation)
map grr <Action>(GotoDeclaration)
map grn <Action>(RenameElement)
map gra <Action>(ShowIntentionActions)

map <leader>oi <Action>(OptimizeImports)

imap <C-s> <Action>(CallInlineCompletionAction)
map <C-s> <Action>(CallInlineCompletionAction)

vmap <leader>p "\"_dP"
vmap K <Action>(MoveLineUp)
vmap J <Action>(MoveLineDown)
map <C-y>f <Action>(CopyReferencePopupGroup)

map <C-w>v <Action>(SplitVertically)
map <C-w>s <Action>(SplitHorizontally)
map <C-w>r <Action>(MoveTabRight)
map <C-w>q <Action>(CloseContent)

nmap '' <Action>(Back)
nmap '. <Action>(JumpToLastChange)
nmap <leader><leader> <Action>(Switcher)
nmap <leader>tb <Action>(Annotate)
"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"
```
