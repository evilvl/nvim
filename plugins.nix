{
  pkgs,
  settings,
  categories,
  extra,
  name,
  mkNvimPlugin,
}:
{
  startupPlugins = with pkgs.vimPlugins; {
    general = {
      colorschemes = [
        # tokyonight-nvim
      ];
      statusLine = [
        # lualine-nvim
        # nvim-web-devicons
      ];
      # lazy = [ lazy-nvim ];
    };
    completion = [
      # blink-cmp
      # luasnip
      # friendly-snippets
    ];
    programming = {
      lsp = [
        # fidget-nvim
        # lazydev-nvim
        # nvim-jdtls
        # nvim-lspconfig
        # otter-nvim
      ];
      linting = [
        # nvim-lint
      ];
      formatting = [
        # conform-nvim
      ];
      debug = [
        # nvim-dap
        # nvim-dap-ui
        # nvim-nio
      ];
    };
    treesitter = [
      # nvim-treesitter-textobjects
      # nvim-treesitter.withAllGrammars
    ];
    git = {
      # gitsigns = [ gitsigns-nvim ];
      neogit = [
        # neogit
        # plenary-nvim
        # diffview-nvim
        # telescope-nvim
      ];
    };
    ui = {
      colorscheme = [
        catppuccin-nvim
      ];
      alpha = [
        # alpha-nvim
        # nvim-web-devicons
        # which-key-nvim
      ];
      indent-blankline = [
        # indent-blankline-nvim
      ];
      noice = [
        # noice-nvim
        # nui-nvim
      ];
      todo-comments = [
        # plenary-nvim
        # todo-comments-nvim
      ];
    };
    utils = {
      # mini-pairs = [ mini-pairs ];
      # mini-bracketed = [ mini-bracketed ];
      # codesnap = [ codesnap-nvim ];
      # colorizer = [ nvim-colorizer-lua ];
      # comment = [ comment-nvim ];
      harpoon = [
        # harpoon2
        # plenary-nvim
      ];
      # mini-ai = [ mini-ai ];
      # mini-surround = [ mini-surround ];
      oil = [
        # nvim-web-devicons
        # oil-nvim
      ];
      telescope = [
        # telescope-nvim
        # plenary-nvim
        # nvim-web-devicons
        # telescope-fzf-native-nvim
        # telescope-ui-select-nvim
      ];
      # vim-tmux-navigator = [ vim-tmux-navigator ];
      # toggleterm = [ toggleterm-nvim ];
      ufo = [
        # nvim-ufo
        # promise-async
      ];
    };
    markdown = {
      # markdown-preview = [ markdown-preview-nvim ];
      markview = [
        # markview-nvim
        # nvim-web-devicons
      ];
    };
    # latex = [ vimtex ];
    # plantuml = [ plantuml-syntax ];
  };

  optionalPlugins = with pkgs.vimPlugins; {
    # Add optional plugins here
    general = [
      # some-plugin
    ];
    programming = {
      lsp = [
        # some-lsp-plugin
      ];
      linting = [
        # some-linting-plugin
      ];
      formatting = [
        # some-formatting-plugin
      ];
      debug = [
        # some-debug-plugin
      ];
    };
    treesitter = [
      # some-treesitter-plugin
    ];
    git = {
      # some-git-plugin
    };
    ui = {
      # some-ui-plugin
    };
    utils = {
      # some-utils-plugin
    };
    markdown = [
      # some-markdown-plugin
    ];
    # latex = [
    #   some-latex-plugin
    # ];
    # plantuml = [
    #   some-plantuml-plugin
    # ];
  };
}
