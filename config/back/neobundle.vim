
" Plugins with NeoBundle
"---------------------------------------------------------

" Always loaded {{{
" -------------
NeoBundle 'Shougo/vimproc.vim', {'build' : 'make'}
NeoBundle 'itchyny/vim-cursorword'
NeoBundle 'itchyny/vim-gitbranch'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'rafi/vim-tinyline'
NeoBundle 'rafi/vim-tagabana'
NeoBundle 'bogado/file-line'
NeoBundle 'thinca/vim-localrc'

" LAZY LOADING from here on!
" --------------------------------------------------------

" Fetch repositories, but don't add to runtimepath
NeoBundleFetch 'chriskempson/base16-shell'
NeoBundleFetch 'rafi/awesome-vim-colorschemes'

" }}}
" Language {{{
" --------
<<<<<<< HEAD
NeoBundleLazy 'othree/html5.vim', { 'filetypes': 'html' }
NeoBundleLazy 'mustache/vim-mustache-handlebars', { 'filetypes': 'html' }
NeoBundleLazy 'rcmdnk/vim-markdown', { 'filetypes': 'markdown' }
NeoBundleLazy 'chase/vim-ansible-yaml', { 'filetypes': [ 'yaml', 'ansible'] }
NeoBundleLazy 'mitsuhiko/vim-jinja', { 'filetypes': [ 'htmljinja', 'jinja' ] }
NeoBundleLazy 'groenewege/vim-less', { 'filetypes': 'less' }
NeoBundleLazy 'hail2u/vim-css3-syntax', { 'filetypes': 'css' }
NeoBundleLazy 'chrisbra/csv.vim', { 'filetypes': 'csv' }
NeoBundleLazy 'hynek/vim-python-pep8-indent', { 'filetypes': 'python' }
NeoBundleLazy 'robbles/logstash.vim', { 'filetypes': 'logstash' }
NeoBundleLazy 'tmux-plugins/vim-tmux', { 'filetypes': 'tmux' }
NeoBundleLazy 'elzr/vim-json', { 'filetypes': 'json' }
NeoBundleLazy 'PotatoesMaster/i3-vim-syntax', { 'filetypes': 'i3' }
NeoBundleLazy 'jamestomasino/vim-writingsyntax', { 'filetypes': 'writing' }
NeoBundleLazy 'fatih/vim-go', {
	\ 'filetypes': 'go',
	\ }
NeoBundleLazy 'davidhalter/jedi-vim', {
	\ 'filetypes': 'python'
	\ }
NeoBundleLazy 'vim-ruby/vim-ruby', {
	\ 'mappings': '<Plug>',
	\ 'filetypes': 'ruby'
	\ }
NeoBundleLazy 'jstrater/mpvim', {
	\ 'filetypes': 'portfile'
	\ }

" }}}
" JavaScript {{{
" ----------
NeoBundleLazy 'jelera/vim-javascript-syntax', { 'filetypes': 'javascript' }
NeoBundleLazy 'jiangmiao/simple-javascript-indenter', {
	\ 'filetypes': 'javascript',
	\ }
NeoBundleLazy 'marijnh/tern_for_vim', {
	\   'build': { 'others': 'npm install' },
	\   'disabled': ! executable('npm') || $SSH_CLIENT,
	\   'filetypes': 'javascript'
	\ }

" }}}
" PHP {{{
" ---
NeoBundleLazy 'StanAngeloff/php.vim', { 'filetypes': 'php' }
NeoBundleLazy 'rayburgemeestre/phpfolding.vim', { 'filetypes': 'php' }
NeoBundleLazy 'shawncplus/phpcomplete.vim', {
	\ 'insert': 1,
	\ 'filetypes': 'php'
	\ }
