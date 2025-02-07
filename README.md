# XU-Mini-M-MinUI-Extra-Paks
This is a collection of unofficial paks you can add to MinUI for the MagicX XU Mini M, in order to expand the capabilities of this lovely firmware.

## Contents
1) PRBOOM.pak - adds prboom libretro core running in MinUI's own MinArch.
2) FBNEO.pak - adds fbneo libretro core running in MinUI's own MinArch - be sure to grab map.txt for your Roms folder too.
3) GZDOOM.pak - adds gzdoom standalone, which is more flexible and better for playing Doom mods, but loses that nice MinArch in-game menu.
4) N64.pak - adds Mupen64plus standalone. Defaults to rice graphics driver; gl64mk2 driver available with minor launch.sh tweak.
5) PortMaster.pak and Ports.pak - add compatibility for PortMaster games. Both must be installed for the games to work!
6) RetroArch.pak - adds full-on RetroArch, in case there are cores or configuration options (such as applying shaders) that you miss when using MinUI proper.
7) VARCADE.pak - adds fbneo libretro core running in RetroArch, pre-configured with correct rotation, for playing vertical arcade games. Requires RetroArch.pak.
8) P8-NATIVE.pak - adds support for native Pico-8 rather than MinUI's default emulated Pico-8. Be sure to add your purchased copies of the Raspberry Pi version of pico8_64 and pico8.dat to the Emus/magicmini/P8-NATIVE.pak/bin/ folder.
9) NDS.pak - adds DraStic standalone, for Nintendo DS emulation.

## Installation
These instructions assume you have already correctly installed MinUI by following the readme in its base package.
1) Click the "Code" button on this page, then "Download ZIP".
2) Extract the ZIP, and merge the Emus, Roms, and Tools folders with those already present on your MinUI card.
3) Place the folders for your ports inside Tools/magicmini/PortMaster.pak.
4) Place the shell scripts to launch your ports inside Roms/Ports.

## Known Issues

- The N64 pak has no in-game settings menu. This is a limitation of the Mupen64Plus standalone, and will not change in the future.

## TODO

PSP, Dreamcast, and maybe Saturn paks.

## Credits
1) me, Ry - I put together all the things. Please feel free to bug **ME** for support with this pack pak (and not Shaun).
2) Shaun Inman - for creating MinUI and making it remarkably flexible, and for all his moral and scripting support.
3) The Amberelec team, for creating what would become the base of MOSS for the XU Mini M.
4) The PortMaster team, for all their amazing work that made it so much easier to create Ports.pak, etc.
5) The community - testers, bug reporters, friends, and comrades, without whom development of this pak pack would stagnate - including, but not limited to: snake, Deanne, bookends, GHROTIC, moto, Gamma, fishku, paletochen, axelrider, Rich, Justin, tenlevels, Joshiekona, and more.
