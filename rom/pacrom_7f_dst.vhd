-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_7F_DST is
  port (
    ADDR        : in    std_logic_vector(3 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_7F_DST is

  signal rom_addr : std_logic_vector(11 downto 0);

begin

  p_addr : process(ADDR)
  begin
     rom_addr <= (others => '0');
     rom_addr(3 downto 0) <= ADDR;
  end process;

  p_rom : process(rom_addr)
  begin
    DATA <= (others => '0');
    case rom_addr is
      when x"000" => DATA <= x"00";
      when x"001" => DATA <= x"07";
      when x"002" => DATA <= x"66";
      when x"003" => DATA <= x"EF";
      when x"004" => DATA <= x"00";
      when x"005" => DATA <= x"F8";
      when x"006" => DATA <= x"EA";
      when x"007" => DATA <= x"6F";
      when x"008" => DATA <= x"00";
      when x"009" => DATA <= x"3F";
      when x"00A" => DATA <= x"00";
      when x"00B" => DATA <= x"C9";
      when x"00C" => DATA <= x"38";
      when x"00D" => DATA <= x"AA";
      when x"00E" => DATA <= x"AF";
      when x"00F" => DATA <= x"F6";
      when others => DATA <= (others => '0');
    end case;
  end process;
end RTL;