NeoBundleLazy 'tobyS/pdv', {
	\ 'filetypes': 'php',
	\ 'depends': 'tobyS/vmustache'
=======
NeoBundleLazy 'othree/html5.vim', {'on_ft': 'html'}
NeoBundleLazy 'mustache/vim-mustache-handlebars', {'on_ft': 'html'}
NeoBundleLazy 'rcmdnk/vim-markdown', {'on_ft': 'markdown'}
NeoBundleLazy 'chase/vim-ansible-yaml', {'on_ft': ['yaml', 'ansible']}
NeoBundleLazy 'mitsuhiko/vim-jinja', {'on_ft': ['htmljinja', 'jinja']}
NeoBundleLazy 'groenewege/vim-less', {'on_ft': 'less'}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'on_ft': 'css'}
NeoBundleLazy 'chrisbra/csv.vim', {'on_ft': 'csv'}
NeoBundleLazy 'hynek/vim-python-pep8-indent', {'on_ft': 'python'}
NeoBundleLazy 'robbles/logstash.vim', {'on_ft': 'logstash'}
NeoBundleLazy 'tmux-plugins/vim-tmux', {'on_ft': 'tmux'}
NeoBundleLazy 'elzr/vim-json', {'on_ft': 'json'}
NeoBundleLazy 'cespare/vim-toml', {'on_ft': 'toml'}
NeoBundleLazy 'PotatoesMaster/i3-vim-syntax', {'on_ft': 'i3'}
NeoBundleLazy 'ekalinin/Dockerfile.vim', {'on_ft': 'Dockerfile'}
NeoBundleLazy 'jstrater/mpvim', {'on_ft': 'portfile'}
NeoBundleLazy 'vim-ruby/vim-ruby', {'on_ft': 'ruby', 'on_map': '<Plug>'}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'on_ft': 'javascript'}
NeoBundleLazy 'jiangmiao/simple-javascript-indenter', {'on_ft': 'javascript'}
NeoBundleLazy 'StanAngeloff/php.vim', {'on_ft': 'php'}
NeoBundleLazy 'rayburgemeestre/phpfolding.vim', {'on_ft': 'php'}
NeoBundleLazy 'rafi/vim-phpspec', {
	\ 'on_ft': 'php',
	\ 'on_cmd': ['PhpSpecRun', 'PhpSpecRunCurrent']
>>>>>>> upstream/master
	\ }
NeoBundleLazy 'fatih/vim-go', {
	\ 'on_ft': 'go',
	\ 'on_cmd': ['GoInstallBinaries', 'GoUpdateBinaries']
	\ }

" }}}
" Commands {{{
" --------
NeoBundleLazy 'Shougo/vimfiler.vim', {
<<<<<<< HEAD
	\ 'depends': [
	\   'Shougo/unite.vim',
	\   'Shougo/tabpagebuffer.vim',
	\   'itchyny/unite-preview',
	\   't9md/vim-choosewin'
	\ ],
	\ 'mappings': '<Plug>',
	\ 'explorer': 1,
	\ 'commands': [
	\    { 'name': [ 'VimFiler', 'Edit', 'Write'],
	\      'complete': 'customlist,vimfiler#complete' },
	\    'Read', 'Source'
	\ ]}
NeoBundleLazy 'Shougo/vinarise.vim', {
	\ 'commands': [
	\   { 'name': 'Vinarise', 'complete': 'file' }
	\ ]}
NeoBundleLazy 'scrooloose/syntastic', {
	\ 'autoload': {
	\   'commands': [
	\     'SyntasticCheck', 'SyntasticStatuslineFlag',
	\     'SyntasticToggleMode', 'Errors', 'SyntasticInfo'
	\   ]
	\ }}
NeoBundleLazy 'lambdalisue/vim-gita', {
	\ 'autoload': { 'commands': [ 'Gita' ] }
	\ }
NeoBundleLazy 'lambdalisue/vim-gista', {
	\ 'depends': [
	\    'Shougo/unite.vim',
	\    'tyru/open-browser.vim',
	\ ],
	\ 'autoload': {
	\    'commands': ['Gista'],
	\    'mappings': '<Plug>(gista-',
	\    'unite_sources': 'gista',
	\}}
NeoBundleLazy 'sjl/gundo.vim', {
	\ 'disabled': ! has('python'),
	\ 'vim_version': '7.3',
	\ 'autoload': { 'commands': [ 'GundoToggle' ] }
	\ }
NeoBundleLazy 'haya14busa/incsearch.vim', {
	\ 'mappings': '<Plug>(incsearch-'
	\ }
NeoBundleLazy 'gorkunov/smartpairs.vim', {
	\ 'autoload': {
	\  'commands': [ 'SmartPairs', 'SmartPairsI', 'SmartPairsA' ],
	\  'mappings': [[ 'n', 'viv', 'vav' ], [ 'v', 'v' ]]
	\ }}
