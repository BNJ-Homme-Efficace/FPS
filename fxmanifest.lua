fx_version 'adamant'
games { 'gta5' };
version '1.2'

name 'RageUI';
description 'RageUI, and a project specially created to replace the NativeUILua-Reloaded library. This library allows to create menus similar to the one of Grand Theft Auto online.'

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
}

client_scripts {
    'config.lua',
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
}

bnj_checker 'yes'
bnj_name '^2FPS'
bnj_Github 'https://github.com/BNJ-Homme-Efficace/FPS'
