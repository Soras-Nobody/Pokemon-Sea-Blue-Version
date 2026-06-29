TILESETGFXDIR := data/tilesets
FONTGFXDIR := graphics/fonts
FAMECHECKERGFXDIR := graphics/fame_checker
INTERFACEGFXDIR := graphics/interface
PARTYMENUGFXDIR := graphics/party_menu
BTLANMSPRGFXDIR := graphics/battle_anims/sprites
UNUSEDGFXDIR := graphics/unused
BATINTGFXDIR := graphics/battle_interface
MASKSGFXDIR := graphics/battle_anims/masks
BATTRANSGFXDIR := graphics/battle_transitions
SLOTMACHINEGFXDIR := graphics/slot_machine
FIELDEFFECTSGFXDIR := graphics/field_effects
MISCGFXDIR := graphics/misc
TEXTWINDOWGFXDIR := graphics/text_window
TEACHYTVGFXDIR := graphics/teachy_tv
SSANNEGFXDIR := graphics/ss_anne
ITEMPCGFXDIR := graphics/item_pc
TITLESCREENGFXDIR := graphics/title_screen
ITEMMENUGFXDIR := graphics/item_menu
INTROGFXDIR := graphics/intro
BATTLETERRAINGFXDIR := graphics/battle_terrain
BERRYPOUCHGFXDIR := graphics/berry_pouch
HALLOFFAMEGFXDIR := graphics/hall_of_fame
MAPPREVIEWGFXDIR := graphics/map_preview
NAMINGGFXDIR := graphics/naming_screen
WALLPAPERGFXDIR := graphics/pokemon_storage/wallpapers
JPCONTESTGFXDIR := graphics/contest/japanese

CASTFORMGFXDIR := graphics/pokemon/castform
$(CASTFORMGFXDIR)/front.4bpp: $(CASTFORMGFXDIR)/normal/front.4bpp \
											$(CASTFORMGFXDIR)/sunny/front.4bpp \
											$(CASTFORMGFXDIR)/rainy/front.4bpp \
											$(CASTFORMGFXDIR)/snowy/front.4bpp
	@cat $^ >$@

$(CASTFORMGFXDIR)/back.4bpp: $(CASTFORMGFXDIR)/normal/back.4bpp \
									 $(CASTFORMGFXDIR)/sunny/back.4bpp \
									 $(CASTFORMGFXDIR)/rainy/back.4bpp \
									 $(CASTFORMGFXDIR)/snowy/back.4bpp
	@cat $^ >$@

$(CASTFORMGFXDIR)/normal.gbapal: $(CASTFORMGFXDIR)/normal/normal.gbapal \
									 $(CASTFORMGFXDIR)/sunny/normal.gbapal \
									 $(CASTFORMGFXDIR)/rainy/normal.gbapal \
									 $(CASTFORMGFXDIR)/snowy/normal.gbapal
	@cat $^ >$@

$(CASTFORMGFXDIR)/shiny.gbapal: $(CASTFORMGFXDIR)/normal/shiny.gbapal \
									$(CASTFORMGFXDIR)/sunny/shiny.gbapal \
									$(CASTFORMGFXDIR)/rainy/shiny.gbapal \
									$(CASTFORMGFXDIR)/snowy/shiny.gbapal
	@cat $^ >$@

$(FONTGFXDIR)/latin_small.latfont: $(FONTGFXDIR)/latin_small.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_small.fwjpnfont: $(FONTGFXDIR)/japanese_small.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_tall.fwjpnfont: $(FONTGFXDIR)/japanese_tall.png
	$(GFX) $< $@

$(FONTGFXDIR)/latin_normal.latfont: $(FONTGFXDIR)/latin_normal.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_normal.fwjpnfont: $(FONTGFXDIR)/japanese_normal.png
	$(GFX) $< $@

$(FONTGFXDIR)/latin_male.latfont: $(FONTGFXDIR)/latin_male.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_male.fwjpnfont: $(FONTGFXDIR)/japanese_male.png
	$(GFX) $< $@

$(FONTGFXDIR)/latin_female.latfont: $(FONTGFXDIR)/latin_female.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_female.fwjpnfont: $(FONTGFXDIR)/japanese_female.png
	$(GFX) $< $@