NeoBundleLazy 'farseer90718/vim-colorpicker', {
	\ 'commands': 'ColorPicker'
	\ }
NeoBundleLazy 't9md/vim-smalls', { 'mappings': '<Plug>' }
NeoBundleLazy 'tyru/open-browser.vim', {
	\ 'mappings': '<Plug>',
	\ 'functions': 'openbrowser#open'
	\ }
NeoBundleLazy 'thinca/vim-prettyprint', { 'commands': 'PP' }
NeoBundleLazy 'thinca/vim-quickrun', { 'mappings': '<Plug>' }
NeoBundleLazy 'thinca/vim-ref', { 'unite_sources': 'ref' }
NeoBundleLazy 'itchyny/dictionary.vim', { 'commands': 'Dictionary' }
NeoBundleLazy 'dhruvasagar/vim-dotoo', {
	\ 'mappings': [['n', 'gA', 'gC']]
	\ }
NeoBundleLazy 'vimwiki/vimwiki', {
	\ 'rev': 'dev',
	\ 'commands': [
	\   'VimwikiIndex', 'VimwikiTabIndex', 'VimwikiUISelect',
	\   'VimwikiMakeDiaryNote', 'VimwikiTabMakeDiaryNote',
	\   'VimwikiDiaryIndex'
	\ ]}
NeoBundleLazy 'mattn/calendar-vim', {
	\ 'commands': [ 'Calendar', 'CalendarH', 'CalendarT' ],
	\ 'mappings': [[ 'n', '<Leader>cal', '<Leader>caL' ]]
	\ }
NeoBundleLazy 'beloglazov/vim-online-thesaurus', {
	\ 'commands': [
	\   'OnlineThesaurusCurrentWord', 'Thesaurus'
	\ ]}
NeoBundleLazy 'itchyny/vim-closebuffer', {
	\ 'insert': 1,
	\ 'mappings': '<Plug>'
	\ }
=======
	\ 'depends': 'Shougo/unite.vim',
	\ 'on_map': '<Plug>',
	\ 'on_path': '.*',
	\ 'on_cmd': 'VimFiler'
	\ }
NeoBundleLazy 'tyru/caw.vim', {'on_map': '<Plug>'}
NeoBundleLazy 'lambdalisue/vim-findent', {'on_path': '.*'}
NeoBundleLazy 'lambdalisue/vim-gita', {'on_cmd': 'Gita'}
NeoBundleLazy 't9md/vim-choosewin', {'on_map': '<Plug>(choosewin)'}
NeoBundleLazy 'haya14busa/vim-asterisk', {'on_map': '<Plug>(asterisk-'}
NeoBundleLazy 'haya14busa/incsearch.vim', {'on_map': '<Plug>(incsearch-'}
NeoBundleLazy 'mbbill/undotree', {'on_cmd': 'UndotreeToggle'}
NeoBundleLazy 'Shougo/vinarise.vim', {'on_cmd': 'Vinarise'}
NeoBundleLazy 'terryma/vim-expand-region', {'on_map': [['x', '<Plug>']]}
NeoBundleLazy 'rafi/vim-tinycomment', {
	\ 'augroup': 'tinycomment',
	\ 'on_cmd': ['TinyCommentLines', 'TinyCommentBlock'],
	\ 'on_map': [['n', '<leader>v'], ['v', '<leader>v'], ['v', '<leader>V']]}

if $VIM_MINIMAL ==? ''
	NeoBundleLazy 'lambdalisue/vim-gista', {
		\ 'on_cmd': 'Gista',
		\ 'on_map': '<Plug>',
		\ 'on_unite': 'gista',
		\ }
	NeoBundleLazy 'thinca/vim-guicolorscheme', {'on_cmd': 'GuiColorScheme'}
	NeoBundleLazy 'guns/xterm-color-table.vim', {'on_cmd': 'XtermColorTable'}
	NeoBundleLazy 'thinca/vim-quickrun', {'on_map': '<Plug>'}
	NeoBundleLazy 'itchyny/dictionary.vim', {'on_cmd': 'Dictionary'}
	NeoBundleLazy 'thinca/vim-prettyprint', {'on_cmd': 'PP', 'on_func': 'PP'}
	NeoBundleLazy 'beloglazov/vim-online-thesaurus', {
		\ 'on_cmd': ['OnlineThesaurusCurrentWord', 'Thesaurus']}
	NeoBundleLazy 'junegunn/goyo.vim', {
		\ 'depends': 'junegunn/limelight.vim',
		\ 'on_cmd': 'Goyo'
		\ }
	NeoBundleLazy 'vimwiki/vimwiki', {
		\ 'on_cmd': [
		\   'VimwikiIndex', 'VimwikiTabIndex', 'VimwikiUISelect',
		\   'VimwikiMakeDiaryNote', 'VimwikiTabMakeDiaryNote',
		\   'VimwikiDiaryIndex'
		\ ]}
