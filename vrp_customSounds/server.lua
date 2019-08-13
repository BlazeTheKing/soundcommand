-- all rights reserved @BlazeTheKing
theSounds = {
	--{"command", "soundname"},
	{"pulainmata", "pulainmata"},
	{"abiscuze", "abiscuze"},
	{"ainoroc", "ainoroc"},
	{"bulangiule", "bulangiule"},
	{"danimoc", "danimoc"},
	{"sangesatebat", "sangesatebat"},
	{"bunasiua", "bunasiua"},
	{"satebat", "satebat"},
	{"bamuie", "bamuie"},
	{"baieti", "baieti"},
	{"cacatule", "cacatule"},
	{"pufutute", "pufutute"},
	{"guratag", "gurata"},
	{"potisavi.", "potisavi"},
	{"descalzatule", "descalzatule"},
	{"dumnezeumati", "dumnezeumati"},
	{"sugeu", "sugeu"},
	{"baieti", "baieti"},
	{"boosted2", "boosted2"},
	{"pulanegro", "pulanegro"},
	{"bassbosteed", "bassbosteed"}
}

soundVolume = 0.7
maxDistance = 10.0

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	if first_spawn then
		TriggerClientEvent("updateCustomSounds", source, theSounds)
	end
end)

RegisterServerEvent('playCustomSoundWithinDistance')
AddEventHandler('playCustomSoundWithinDistance', function(soundFile)
    TriggerClientEvent('playCustomSoundWithinDistance', -1, source, maxDistance, soundFile, soundVolume)
end)
