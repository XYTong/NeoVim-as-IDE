## Why NeoVim?
After the official version of Neovim 0.5.x was launched, LSP (Language Server Protocol) was built in, and the code prompt experience has been on par with VSCode. Lua has become the first-class language of the editor, and the configuration is easier to understand. Many VIM plug-ins have Lua native versions, and the configuration is not so hard-core, making Vim more modern and easier to use.
**Update**: the latest stable version v0.6 of NeoVim has been released !
**BREAKING CHANGES** 

+ 32-bit windows builds are no longer provided.  
+ build deps: use libuv 1.42.0 upstream for WIN32 (#15889) (f6c0a37), closes #15889
  + removes Windows 7 support
  + removes support for mouse and alternate buffers in TUI for Windows 8 and 8.1
+ lsp/diagnostic: highlight groups and signs for LSP diagnostics renamed (e.g. LspDiagnosticsDefaultWarning to DiagnosticWarn) (a5bbb93)
+ diagnostic: make DiagnosticChanged a first class autocmd (#16098) (150a592), closes #16098
  + an User LspDiagnosticsChanged autocommands are not supported. Use the new first-class DiagnosticChanged event instead.    
+ lua: register_keystroke_callback => on_key (#15460) (69fe427)
See more features [here](https://github.com/neovim/neovim/releases)  
**The reason why I changed from Vim to NeoVIm:**  
1. The configuration and setup of Neovim is more flexible, and expansion is more convenient. Besides, start faster.

2. The completion jump is smarter, faster, and supports more programming languages. As long as the LSP supports it, neovim supports it.

3. Syntax highlight rendering is faster and more accurate, and you will never see a blank piece of code again.

4. Lua as the first programming language of NeoVim.

5. Embedded terminal inside Nvim, floating window, multi-threaded asynchronous IO and more...

## Show Case
![show case](https://xiangyutong.eu/wp-content/uploads/2021/12/show-nvim.png "show case")

## Prerequisities
1. First uninstall the old version of NeoVim. Example in fedora"
```bash
sudo dnf remove neovim
```
2. Then install the latest NeoVim (now is v0.6) form [NeoVim](https://github.com/neovim/neovim/releases):
   + Download nvim.appimage
   + Run ``chmod u+x nvim.appimage && ./nvim.appimage``  
   + If your system does not have FUSE you can extract the appimage:
  ```bash
  ./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
  ```
   + Optional: exposing nvim globally. 
  ```bash
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
  ```
  
## Basic Configuration
This is the basic configuration of NeoVim.
```bash
├── autoload
│   └── plug.vim
├── init_1.vim
├── init.vim               # Entry file, which is responsible for loading all files in the lua folder
├── lua                    # All lua configuration-file
│   ├── basic.lua          # Basic configuration of NeoVim 
│   ├── keybindings.lua    # Hotkey Mapping
│   ├── lsp                # Embeded LSP
│   │   ├── cpp.lua
│   │   ├── language_servers.lua
│   │   ├── lua.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-lspconfig.lua
│   │   ├── rust.lua
│   │   ├── setup.lua
│   │   └── ui.lua
│   ├── plugin-config     # Where the plugins store
│   │   ├── bufferline.lua
│   │   ├── comment.lua
│   │   ├── nvim-autopairs.lua
│   │   ├── nvim-colorizer.lua
│   │   ├── nvim-tree.lua
│   │   ├── nvim-treesitter.lua
│   │   ├── rust-tools.lua
│   │   ├── surround.lua
│   │   ├── telescope.lua
│   │   └── which-key.lua
│   ├── plugins.lua     # Plugins-Management
│   └── utils.lua
└── plugin
    └── packer_compiled.lua

```  
### Configuration File
## Hot-key Configuration

## Plugins-management and -configuration

## Theme Configuration

## Plugins I use

## LSP-configuration

### Basic LSP-Server

### Code completion

## Configuration for Frontend

## Configuration for C/C++

to be continue ...