endif
>>>>>>> upstream/master

" }}}
" Interface {{{
" ---------
<<<<<<< HEAD
NeoBundleLazy 'junegunn/goyo.vim', {
	\ 'depends': 'junegunn/limelight.vim',
	\ 'autoload': {
	\   'commands': 'Goyo'
	\ }}
NeoBundleLazy 'BufClose.vim', { 'commands': [ 'BufClose' ]}
NeoBundleLazy 'matchit.zip', { 'mappings': [[ 'nxo', '%', 'g%' ]]}
NeoBundleLazy 'Yggdroot/indentLine', { 'filetypes': 'all' }
NeoBundleLazy 'xolox/vim-session', {
	\ 'depends': 'xolox/vim-misc',
	\ 'augroup': 'PluginSession',
	\ 'autoload': {
	\ 'commands': [
	\   { 'name': [ 'OpenSession', 'CloseSession' ],
	\     'complete': 'customlist,xolox#session#complete_names' },
	\   { 'name': [ 'SaveSession' ],
	\     'complete': 'customlist,xolox#session#complete_names_with_suggestions' }
	\ ],
	\ 'functions': [ 'xolox#session#complete_names',
	\                'xolox#session#complete_names_with_suggestions' ],
	\ 'unite_sources': [ 'session', 'session/new' ]
	\ }}
=======
NeoBundleLazy 'matchit.zip', {'on_map': [['nxo', '%', 'g%']]}
NeoBundleLazy 'kana/vim-niceblock', {'on_map': '<Plug>'}
NeoBundleLazy 'rhysd/accelerated-jk', {'on_map': '<Plug>'}
NeoBundleLazy 'rhysd/clever-f.vim', {'on_map': [['n', 'f', 'F', 't', 'T']]}
NeoBundleLazy 'Konfekt/FastFold', {'on_path': '.*'}
NeoBundleLazy 'Shougo/tabpagebuffer.vim', {'on_ft': 'all'}
>>>>>>> upstream/master

" }}}
" Completion {{{
" ----------
<<<<<<< HEAD
NeoBundleLazy 'Raimondi/delimitMate', { 'insert': 1 }
NeoBundleLazy 'Shougo/echodoc.vim', { 'insert': 1 }
NeoBundleLazy 'kana/vim-smartchr', { 'insert': 1 }
NeoBundleLazy 'Shougo/deoplete.nvim', { 'insert': 1 }
=======
NeoBundleLazy 'Shougo/deoplete.nvim', {
	\ 'depends': 'Shougo/context_filetype.vim',
	\ 'disabled': ! has('nvim'),
	\ 'on_i': 1
	\ }
NeoBundleLazy 'Shougo/neocomplete', {
	\ 'depends': 'Shougo/context_filetype.vim',
	\ 'disabled': ! has('lua') || has('nvim'),
	\ 'on_i': 1
	\ }
>>>>>>> upstream/master
NeoBundleLazy 'Shougo/neosnippet.vim', {
	\ 'depends': ['Shougo/neosnippet-snippets', 'Shougo/context_filetype.vim'],
	\ 'on_i': 1,
	\ 'on_ft': 'snippet',
	\ 'on_unite': ['neosnippet', 'neosnippet/user', 'neosnippet/runtime']}
NeoBundleLazy 'Raimondi/delimitMate', {'on_i': 1}
NeoBundleLazy 'Shougo/echodoc.vim', {'on_i': 1}
NeoBundleLazy 'Shougo/neco-vim', {'on_ft': 'vim', 'on_i': 1}
NeoBundleLazy 'zchee/deoplete-go', {'on_ft': 'go', 'on_i': 1}
NeoBundleLazy 'Shougo/neco-syntax', {'on_i': 1}
NeoBundleLazy 'Shougo/neopairs.vim', {'on_i': 1}
NeoBundleLazy 'Shougo/neoinclude.vim', {'on_ft': 'all'}

