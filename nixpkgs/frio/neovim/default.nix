{ config, pkgs, ... }:

#SHA256 example: ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb
#SHA256 example: sha256-ypeBEsobvcr6wjGzmiPcTaeG7/gUfE5yuYB3ha/uSLs=
#sha256="sha256-ypeBEsobvcr6wjGzmiPcTaeG7/gUfE5yuYB3ha/uSLs=";
with rec { };
  let
    dockerfile-vim = pkgs.vimUtils.buildVimPlugin {
      name = "dockerfile-vim";

      src = pkgs.fetchFromGitHub {
        owner = "bogdan-manole";
        repo="Dockerfile.vim";
        rev="31710bacdc30f6fb9df51f9d4e0c03bea34cc520";
        sha256="1hz7mpi531lxqvxn7ygpsa5zpgmr6i0ivi5rjszmnmqhriafvp3k";
      };
    };
    fzf-preview = pkgs.vimUtils.buildVimPlugin {
      name = "fzf-preview.vim";
      pname = "fzf-preview.vim";

      src = pkgs.fetchFromGitHub {
        owner = "yuki-ycino";
        repo="fzf-preview.vim";
        rev="c36727c1a94279ed6811f38272ad4a9637436c36";
        sha256="sha256-dGo+GZqhrkXBP+xy/PvKLWcVsJPvP0+7HKxLBAow/fY=";
      };
    };
    paredit-vim = pkgs.vimUtils.buildVimPlugin {
      name = "paredit";

      src = pkgs.fetchFromGitHub {
        owner = "vim-scripts";
        repo="paredit.vim";
        rev="791c3a0cc3155f424fba9409a9520eec241c189c";
        sha256="15lg33bgv7afjikn1qanriaxmqg4bp3pm7qqhch6105r1sji9gz9";
      };
    };
    vim-niji = pkgs.vimUtils.buildVimPlugin {
      name = "vim-niji";

      src = pkgs.fetchFromGitHub {
        owner = "amdt";
        repo="vim-niji";
        rev="e8fea68c567ad9e5bb2015e02f93873666bcf8c7";
        sha256="0ws532zksf117zcpwwn60acmy2plbkyswbcv2p3yhicyb0grsd1i";
      };
    };
    vim-rest-console = pkgs.vimUtils.buildVimPlugin {
      name = "vim-rest-console";
      src = pkgs.fetchFromGitHub {
        owner = "diepm";
        repo="vim-rest-console";
        rev="7b407f47185468d1b57a8bd71cdd66c9a99359b2";
        sha256="1x7qicd721vcb7zgaqzy5kgiqkyj69z1lkl441rc29n6mwncpkjj";
      };
    };
    vim-material-monokai = pkgs.vimUtils.buildVimPlugin {
      name = "vim-material-monokai";
      src = pkgs.fetchFromGitHub {
        owner = "skielbasa";
        repo="vim-material-monokai";
        rev="989b0e2fd9858b1da758b76fd0aa1a67ce172690";
        sha256="1ncazsrl25n70czzkaym7fc728vy08dpc8c5ywxlfxi673fgkv0m";
      };
    };
    cake16 = pkgs.vimUtils.buildVimPlugin {
      name = "cake16";
      src = pkgs.fetchFromGitHub {
        owner = "zefei";
        repo="cake16";
        rev="7367a7caa750e6379c0e8a56229347b9a0a24048";
        sha256="0x34nbnj89b78ywiwazdpj5xnpvff9r6hh5hgyy6iz2jg9azpw7j";
      };
    };
    vim-colorscheme-switcher = pkgs.vimUtils.buildVimPlugin {
      name = "vim-colorscheme-switcher";
      pname = "vim-colorscheme-switcher";
      src = pkgs.fetchFromGitHub {
        owner = "xolox";
        repo="vim-colorscheme-switcher";
        rev="4d9807a5a8948c18b5f3f278685269565c8e2508";
        sha256="0sr9q11fm7ivi5ysrxnsnmz8r2khr4g15p7ap2skyhynixv7wwxp";
      };
    };
    vim-syntax-haskell-cabal = pkgs.vimUtils.buildVimPlugin {
      name = "vim-syntax-haskell-cabal";
      src = pkgs.fetchFromGitHub {
        owner = "Twinside";
        repo="vim-syntax-haskell-cabal";
        rev="196325b85a01cb24c5ae4428bd6beabe44959ae8";
        sha256="18vxcimlj02cmp820csdc7gzfc5ssfma9fx1dqryl4cf51sfpcpp";
      };
    };
    sophia-vim-syntax = pkgs.vimUtils.buildVimPlugin {
      name = "sophia-vim-syntax";
      pname = "sophia-vim-syntax";
      src = pkgs.fetchFromGitHub {
        owner = "bogdan-manole";
        repo= "sophia-vim-syntax";
        rev="7776b02c0d14231e19b382d820ea344df8b49332";
        sha256="18zpw08mgjd18cpvfnyiqnj0mb96rl6gcyjz7hr5glhwhs2g66gp";
      };
    };
    vim-solidity = pkgs.vimUtils.buildVimPlugin {
      name = "vim-solidity";
      pname = "vim-solidity";
      src = pkgs.fetchFromGitHub {
        owner = "tomlion";
        repo= "vim-solidity";
        rev="569bbbedc3898236d5912fed0caf114936112ae4";
        sha256="1qpfbbrm4gjgvbkimhpxyl4fsdqkyw4raf17nw0ibqillz2d3pxx";
      };
    };
    vim-flow = pkgs.vimUtils.buildVimPlugin {
      name = "vim-flow";
      pname = "vim-flow";
      src = pkgs.fetchFromGitHub {
        owner = "bogdan-manole";
        repo="vim-flow";
        rev="2a35a3511bc3d74e7e41014362f432a5f02a70e2";
        sha256="0pafdgfb6z4dry1l3rkjxz9nsafrnr346grxfx6zjf1yy2ynykag";
      };
    };
    vim-haskell-indent = pkgs.vimUtils.buildVimPlugin {
      name = "vim-haskell-indent";
      src = pkgs.fetchFromGitHub {
        owner = "itchyny";
        repo="vim-haskell-indent";
        rev="192d01ecdacf53d041d05760a1ed45a65be025d8";
        sha256="sha256-eW0wwhR8XookrECdnYpT+gCNkkmpF7WsTbobcFBtqMU=";
      };
    };
    #NOTE: This is not th original repo, switch back to `monkoose` after
    # https://github.com/monkoose/fzf-hoogle.vim/issues/9 is closed
    fzf-hoogle-vim = pkgs.vimUtils.buildVimPlugin {
      name = "fzf-hoogle-vim";
      pname = "fzf-hoogle-vim";
      src = pkgs.fetchFromGitHub {
        #owner = "monkoose";
        owner = "gvolpe";
        repo="fzf-hoogle.vim";
        rev="0c1620d9e0216c93f894d908e4eb8c513aaa79fc";
        sha256="sha256-2siW5+cZhXusba9MyRx7YQlxQHc9Fy00FXtHUx7aQ5o=";
        #rev="5526cf047ef1b9fe89f3aa617ba4020e180d8355";
        #sha256="0avfqnsdqv0lbxg8nsygq87951c3kr6ld9flnkys04nn1gkx8sbw";
      };
    };

    in {
      enable = true;
      withNodeJs= true;

      ## PLUGINS ########################################################

      plugins = with pkgs.vimPlugins; [

        # COLORS ********************************************************
        ayu-vim

        { plugin = vim-colorschemes
        ; config = ''
            "WARNING: don't forget to comment one-dark if you use this
            ${(builtins.readFile ./colorschemes.rc.vim)}
          ''
        ;
        }

        { plugin = onedark-vim
        ; config = ''
            "let g:onedark_termcolors=256
            let g:onedark_terminal_italics=1
            "au VimEnter * colorscheme onedark
            "colorscheme onedark
          ''
        ;
        }

        vim-material-monokai
        cake16
        vim-misc

        { plugin = vim-colorscheme-switcher
        ; config = ''
            " shift + alt + >
            noremap ˘ :NextColorScheme<cr>
            noremap ¯ :PrevColorScheme<cr>
          ''
        ;
        }

        # COC ***********************************************************
        { plugin = coc-nvim
        ; config = '' ${(builtins.readFile ./coc.rc.vim)} ''
        ;
        }

        coc-eslint
        coc-json
        ## These should be installed with :CocInstall
        #
        #coc-spell-checker
        #coc-tsserver

        # FILES SEARCH AND NAVIGATION ***********************************
        taglist-vim                              # Ctags mother of f___er
        
        { plugin = vim-devicons                  # Adds filetype glyphs (icons) to various vim plugins.
        # WARN: if you disable it for NERDTree, disable it also vim-nerdtree-syntax-highlight plugin
        ; config = ''
            let g:webdevicons_enable_nerdtree = 1  " 0 for OFF , 1 for ON

            let s:brown = "905532"
            let s:aqua =  "3AFFDB"
            let s:blue = "689FB6"
            let s:darkBlue = "44788E"
            let s:purple = "834F79"
            let s:lightPurple = "834F79"
            let s:red = "AE403F"
            let s:beige = "F5C06F"
            let s:yellow = "F09F17"
            let s:orange = "D4843E"
            let s:darkOrange = "F16529"
            let s:pink = "CB6F6F"
            let s:salmon = "EE6E73"
            let s:green = "8FAA54"
            let s:lightGreen = "31B53E"
            let s:white = "FFFFFF"
            let s:rspec_red = 'FE405F'
            let s:git_orange = 'F54D27'

            let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
            let g:NERDTreeExtensionHighlightColor['vim'] = s:blue
            let g:NERDTreeExtensionHighlightColor['js'] = s:blue
            let g:NERDTreeExtensionHighlightColor['ts'] = s:blue
            let g:NERDTreeExtensionHighlightColor['sh'] = s:darkBlue
          ''
        ;
        }

        vim-nerdtree-syntax-highlight            # This is intended to be used with vim-devicons 
                                                 # to add color to icons or entire labels

        { plugin = fzf-vim
        ; config = ''
            nmap <silent> <C-b> :Buffers<CR>
            nmap <silent> <C-l> :BLines<CR>
            nmap <silent> <C-t> :Files<CR>

            nmap <leader>* :Ag <C-r><C-w><CR>
            vmap <leader>* :Ag <C-r><C-w><CR>
          ''
        ;
        }

        { plugin = fzf-preview
        ; config = '' ${(builtins.readFile ./fzf-preview.rc.vim)} ''
        ;
        }

        { plugin = nerdtree
        ; config = ''
            nnoremap ,m :NERDTreeToggle<cr>
            nnoremap ,n :NERDTreeFind<cr>
            let g:NERDTreeWinSize=30

            " open nerdtree and focus on right
            "autocmd VimEnter * NERDTree
            "autocmd VimEnter * wincmd p
          ''
        ;
        }

        { plugin = ctrlp-vim
        ; config = ''
              let g:ctrlp_root_markers = ['.ctrlp']
              let g:ctrlp_map = '<c-x>'
              "nnoremap <c-b> :CtrlPBuffer<CR>
          ''
        ;
        }
      

        ## AIRLINE *******************************************************
        { plugin = vim-airline
        ; config = '' ${(builtins.readFile ./airline.rc.vim)} ''
        ;
        }
        vim-airline-themes

        # SYNTAX ********************************************************
        BetterLua-vim
        jdaddy-vim
        Tagbar
        vim-prisma
        sophia-vim-syntax
        vim-solidity

        # DOCS **********************************************************
        csv-vim
        #Use it with --lang=en-us otherwise is not working
        #Maybe we should create a shortcut
        

        { plugin = vim-grammarous
        ; config = ''
            nnoremap <silent> <leader>age :GrammarousCheck --lang=en-gb<CR>
            nnoremap <silent> <leader>agr :GrammarousCheck --lang=ro<CR>
          ''
        ;
        }
        # FUN ***********************************************************
        { plugin = vim-startify
        ; config = "let g:startify_change_to_vcs_root = 0"
        ;
        }

        # CLOJURE *******************************************************
        paredit-vim
        vim-clojure-highlight
        vim-clojure-static
        vim-niji                                    # colored paranthesis
        vim-surround

        { plugin = vim-fireplace
        ; config = ''
            au Bufenter *.clj nnoremap E :Eval<CR>
            au Bufenter *.cljc nnoremap E :Eval<CR>
          ''
        ;
        }

        # HASKELL *******************************************************
        vim-syntax-haskell-cabal
        haskell-vim
        vim-haskell-indent
        #{ plugin = vim-hoogle            # this conflicts with fzf-hoogle
        #; config = ''
           #au Bufenter *.hs nnoremap ≥ :HoogleInfo<CR>
        #''
        #;
        #}

        { plugin = fzf-hoogle-vim                 #this one has a bug about
                                            # a file not found: cashe.json
                                  # NOTE: go to fzf-hoogle-vim definition
                                  # in order to swithc back to the original
                                  # repo
        ; config = '' ${(builtins.readFile ./fzf-hoogle.rc.vim)} ''
        ;
        }

        # JAVASCRIPT ****************************************************
        { plugin = vim-flow
        ; config = '' ${(builtins.readFile ./vim-flow.rc.vim)} ''
        ;
        }

        vim-vue
        yats-vim
        vim-jsx-pretty
        vim-javascript
        typescript-vim
        vim-tsx

        # CODE VALIDATION AND COMPLETION ********************************
        neoformat                                 # we don't use this yet
                                                    # but it must be nice

        { plugin = supertab
        ; config = '' let g:SuperTabDefaultCompletionType = "<c-n>" ''
        ;
        }

        { plugin = LanguageClient-neovim
        ; config = ''
          ${(builtins.readFile ./language-client.rc.vim)}
        '';
        }

        #{ plugin = ale
        #; config = '' ${(builtins.readFile ./ale.rc.vim)} ''
        #;
        #}


        # TEXT MANIPULATION  ********************************************
        nerdcommenter

        { plugin = tabular
        ; config = ''
            let g:haskell_tabular = 1

            vmap a= :Tabularize /=<CR>
            vmap a; :Tabularize /::<CR>
            vmap a: :Tabularize /:<CR>
            vmap a- :Tabularize /-><CR>
            vmap a< :Tabularize /<-<CR>
          ''
        ;
        }

        { plugin = vim-easy-align
        ; config = ''
            xmap ga <Plug>(EasyAlign)
            nmap ga <Plug>(EasyAlign)
          ''
        ;
        }

        { plugin = camelcasemotion
        ; config = ''
            "call camelcasemotion#CreateMotionMappings('<leader>')

            map <silent> ,w <Plug>CamelCaseMotion_w
            map <silent> ,b <Plug>CamelCaseMotion_b
            map <silent> ,e <Plug>CamelCaseMotion_e
            map <silent> ,ge <Plug>CamelCaseMotion_ge
          ''
        ;
        }

        delimitMate                          # it's adding closing quotes
                                                  # parentheses, brackets

        # OTHERS ********************************************************
        dockerfile-vim
        vim-nix

        # GIT & DIFF ****************************************************
        vim-fugitive

        { plugin = fugitive-gitlab-vim
        ; config = ''
            let g:fugitive_gitlab_domains = ['https://gitlab.frago.ro']
          ''
        ;
        }

        { plugin = vim-gitgutter
        ; config = ''
            "let g:gitgutter_enabled = 0
          ''
        ;
        }

        nerdtree-git-plugin
        gundo-vim
        vim-rest-console



    ];
    extraConfig = ''
      ${(builtins.readFile ./vimrc.vim)}
    '';

  }
