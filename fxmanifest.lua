fx_version 'cerulean'
game "rdr3"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

lua54 'yes'

author 'Oakfen'
description 'Supporter Commands via txAdmin'
version '1.0'


shared_scripts {
    '@jo_libs/init.lua'
}

jo_libs {
    'Notification',
    'print'
}

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
}
