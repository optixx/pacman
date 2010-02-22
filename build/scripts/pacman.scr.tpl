run
-ifn ../../build/scripts/TARGET.prj
-ifmt VHDL
-ofn ../../build/obj/TARGET.ngc
-ofmt NGC -p TARGETFPGA
-opt_mode Area
-opt_level 1
-top pacman
-keep_hierarchy yes
