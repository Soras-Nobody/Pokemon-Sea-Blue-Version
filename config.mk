# Default variables

GAME_VERSION  := FIRERED
GAME_REVISION := 0
GAME_LANGUAGE := ENGLISH

# Builds the ROM using a modern compiler
MODERN        := 0

# For gbafix
MAKER_CODE := 01

BUILD_DIR := build

# Version
ifeq ($(GAME_VERSION),FIRERED)
  TITLE       := POKEMON SEA
  GAME_CODE   := BPR
  BUILD_NAME  := SeaBlueVersion
else
  $(error unknown version $(GAME_VERSION))
endif

# Language
ifeq ($(GAME_LANGUAGE),ENGLISH)
  GAME_CODE  := $(GAME_CODE)E
endif