if $VIM_MINIMAL ==? ''
	NeoBundleLazy 'benekastah/neomake', {'on_cmd': ['Neomake']}
	NeoBundleLazy 'davidhalter/jedi-vim', {'on_ft': 'python'}
	NeoBundleLazy 'shawncplus/phpcomplete.vim', {'on_i': 1, 'on_ft': 'php'}
	NeoBundleLazy 'ternjs/tern_for_vim', {
		\ 'build': {'others': 'npm install'},
		\ 'disabled': ! executable('npm'),
		\ 'on_i': 1,
		\ 'on_ft': 'javascript'
		\ }
endif

" }}}
" Unite {{{
" -----
NeoBundleLazy 'Shougo/unite.vim', {
	\ 'depends': 'Shougo/neomru.vim',
	\ 'on_cmd': 'Unite'
	\ }

" Unite sources {{{
" -------------
NeoBundleLazy 'ujihisa/unite-colorscheme'
NeoBundleLazy 'osyo-manga/unite-filetype'
NeoBundleLazy 'thinca/vim-unite-history'
NeoBundleLazy 'Shougo/unite-build'
NeoBundleLazy 'Shougo/unite-outline'
NeoBundleLazy 'tacroe/unite-mark'
NeoBundleLazy 'Shougo/junkfile.vim', {'on_unite': 'junkfile'}
NeoBundleLazy 'Shougo/neossh.vim', {'on_ft': 'vimfiler', 'sources': 'ssh'}
NeoBundleLazy 'tsukkee/unite-tag', {
	\ 'on_unite': ['tag', 'tag/file', 'tag/include']
	\ }
NeoBundleLazy 'osyo-manga/unite-quickfix', {
<<<<<<< HEAD
	\ 'unite_sources': [ 'quickfix', 'location_list' ]
	\ }
NeoBundleLazy 'Shougo/neossh.vim', {
	\ 'filetypes': 'vimfiler',
	\ 'sources': 'ssh',
	\ }
NeoBundleLazy 'joker1007/unite-pull-request', {
	\ 'depends': 'mattn/webapi-vim',
	\ 'unite_sources': [ 'pull_request', 'pull_request_file' ]
	\ }
NeoBundleLazy 'Shougo/junkfile.vim', {
	\ 'unite_sources': 'junkfile'
=======
	\ 'on_unite': ['quickfix', 'location_list']
>>>>>>> upstream/master
	\ }

if $VIM_MINIMAL ==? ''
	NeoBundleLazy 'rafi/vim-unite-issue', {'depends': 'mattn/webapi-vim'}
	NeoBundleLazy 'joker1007/unite-pull-request', {
		\ 'depends': 'mattn/webapi-vim',
		\ 'on_unite': ['pull_request', 'pull_request_file']
		\ }
endif
" }}}

" }}}
" Operators {{{
" ---------
NeoBundleLazy 'kana/vim-operator-user'
NeoBundleLazy 'kana/vim-operator-replace', {
	\ 'depends': 'vim-operator-user',
	\ 'on_map': [['nx', '<Plug>']]
	\ }
NeoBundleLazy 'rhysd/vim-operator-surround', {
	\ 'depends': 'vim-operator-user',
	\ 'on_map': '<Plug>'
	\ }

" }}}
" Text objects {{{
" ------------
NeoBundleLazy 'kana/vim-textobj-user'
NeoBundleLazy 'osyo-manga/vim-textobj-multiblock', {
	\ 'depends': 'vim-textobj-user',
	\ 'on_map': [['ox', '<Plug>']]
	\ }
NeoBundleLazy 'haya14busa/vim-operator-flashy', {
	\ 'depends': 'vim-textobj-user',
	\ 'on_map': '<Plug>'
	\ }
NeoBundleLazy 'AndrewRadev/sideways.vim', {'on_map': [['ox', '<Plug>']]}
NeoBundleLazy 'bkad/CamelCaseMotion', {
	\ 'on_map': ['<Plug>CamelCaseMotion_w', '<Plug>CamelCaseMotion_b']
	\ }
" }}}

" vim: set ts=2 sw=2 tw=80 noet :
