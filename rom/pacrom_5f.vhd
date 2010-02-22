-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_5F is
  port (
    CLK         : in    std_logic;
    ENA         : in    std_logic;
    ADDR        : in    std_logic_vector(11 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_5F is

  function romgen_str2bv (str : string) return bit_vector is
    variable result : bit_vector (str'length*4-1 downto 0);
  begin
    for i in 0 to str'length-1 loop
      case str(str'high-i) is
        when '0'       => result(i*4+3 downto i*4) := x"0";
        when '1'       => result(i*4+3 downto i*4) := x"1";
        when '2'       => result(i*4+3 downto i*4) := x"2";
        when '3'       => result(i*4+3 downto i*4) := x"3";
        when '4'       => result(i*4+3 downto i*4) := x"4";
        when '5'       => result(i*4+3 downto i*4) := x"5";
        when '6'       => result(i*4+3 downto i*4) := x"6";
        when '7'       => result(i*4+3 downto i*4) := x"7";
        when '8'       => result(i*4+3 downto i*4) := x"8";
        when '9'       => result(i*4+3 downto i*4) := x"9";
        when 'A'       => result(i*4+3 downto i*4) := x"A";
        when 'B'       => result(i*4+3 downto i*4) := x"B";
        when 'C'       => result(i*4+3 downto i*4) := x"C";
        when 'D'       => result(i*4+3 downto i*4) := x"D";
        when 'E'       => result(i*4+3 downto i*4) := x"E";
        when 'F'       => result(i*4+3 downto i*4) := x"F";
        when others    => null;
      end case;
    end loop;
    return result;
  end romgen_str2bv;

  attribute INIT_00 : string;
  attribute INIT_01 : string;
  attribute INIT_02 : string;
  attribute INIT_03 : string;
  attribute INIT_04 : string;
  attribute INIT_05 : string;
  attribute INIT_06 : string;
  attribute INIT_07 : string;
  attribute INIT_08 : string;
  attribute INIT_09 : string;
  attribute INIT_0A : string;
  attribute INIT_0B : string;
  attribute INIT_0C : string;
  attribute INIT_0D : string;
  attribute INIT_0E : string;
  attribute INIT_0F : string;
  attribute INIT_10 : string;
  attribute INIT_11 : string;
  attribute INIT_12 : string;
  attribute INIT_13 : string;
  attribute INIT_14 : string;
  attribute INIT_15 : string;
  attribute INIT_16 : string;
  attribute INIT_17 : string;
  attribute INIT_18 : string;
  attribute INIT_19 : string;
  attribute INIT_1A : string;
  attribute INIT_1B : string;
  attribute INIT_1C : string;
  attribute INIT_1D : string;
  attribute INIT_1E : string;
  attribute INIT_1F : string;
  attribute INIT_20 : string;
  attribute INIT_21 : string;
  attribute INIT_22 : string;
  attribute INIT_23 : string;
  attribute INIT_24 : string;
  attribute INIT_25 : string;
  attribute INIT_26 : string;
  attribute INIT_27 : string;
  attribute INIT_28 : string;
  attribute INIT_29 : string;
  attribute INIT_2A : string;
  attribute INIT_2B : string;
  attribute INIT_2C : string;
  attribute INIT_2D : string;
  attribute INIT_2E : string;
  attribute INIT_2F : string;
  attribute INIT_30 : string;
  attribute INIT_31 : string;
  attribute INIT_32 : string;
  attribute INIT_33 : string;
  attribute INIT_34 : string;
  attribute INIT_35 : string;
  attribute INIT_36 : string;
  attribute INIT_37 : string;
  attribute INIT_38 : string;
  attribute INIT_39 : string;
  attribute INIT_3A : string;
  attribute INIT_3B : string;
  attribute INIT_3C : string;
  attribute INIT_3D : string;
  attribute INIT_3E : string;
  attribute INIT_3F : string;

  component RAMB16_S4
    --pragma translate_off
    generic (
      INIT_00 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_01 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_02 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_03 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_04 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_05 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_06 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_07 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_08 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_09 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_10 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_11 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_12 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_13 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_14 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_15 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_16 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_17 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_18 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_19 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_20 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_21 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_22 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_23 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_24 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_25 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_26 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_27 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_28 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_29 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_30 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_31 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_32 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_33 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_34 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_35 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_36 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_37 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_38 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_39 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000"
      );
    --pragma translate_on
    port (
      DO    : out std_logic_vector (3 downto 0);
      ADDR  : in  std_logic_vector (11 downto 0);
      CLK   : in  std_logic;
      DI    : in  std_logic_vector (3 downto 0);
      EN    : in  std_logic;
      SSR   : in  std_logic;
      WE    : in  std_logic 
      );
  end component;

  signal rom_addr : std_logic_vector(11 downto 0);

begin

  p_addr : process(ADDR)
  begin
     rom_addr <= (others => '0');
     rom_addr(11 downto 0) <= ADDR;
  end process;

  rom0 : if true generate
    attribute INIT_00 of inst : label is "00EFFF87001332110000000000000008F3FF70000000000000000000CCCC8000";
    attribute INIT_01 of inst : label is "008EFFFF007FF773000000030000088CFFEE800077FF70000000000088000000";
    attribute INIT_02 of inst : label is "00EFFFFF0013777F0000000100088CCCFFFFFE007777310000000000CCC88000";
    attribute INIT_03 of inst : label is "003FC7FF0001FCBF0000011200C88888FFFFF300FFFF100021100000EE888C00";
    attribute INIT_04 of inst : label is "00CFFFFF00FFFFF70001110000008CC8FFFFFC00FFFFF70001110000CCC80000";
    attribute INIT_05 of inst : label is "0000EA150000023200000422000000485B1C4000C11200003220000002480000";
    attribute INIT_06 of inst : label is "008CEF8F00F31130000000000000000C8FEC80003113F0000000000000000000";
    attribute INIT_07 of inst : label is "000000F00000001000000000000000C2D80000001000000000000000C8000000";
    attribute INIT_08 of inst : label is "0FFFFFFF01CCFFFF000133770EC8CEE8FFFFFFF0CCFFFF10773310008EEC8CE0";
    attribute INIT_09 of inst : label is "0FFFFFFF01CCFFFF000133770CEEC8CEFFFFFFF0CCFFFF1077331000EC8CEEC0";
    attribute INIT_0A of inst : label is "00037FFF000000010000000000EEECCCFFFE80007F91F90000000000CCEEE000";
    attribute INIT_0B of inst : label is "0000037F0000000100000000000EEECCFFFFF0007F91F90000000000CCCCEEE0";
    attribute INIT_0C of inst : label is "00000000000000000000000026EEE66E011100000000000000000000EEEEE400";
    attribute INIT_0D of inst : label is "00000000000000000000000026EE666600000000000000000000000066EEEE40";
    attribute INIT_0E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_0F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_10 of inst : label is "07FFFFFF00137FFF00000013FFFFFFFFFFFFFFFFFFFFFFFF3777FFFFFFFFEC80";
    attribute INIT_11 of inst : label is "EC800000FFFFEC80FFFF77730000000000000000000000000000000000000000";
    attribute INIT_12 of inst : label is "008CEFFF0EFFFFFFFFFFFFFF0000008CFFFFFFFFFFFFFFFFFFFF7310CEEEFFFF";
    attribute INIT_13 of inst : label is "FFFF73107310000000000000FFFFEEEC00000000000000000000000000000000";
    attribute INIT_14 of inst : label is "07FFFFFF00137FFF00000013FFFFFFFFFFFFFFFFFFFFFFFF3777FFFFFFFFFFEE";
    attribute INIT_15 of inst : label is "FFFFFFFFFFFFFFFFFFFF7773CC888000EECC8800FFF731003100000000000000";
    attribute INIT_16 of inst : label is "008CEFFF0EFFFFFFFFFFFFFF0000008CFFFFFFFFFFFFFFFFFFFFFF77CEEEFFFF";
    attribute INIT_17 of inst : label is "FFFFFFFFFFFFFFFF33111000FFFFEEECFFFEC8007733110000000000C8000000";
    attribute INIT_18 of inst : label is "07FFFFFF00137FFF00000013FFFFFFFFFFFFFFFFFFFFFFFF3777FFFFFFFFFFFF";
    attribute INIT_19 of inst : label is "FFFFFFFFFFFFFFFFFFFF7773FFFFFFFFFFFFFF70FFF7310031000000FFFFFFFF";
    attribute INIT_1A of inst : label is "008CEFFF0EFFFFFFFFFFFFFF0000008CFFFFFFFFFFFFFFFFFFFFFFFFCEEEFFFF";
    attribute INIT_1B of inst : label is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECFFFEC800FFFFFFE0FFFFFFFFC8000000";
    attribute INIT_1C of inst : label is "0012211200000330000000000000000021122100033000000000000000000000";
    attribute INIT_1D of inst : label is "0012211200000330000000000000000021122100033000000000000000000000";
    attribute INIT_1E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_20 of inst : label is "0FFFFFFF01FFFFCC000133770EC8CEE8FFFFFFF0FFFFCC10773310008EEC8CE0";
    attribute INIT_21 of inst : label is "0FFFFFFF01FFFFCC000133770CEEC8CEFFFFFFF0FFFFCC1077331000EC8CEEC0";
    attribute INIT_22 of inst : label is "0FFF33FF01FFFFFF000133770EC8CEE8FF33FFF0FFFFFF10773310008EEC8CE0";
    attribute INIT_23 of inst : label is "0FFF33FF01FFFFFF000133770CEEC8CEFF33FFF0FFFFFF1077331000EC8CEEC0";
    attribute INIT_24 of inst : label is "0FFFFFFF01CCFFFF000133770EC8CEE8FFFFFFF0CCFFFF10773310008EEC8CE0";
    attribute INIT_25 of inst : label is "0FFFFFFF01CCFFFF000133770CEEC8CEFFFFFFF0CCFFFF1077331000EC8CEEC0";
    attribute INIT_26 of inst : label is "0FFFFFFF01FFFFFF000100770EC8CEE8FFFFFFF0FFFFFF10770010008EEC8CE0";
    attribute INIT_27 of inst : label is "0FFFFFFF01FFFFFF000100770CEEC8CEFFFFFFF0FFFFFF1077001000EC8CEEC0";
    attribute INIT_28 of inst : label is "26A220C26889607800000000000000002C0C22C0870788700000000000000000";
    attribute INIT_29 of inst : label is "888E80C2124F007800000000000000002C0C22C0870788700000000000000000";
    attribute INIT_2A of inst : label is "C222C0C26999607800000000000000002C0C22C0870788700000000000000000";
    attribute INIT_2B of inst : label is "E0C22C0CF0799907000000000000000022C0C22C887078870000000000000000";
    attribute INIT_2C of inst : label is "0CFFFF7307FFFEC80013377700088CCC100000000000000076000000CC000000";
    attribute INIT_2D of inst : label is "0CC8000007FFFEC800133777000000000008CC00CEFFF7007733100000000000";
    attribute INIT_2E of inst : label is "0CFFFFFF07FFFEEE0013377700088CCC77733000CCC8800077331000CC880000";
    attribute INIT_2F of inst : label is "0CFFFE0007FFFFFC00133777000880000EFFFC00FFFFF7007733100000880000";
    attribute INIT_30 of inst : label is "0CFFFFFF07FFFFFF0013377700088CCCFFFFFC00FFFFF70077331000CC880000";
    attribute INIT_31 of inst : label is "00E3CC620007C2D608431110124C844827A5B000BA5A8780035900018448C421";
    attribute INIT_32 of inst : label is "0FFFFFFF01FFFFFF000100770EC8CEE8FFFD8000FFFFFF10770010008C800000";
    attribute INIT_33 of inst : label is "0FFFFFFF01FFFCDF000133770EC8CEE8FFFD8000FFFCDF10773310008C800000";
    attribute INIT_34 of inst : label is "00CEEFFF0FFF73100110000000000000FFEEC000137FFF000000110000000000";
    attribute INIT_35 of inst : label is "0CEEFFFE7F7731100000000000000000FFFEEC0011377F700000000000000000";
    attribute INIT_36 of inst : label is "8CEEFFFE333111000000000000000000FFFEEC80011133300000000000000000";
    attribute INIT_37 of inst : label is "CEEFFFFE111100000000000000000000FFFFEEC0000111100000000000000000";
    attribute INIT_38 of inst : label is "6777FFFF000000000000000000088880FFF77760000000000000000088880000";
    attribute INIT_39 of inst : label is "133377FF0000000000000000088CCC80F773331000000000000000008CCC8800";
    attribute INIT_3A of inst : label is "0001337F00000000000000000CEEEEC8733100000000000000000000CEEEEC00";
    attribute INIT_3B of inst : label is "0000037F00000000000000000004EEEC730000000000000000000000EEE40000";
    attribute INIT_3C of inst : label is "0000003F0000000000000000000004EC300000000000000000000000E4000000";
    attribute INIT_3D of inst : label is "0000000F00000000000000000000000C00000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0022800000010210000000000004812000491000120000000000000021420000";
    attribute INIT_3F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
  begin
  inst : RAMB16_S4
      --pragma translate_off
      generic map (
        INIT_00 => romgen_str2bv(inst'INIT_00),
        INIT_01 => romgen_str2bv(inst'INIT_01),
        INIT_02 => romgen_str2bv(inst'INIT_02),
        INIT_03 => romgen_str2bv(inst'INIT_03),
        INIT_04 => romgen_str2bv(inst'INIT_04),
        INIT_05 => romgen_str2bv(inst'INIT_05),
        INIT_06 => romgen_str2bv(inst'INIT_06),
        INIT_07 => romgen_str2bv(inst'INIT_07),
        INIT_08 => romgen_str2bv(inst'INIT_08),
        INIT_09 => romgen_str2bv(inst'INIT_09),
        INIT_0A => romgen_str2bv(inst'INIT_0A),
        INIT_0B => romgen_str2bv(inst'INIT_0B),
        INIT_0C => romgen_str2bv(inst'INIT_0C),
        INIT_0D => romgen_str2bv(inst'INIT_0D),
        INIT_0E => romgen_str2bv(inst'INIT_0E),
        INIT_0F => romgen_str2bv(inst'INIT_0F),
        INIT_10 => romgen_str2bv(inst'INIT_10),
        INIT_11 => romgen_str2bv(inst'INIT_11),
        INIT_12 => romgen_str2bv(inst'INIT_12),
        INIT_13 => romgen_str2bv(inst'INIT_13),
        INIT_14 => romgen_str2bv(inst'INIT_14),
        INIT_15 => romgen_str2bv(inst'INIT_15),
        INIT_16 => romgen_str2bv(inst'INIT_16),
        INIT_17 => romgen_str2bv(inst'INIT_17),
        INIT_18 => romgen_str2bv(inst'INIT_18),
        INIT_19 => romgen_str2bv(inst'INIT_19),
        INIT_1A => romgen_str2bv(inst'INIT_1A),
        INIT_1B => romgen_str2bv(inst'INIT_1B),
        INIT_1C => romgen_str2bv(inst'INIT_1C),
        INIT_1D => romgen_str2bv(inst'INIT_1D),
        INIT_1E => romgen_str2bv(inst'INIT_1E),
        INIT_1F => romgen_str2bv(inst'INIT_1F),
        INIT_20 => romgen_str2bv(inst'INIT_20),
        INIT_21 => romgen_str2bv(inst'INIT_21),
        INIT_22 => romgen_str2bv(inst'INIT_22),
        INIT_23 => romgen_str2bv(inst'INIT_23),
        INIT_24 => romgen_str2bv(inst'INIT_24),
        INIT_25 => romgen_str2bv(inst'INIT_25),
        INIT_26 => romgen_str2bv(inst'INIT_26),
        INIT_27 => romgen_str2bv(inst'INIT_27),
        INIT_28 => romgen_str2bv(inst'INIT_28),
        INIT_29 => romgen_str2bv(inst'INIT_29),
        INIT_2A => romgen_str2bv(inst'INIT_2A),
        INIT_2B => romgen_str2bv(inst'INIT_2B),
        INIT_2C => romgen_str2bv(inst'INIT_2C),
        INIT_2D => romgen_str2bv(inst'INIT_2D),
        INIT_2E => romgen_str2bv(inst'INIT_2E),
        INIT_2F => romgen_str2bv(inst'INIT_2F),
        INIT_30 => romgen_str2bv(inst'INIT_30),
        INIT_31 => romgen_str2bv(inst'INIT_31),
        INIT_32 => romgen_str2bv(inst'INIT_32),
        INIT_33 => romgen_str2bv(inst'INIT_33),
        INIT_34 => romgen_str2bv(inst'INIT_34),
        INIT_35 => romgen_str2bv(inst'INIT_35),
        INIT_36 => romgen_str2bv(inst'INIT_36),
        INIT_37 => romgen_str2bv(inst'INIT_37),
        INIT_38 => romgen_str2bv(inst'INIT_38),
        INIT_39 => romgen_str2bv(inst'INIT_39),
        INIT_3A => romgen_str2bv(inst'INIT_3A),
        INIT_3B => romgen_str2bv(inst'INIT_3B),
        INIT_3C => romgen_str2bv(inst'INIT_3C),
        INIT_3D => romgen_str2bv(inst'INIT_3D),
        INIT_3E => romgen_str2bv(inst'INIT_3E),
        INIT_3F => romgen_str2bv(inst'INIT_3F)
        )
      --pragma translate_on
      port map (
        DO   => DATA(3 downto 0),
        ADDR => rom_addr,
        CLK  => CLK,
        DI   => "0000",
        EN   => ENA,
        SSR  => '0',
        WE   => '0'
        );
  end generate;
  rom1 : if true generate
    attribute INIT_00 of inst : label is "000420000000012400000000000000001C000000892C00000011330008000000";
    attribute INIT_01 of inst : label is "000040140002098D0000111300000000018000008A0400001110000000000000";
    attribute INIT_02 of inst : label is "000000000000004E000000010000000000000000488800001331100000000000";
    attribute INIT_03 of inst : label is "0000000000000000000000000006666600000000000000000000000066666000";
    attribute INIT_04 of inst : label is "00000000000000080000000100000000002C0000000000002000000000000000";
    attribute INIT_05 of inst : label is "000EB5EF0000356D0000000000008C86A5E7BE00BF65300000000000EC848000";
    attribute INIT_06 of inst : label is "00008C8F000337FF000000010000000C8C800000F73300000000000000000000";
    attribute INIT_07 of inst : label is "000000F00000EEFE00001122000000C2D8000000FEE0000021100000C8000000";
    attribute INIT_08 of inst : label is "0FF77FFF01B308FF000133770EC8CEE8F75A7B70B308FF10773310008E488CE0";
    attribute INIT_09 of inst : label is "0FF77FFF01B308FF000133770CEEC8CEF75A7B70B308FF1077331000EC08EEC0";
    attribute INIT_0A of inst : label is "00037FFF000000010000000000EEECCCFFFE80001067066000000000CCEEE000";
    attribute INIT_0B of inst : label is "0000037F0000000100000000000EEECCFFFFF0001067066000000000CCCCEEE0";
    attribute INIT_0C of inst : label is "00000000000000000000000026EEE66E011100000000000000000000EEEEE400";
    attribute INIT_0D of inst : label is "00000000000000000000000026EE666600000000000000000000000066EEEE40";
    attribute INIT_0E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_0F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_10 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_11 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_12 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_13 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_14 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_15 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_16 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_17 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_18 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_19 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1C of inst : label is "0FFFFFFF01FFFFFF000133770EC8CEE8FFFFFFF0FFFFFF10773310008EEC8CE0";
    attribute INIT_1D of inst : label is "0FFFFFFF01FFFFFF000133770CEEC8CEFFFFFFF0FFFFFF1077331000EC8CEEC0";
    attribute INIT_1E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_20 of inst : label is "0FFFF77F01FF803B000133770EC8CEE8FFF77FF0FF803B10773310008EEC8CE0";
    attribute INIT_21 of inst : label is "0FFFF77F01FF803B000133770CEEC8CEFFF77FF0FF803B1077331000EC8CEEC0";
    attribute INIT_22 of inst : label is "0FF7FF7F01FC88CF000133770EC8CEE8F7FF7FF0FC88CF10773310008EEC8CE0";
    attribute INIT_23 of inst : label is "0FF7FF7F01FC88CF000133770CEEC8CEF7FF7FF0FC88CF1077331000EC8CEEC0";
    attribute INIT_24 of inst : label is "0FF77FFF01B308FF000133770EC8CEE8F77FFFF0B308FF10773310008EEC8CE0";
    attribute INIT_25 of inst : label is "0FF77FFF01B308FF000133770CEEC8CEF77FFFF0B308FF1077331000EC8CEEC0";
    attribute INIT_26 of inst : label is "0FFFFFFF01F3113F000033670EC8CEE8FFFFFFF0F3113F10763300008EEC8CE0";
    attribute INIT_27 of inst : label is "0FFFFFFF01F3113F000033670CEEC8CEFFFFFFF0F3113F1076330000EC8CEEC0";
    attribute INIT_28 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_29 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2C of inst : label is "0CFFFF7307FFFEC80013377700088CCC100000000000000076000000CC000000";
    attribute INIT_2D of inst : label is "0CC8000007FFFEC800133777000000000008CC00CEFFF7007733100000000000";
    attribute INIT_2E of inst : label is "0CFFFFFF07FFFEEE0013377700088CCC77733000CCC8800077331000CC880000";
    attribute INIT_2F of inst : label is "0CFFFE0007FFFFFC00133777000880000EFFFC00FFFFF7007733100000880000";
    attribute INIT_30 of inst : label is "0CFFFFFF07FFFFFF0013377700088CCCFFFFFC00FFFFF70077331000CC880000";
    attribute INIT_31 of inst : label is "000EFCE700007B52000000000000088037EB00007EFF70000000000008800000";
    attribute INIT_32 of inst : label is "0FFFFFFF01F3113F000000670EC8CEE8FFFFFF00F3113F10760000008CEEE660";
    attribute INIT_33 of inst : label is "0FFFFFFF01F1001F000122770EC8CEE8FFFFFF00F1001F10772210008CEEE660";
    attribute INIT_34 of inst : label is "00CEEFFF0FFF73100110000000000000FFEEC000137FFF000000110000000000";
    attribute INIT_35 of inst : label is "0CEEFFFE7F7731100000000000000000FFFEEC0011377F700000000000000000";
    attribute INIT_36 of inst : label is "8CEEFFFE333111000000000000000000FFFEEC80011133300000000000000000";
    attribute INIT_37 of inst : label is "CEEFFFFE111100000000000000000000FFFFEEC0000111100000000000000000";
    attribute INIT_38 of inst : label is "6777FFFF000000000000000000088880FFF77760000000000000000088880000";
    attribute INIT_39 of inst : label is "133377FF0000000000000000088CCC80F773331000000000000000008CCC8800";
    attribute INIT_3A of inst : label is "0001337F00000000000000000CEEEEC8733100000000000000000000CEEEEC00";
    attribute INIT_3B of inst : label is "0000037F00000000000000000004EEEC730000000000000000000000EEE40000";
    attribute INIT_3C of inst : label is "0000003F0000000000000000000004EC300000000000000000000000E4000000";
    attribute INIT_3D of inst : label is "0000000F00000000000000000000000C00000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0022800000010210000000000004812000491000120000000000000021420000";
    attribute INIT_3F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
  begin
  inst : RAMB16_S4
      --pragma translate_off
      generic map (
        INIT_00 => romgen_str2bv(inst'INIT_00),
        INIT_01 => romgen_str2bv(inst'INIT_01),
        INIT_02 => romgen_str2bv(inst'INIT_02),
        INIT_03 => romgen_str2bv(inst'INIT_03),
        INIT_04 => romgen_str2bv(inst'INIT_04),
        INIT_05 => romgen_str2bv(inst'INIT_05),
        INIT_06 => romgen_str2bv(inst'INIT_06),
        INIT_07 => romgen_str2bv(inst'INIT_07),
        INIT_08 => romgen_str2bv(inst'INIT_08),
        INIT_09 => romgen_str2bv(inst'INIT_09),
        INIT_0A => romgen_str2bv(inst'INIT_0A),
        INIT_0B => romgen_str2bv(inst'INIT_0B),
        INIT_0C => romgen_str2bv(inst'INIT_0C),
        INIT_0D => romgen_str2bv(inst'INIT_0D),
        INIT_0E => romgen_str2bv(inst'INIT_0E),
        INIT_0F => romgen_str2bv(inst'INIT_0F),
        INIT_10 => romgen_str2bv(inst'INIT_10),
        INIT_11 => romgen_str2bv(inst'INIT_11),
        INIT_12 => romgen_str2bv(inst'INIT_12),
        INIT_13 => romgen_str2bv(inst'INIT_13),
        INIT_14 => romgen_str2bv(inst'INIT_14),
        INIT_15 => romgen_str2bv(inst'INIT_15),
        INIT_16 => romgen_str2bv(inst'INIT_16),
        INIT_17 => romgen_str2bv(inst'INIT_17),
        INIT_18 => romgen_str2bv(inst'INIT_18),
        INIT_19 => romgen_str2bv(inst'INIT_19),
        INIT_1A => romgen_str2bv(inst'INIT_1A),
        INIT_1B => romgen_str2bv(inst'INIT_1B),
        INIT_1C => romgen_str2bv(inst'INIT_1C),
        INIT_1D => romgen_str2bv(inst'INIT_1D),
        INIT_1E => romgen_str2bv(inst'INIT_1E),
        INIT_1F => romgen_str2bv(inst'INIT_1F),
        INIT_20 => romgen_str2bv(inst'INIT_20),
        INIT_21 => romgen_str2bv(inst'INIT_21),
        INIT_22 => romgen_str2bv(inst'INIT_22),
        INIT_23 => romgen_str2bv(inst'INIT_23),
        INIT_24 => romgen_str2bv(inst'INIT_24),
        INIT_25 => romgen_str2bv(inst'INIT_25),
        INIT_26 => romgen_str2bv(inst'INIT_26),
        INIT_27 => romgen_str2bv(inst'INIT_27),
        INIT_28 => romgen_str2bv(inst'INIT_28),
        INIT_29 => romgen_str2bv(inst'INIT_29),
        INIT_2A => romgen_str2bv(inst'INIT_2A),
        INIT_2B => romgen_str2bv(inst'INIT_2B),
        INIT_2C => romgen_str2bv(inst'INIT_2C),
        INIT_2D => romgen_str2bv(inst'INIT_2D),
        INIT_2E => romgen_str2bv(inst'INIT_2E),
        INIT_2F => romgen_str2bv(inst'INIT_2F),
        INIT_30 => romgen_str2bv(inst'INIT_30),
        INIT_31 => romgen_str2bv(inst'INIT_31),
        INIT_32 => romgen_str2bv(inst'INIT_32),
        INIT_33 => romgen_str2bv(inst'INIT_33),
        INIT_34 => romgen_str2bv(inst'INIT_34),
        INIT_35 => romgen_str2bv(inst'INIT_35),
        INIT_36 => romgen_str2bv(inst'INIT_36),
        INIT_37 => romgen_str2bv(inst'INIT_37),
        INIT_38 => romgen_str2bv(inst'INIT_38),
        INIT_39 => romgen_str2bv(inst'INIT_39),
        INIT_3A => romgen_str2bv(inst'INIT_3A),
        INIT_3B => romgen_str2bv(inst'INIT_3B),
        INIT_3C => romgen_str2bv(inst'INIT_3C),
        INIT_3D => romgen_str2bv(inst'INIT_3D),
        INIT_3E => romgen_str2bv(inst'INIT_3E),
        INIT_3F => romgen_str2bv(inst'INIT_3F)
        )
      --pragma translate_on
      port map (
        DO   => DATA(7 downto 4),
        ADDR => rom_addr,
        CLK  => CLK,
        DI   => "0000",
        EN   => ENA,
        SSR  => '0',
        WE   => '0'
        );
  end generate;
end RTL;