$(FONTGFXDIR)/braille.fwjpnfont: $(FONTGFXDIR)/braille.png
	$(GFX) $< $@

$(FONTGFXDIR)/japanese_bold.fwjpnfont: $(FONTGFXDIR)/japanese_bold.png
	$(GFX) $< $@

graphics/pokemon_jump/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MISCGFXDIR)/markings2.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BTLANMSPRGFXDIR)/ice_cube.4bpp: $(BTLANMSPRGFXDIR)/ice_cube_0.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_cube_1.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_cube_2.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_cube_3.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi_palpak1.gbapal: $(UNUSEDGFXDIR)/old_pal1.gbapal \
									$(UNUSEDGFXDIR)/old_pal2.gbapal \
									$(UNUSEDGFXDIR)/old_pal3.gbapal
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi_palpak3.gbapal: $(UNUSEDGFXDIR)/old_pal5.gbapal \
									$(UNUSEDGFXDIR)/old_pal6.gbapal \
									$(UNUSEDGFXDIR)/old_pal7.gbapal
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi1.4bpp: $(UNUSEDGFXDIR)/old_bulbasaur.4bpp \
						   $(UNUSEDGFXDIR)/old_charizard.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/obi2.4bpp: $(UNUSEDGFXDIR)/old_bulbasaur2.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_1.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_2.4bpp \
						   $(UNUSEDGFXDIR)/old_battle_interface_3.4bpp
	@cat $^ >$@

$(INTERFACEGFXDIR)/hp_numbers.4bpp: $(INTERFACEGFXDIR)/hp_bar_anim.4bpp \
							$(INTERFACEGFXDIR)/numbers1.4bpp \
							$(INTERFACEGFXDIR)/numbers2.4bpp
	@cat $^ >$@

$(UNUSEDGFXDIR)/redyellowgreen_frame.bin: $(UNUSEDGFXDIR)/red_frame.bin \
										  $(UNUSEDGFXDIR)/yellow_frame.bin \
										  $(UNUSEDGFXDIR)/green_frame.bin \
										  $(UNUSEDGFXDIR)/blank_frame.bin
	@cat $^ >$@

$(UNUSEDGFXDIR)/color_frames.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATINTGFXDIR)/unused_window2bar.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATINTGFXDIR)/level_up_banner.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATINTGFXDIR)/textbox.gbapal: $(BATINTGFXDIR)/textbox1.gbapal $(BATINTGFXDIR)/textbox2.gbapal
	cat $^ > $@

$(JPCONTESTGFXDIR)/composite_1.4bpp: $(JPCONTESTGFXDIR)/frame_1.4bpp \
								  $(JPCONTESTGFXDIR)/floor.4bpp \
								  $(JPCONTESTGFXDIR)/frame_2.4bpp \
								  $(JPCONTESTGFXDIR)/symbols.4bpp \
								  $(JPCONTESTGFXDIR)/meter.4bpp \
								  $(JPCONTESTGFXDIR)/classes.4bpp \
								  $(JPCONTESTGFXDIR)/numbers_2.4bpp
	@cat $^ >$@

$(JPCONTESTGFXDIR)/composite_2.4bpp: $(JPCONTESTGFXDIR)/interface.4bpp \
									$(JPCONTESTGFXDIR)/audience.4bpp
	@cat $^ >$@

$(JPCONTESTGFXDIR)/voltage.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BTLANMSPRGFXDIR)/ice_crystals.4bpp: $(BTLANMSPRGFXDIR)/ice_crystals_0.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_1.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_2.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_3.4bpp \
						  $(BTLANMSPRGFXDIR)/ice_crystals_4.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/mud_sand.4bpp: $(BTLANMSPRGFXDIR)/mud_sand_0.4bpp \
						  $(BTLANMSPRGFXDIR)/mud_sand_1.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/flower.4bpp: $(BTLANMSPRGFXDIR)/flower_0.4bpp \
						  $(BTLANMSPRGFXDIR)/flower_1.4bpp
	@cat $^ >$@

$(BTLANMSPRGFXDIR)/spark.4bpp: $(BTLANMSPRGFXDIR)/spark_0.4bpp \
						  $(BTLANMSPRGFXDIR)/spark_1.4bpp
	@cat $^ >$@

