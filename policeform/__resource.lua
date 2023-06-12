fx_version 'cerulean'
game {'gta5'}
lua54 'yes'

author 'Dalle Far'
description 'Police from script'
version '1.1.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
} 

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

ui_page "html/index.html"
files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css'
}