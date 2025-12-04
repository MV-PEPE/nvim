# Neovim config
This is my Neovim cofiguration, nothing more, nothing less :)

# Structure
I use a modular structure for my configuration, so let's break it down.

```
├── init.lua
├── lazy-lock.json
├── lsp
│   ├── ...
└── lua
    ├── config
    │   ├── custom-options.lua
    │   └── keymaps.lua
    ├── core
    │   ├── lazy.lua
    │   └── lsp.lua
    └── plugins
        ├── ...
```

## init.lua
This file contains the initial setup steps. It loads the plugin manager, the LSP configuration and Neovim customization.

## lsp
The lsp directory contains all LSPs' configuration tables.

## lua
The lua directory contains three directories which are described below.

## config
### custom-options.lua
All my "visual" preferences are stored here together with some functional preferences (except for key mappings).
### keymaps.lua
Only my custom key mappings are stored here, nothing else.

## core
### lazy.lua
Sets up the Lazy plugin manager, loads the plugins directory and forces a custom colorscheme.
### lsp.lua
Sets up native autocomplete and enables the setups from the lsp directory.

## plugins
Contains all the plugins and their configurations.