$(MASKSGFXDIR)/unused_level_up.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTRANSGFXDIR)/vs_frame.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(PARTYMENUGFXDIR)/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FIELDEFFECTSGFXDIR)/pics/underwater_bubbles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FIELDEFFECTSGFXDIR)/pics/bike_tire_tracks.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FIELDEFFECTSGFXDIR)/pics/sand_disguise.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FIELDEFFECTSGFXDIR)/pics/mountain_disguise.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FIELDEFFECTSGFXDIR)/pics/tree_disguise.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTERFACEGFXDIR)/selector_outline.4bpp: %.4bpp: %.png
	$(GFX) $< $@

graphics/tm_case/tm_case.4bpp: %.4bpp: %.png
	$(GFX) $< $@
	
$(FAMECHECKERGFXDIR)/spinning_pokeball.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(FAMECHECKERGFXDIR)/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

graphics/seagallop/water.4bpp: %.4bpp: %.png
	$(GFX) $< $@

graphics/link/321start.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(TEXTWINDOWGFXDIR)/signpost.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(SLOTMACHINEGFXDIR)/firered/combos_window.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(SLOTMACHINEGFXDIR)/firered/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(SLOTMACHINEGFXDIR)/leafgreen/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(TEACHYTVGFXDIR)/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(SSANNEGFXDIR)/smoke.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(ITEMPCGFXDIR)/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(TITLESCREENGFXDIR)/firered/box_art_mon.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(TITLESCREENGFXDIR)/leafgreen/box_art_mon.4bpp: %.4bpp: %.png
	$(GFX) $< $@

POKEDEXAREAMARKERSDATADIR := graphics/pokedex/area_markers

POKEDEXAREAMARKERFILES := \
	$(POKEDEXAREAMARKERSDATADIR)/marker_0.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_1.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_2.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_3.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_4.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_5.4bpp \
	$(POKEDEXAREAMARKERSDATADIR)/marker_6.4bpp

$(POKEDEXAREAMARKERSDATADIR)/marker.4bpp: $(POKEDEXAREAMARKERFILES)
	cat $^ > $@

graphics/pokemon/heracross/unk_icon.4bpp: %.4bpp: %.png
	$(GFX) $< $@

graphics/misc/emoticons.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(ITEMMENUGFXDIR)/bg.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTROGFXDIR)/scene_1/grass.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTROGFXDIR)/scene_2/plants.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTROGFXDIR)/scene_2/nidorino_close.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTROGFXDIR)/scene_2/gengar_close.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(INTROGFXDIR)/scene_3/gengar_anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/building/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/cave/anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/cave/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/grass/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/indoor/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/longgrass/anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/longgrass/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/mountain/anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/pond/anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/pond/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/sand/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/underwater/anim.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/underwater/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BATTLETERRAINGFXDIR)/water/terrain.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(BERRYPOUCHGFXDIR)/background.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(HALLOFFAMEGFXDIR)/hall_of_fame.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(TILESETGFXDIR)/primary/general/anim/water_current_landwatersedge/7.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/altering_cave/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/berry_forest/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/digletts_cave/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/dotted_hole/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/icefall_cave/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/lost_cave/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/monean_chamber/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/mt_ember/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/mt_moon/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/pokemon_mansion/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/pokemon_tower/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/power_plant/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/rock_tunnel/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/rocket_hideout/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/rocket_warehouse/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/safari_zone/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/seafoam_islands/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/silph_co/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/victory_road/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(MAPPREVIEWGFXDIR)/viridian_forest/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(NAMINGGFXDIR)/cursor.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(NAMINGGFXDIR)/cursor_squished.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(NAMINGGFXDIR)/cursor_filled.4bpp: %.4bpp: %.png
	$(GFX) $< $@


$(WALLPAPERGFXDIR)/beach/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/cave/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/city/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/crag/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/desert/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/forest/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/pokecenter/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/river/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/savanna/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/seafloor/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/simple/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/sky/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/snow/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/stars/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/tiles/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(WALLPAPERGFXDIR)/volcano/tiles.4bpp: %.4bpp: %.png
	$(GFX) $< $@
