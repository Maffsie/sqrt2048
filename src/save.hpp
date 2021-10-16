#pragma once

#include "32blit.hpp"

const uint32_t savedata_hdr = 0x51deb00b;
class Save {
	public:
	struct SaveData {
		uint32_t header;
		uint16_t brightness;
		uint32_t topscore;
	}
	SaveData savedata;
	void init() {
	}
}

extern Save savestate;