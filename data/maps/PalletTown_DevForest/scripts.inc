PalletTown_DevForest_MapScripts::
	.byte 0

PalletTown_EventScript_DevForest_Generic::
	lock
	setflag FLAG_SYS_POKEMON_GET
	setflag FLAG_SYS_POKEDEX_GET
	special EnableNationalPokedex
	setflag FLAG_RESCUED_LOSTELLE
	setflag FLAG_GOT_MOON_STONE_FROM_JOYFUL_GAME_CORNER
	setvar VAR_MAP_SCENE_TWO_ISLAND_JOYFUL_GAME_CORNER, 4
	givemon SPECIES_SPINDA, 100
	givemon SPECIES_ABRA, 5
	givemon SPECIES_GRAVELER, 5
	givemon SPECIES_MACHOKE, 5
	givemon SPECIES_HAUNTER, 5
	release
	end
