resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
ui_page('html/index.html')

dependency "vrp"

client_scripts{ 
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	"client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}

files({
    'html/index.html',
    'html/sounds/scream.ogg',
    'html/sounds/pulainmata.ogg',
    'html/sounds/abiscuze.ogg',
    'html/sounds/ainoroc.ogg',
    'html/sounds/bulangiule.ogg',
    'html/sounds/danimoc.ogg',
    'html/sounds/sangesatebat.ogg',
    'html/sounds/satebat.ogg',
    'html/sounds/bassbosteed.ogg',
    'html/sounds/baieti.ogg',
    'html/sounds/bamuie.ogg',
    'html/sounds/boosted2.ogg',
    'html/sounds/bunasiua.ogg',
    'html/sounds/cacatule.ogg',
    'html/sounds/descalzatule.ogg',
    'html/sounds/dumnezeumati.ogg',
    'html/sounds/gurata.ogg',
    'html/sounds/potisavi.ogg',
    'html/sounds/pufutute.ogg',
    'html/sounds/pulanegro.ogg',
    'html/sounds/sugeu.ogg',
	'html/sounds/mlg.ogg'
})
