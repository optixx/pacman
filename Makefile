OBJDIR = build/obj
PROJECTROOT = $(shell pwd)

TARGET = pacman
TARGETFPGA = xc3s1200e-fg320-4
BOARD = nexys2
FLASHTOOL= nexys2prog 

CONSTRAINTS = $(TARGET)_$(BOARD)_constraints.ucf
XSTSCRIPT = build/scripts/$(TARGET).scr
UTFILE = build/scripts/$(TARGET).ut

#--------------------------------------------------------------------

#root of your xilinx binaries
XILINXROOT = /opt/Xilinx/11.1/ISE/bin/lin
XILINXROOT = /home/david/Data/devel/apps/Xilinx/11.1/ISE/bin/lin

#be sure to build this tool, first
ROMGEN = sw/romgen
ROMPATH = rom
XST = $(XILINXROOT)/xst
NGDBUILD = $(XILINXROOT)/ngdbuild
MAP = $(XILINXROOT)/map
PAR = $(XILINXROOT)/par
TRCE = $(XILINXROOT)/trce
BITGEN = $(XILINXROOT)/bitgen

#--------------------------------------------------------------------

# main rule
all: $(TARGET).bit

romgen:
	cd sw; g++ romgen.cpp -o romgen

buildrom: romgen
	$(ROMGEN) $(ROMPATH)/pacrom_5e.bin PACROM_5E 12 l r e > vhdl/pacrom_5e.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_5f.bin PACROM_5F 12 l r e > vhdl/pacrom_5f.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_6e.bin PACROM_6E 12 l r e > vhdl/pacrom_6e.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_6f.bin PACROM_6F 12 l r e > vhdl/pacrom_6f.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_6h.bin PACROM_6H 12 l r e > vhdl/pacrom_6h.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_6j.bin PACROM_6J 12 l r e > vhdl/pacrom_6j.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_1m.bin PACROM_1M 9 l r e > vhdl/pacrom_1m.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_4a.bin PACROM_4A_DST 8 c > vhdl/pacrom_4a_dst.vhd
	$(ROMGEN) $(ROMPATH)/pacrom_7f.bin PACROM_7F_DST 4 c > vhdl/pacrom_7f_dst.vhd


prepare:
	cat $(PROJECTROOT)/$(XSTSCRIPT).tpl | sed -e "s/TARGETFPGA/$(TARGETFPGA)/" -e  "s/TARGET/$(TARGET)/" > $(PROJECTROOT)/$(XSTSCRIPT) 

synthesize: prepare
	cd $(OBJDIR); $(XST) -ifn $(PROJECTROOT)/$(XSTSCRIPT) -ofn $(TARGET).srp 
	cd $(OBJDIR); $(NGDBUILD) -nt on -uc $(PROJECTROOT)/$(CONSTRAINTS) $(TARGET).ngc $(TARGET).ngd

map:
	cd $(OBJDIR); $(MAP) -pr b $(TARGET).ngd -o $(TARGET).ncd $(TARGET).pcf

placeandroute:
	cd $(OBJDIR); $(PAR) -w -ol high $(TARGET).ncd $(TARGET).ncd $(TARGET).pcf

trace:
	cd $(OBJDIR); $(TRCE) -v 10 -o $(TARGET).twr $(TARGET).ncd $(TARGET).pcf

$(TARGET).bit: buildrom synthesize map placeandroute trace
	cd $(OBJDIR); $(BITGEN) -w $(TARGET).ncd $@ -f $ $(PROJECTROOT)/$(UTFILE)
	mv $(OBJDIR)/$@ $(PROJECTROOT)

upload: $(TARGET).bit 
	$(FLASHTOOL) $(TARGET).bit  
clean:
	rm -rf $(OBJDIR)/*
	rm -rf $(TARGET).bit

.PHONY: all clean

