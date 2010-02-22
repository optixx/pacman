-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_6J is
  port (
    CLK         : in    std_logic;
    ENA         : in    std_logic;
    ADDR        : in    std_logic_vector(11 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_6J is

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
    attribute INIT_00 of inst : label is "306FFFFF07206C502303A2EDC060320EC0725079E040922EF26DF69002001001";
    attribute INIT_01 of inst : label is "3605293EF39002811BBBB0A2540D27DF1617790D2F6DCF36739002811F61410D";
    attribute INIT_02 of inst : label is "F0106F1E16B0D3160520EB0524E11407068BBBB022540527DF161779052F6DCF";
    attribute INIT_03 of inst : label is "4206B143CED36809404C0C7FE00246404C0C70E00246001504B0C0600246C019";
    attribute INIT_04 of inst : label is "FF0697F6911016000A700A242C242D12A3810A4EA01EACE181CA0EC1CED46551";
    attribute INIT_05 of inst : label is "32FC0D71E0613161710F40404F4040004F0040C04FC03B3680600A002153DFFF";
    attribute INIT_06 of inst : label is "18EC28E581618EC21E5806FF00AEC22E58067F00AB002E12CE02F002F017D1E0";
    attribute INIT_07 of inst : label is "72C3CEDA6803E36FFFF00ACED7563600AEC20E588618EC20E584618EC24E5826";
    attribute INIT_08 of inst : label is "0ACED7C616700ACED962C2C104E1636FF00A2A2E32A2E9291061CEDE6CEDB65F";
    attribute INIT_09 of inst : label is "6F01C0912B2DBB8037FE311BB803237CE100211936A21C0D7F0713002F18A060";
    attribute INIT_0A of inst : label is "00A0022DD40300A2DD002461E3B20600AB02DD863B20600A680600A002B02DD8";
    attribute INIT_0B of inst : label is "02015109B05CB8010023B32FA0600A002A4D704C0C70E4600129A0EB3B5030FE";
    attribute INIT_0C of inst : label is "5AA45A2947008E090782811112222555545A2A5A55555A5A50F1001F00F1001F";
    attribute INIT_0D of inst : label is "88441124845A2A5A555AA5555A5A50000000000000011111248954245A2A5A55";
    attribute INIT_0E of inst : label is "65DA6A5A53024D4C87864142222424255AA555555AAA5A55555746818F498842";
    attribute INIT_0F of inst : label is "C1C424255555DA6DDDDBDD6DDDDDDDDFFFED4C87864141248954255AAA5A55DA";
    attribute INIT_10 of inst : label is "222222220C0FFFEC4B8785C1C424212485DA6DDDDBDD6A5A5A5A5FFFEC4B8785";
    attribute INIT_11 of inst : label is "62ACCCC2ACCCC2A62A862ACC54E5ACCCC2ACCCC9AC422228622220CCCC2ACCC4";
    attribute INIT_12 of inst : label is "882E2ACCCC2ACCCC24E24CE2ACC24E54E2ACCCC2ACCCC24E24CE2ACC2A62B72A";
    attribute INIT_13 of inst : label is "88628888888628862ACC24EBACC24E2B99972B22272B22272B72B972ACC24E2A";
    attribute INIT_14 of inst : label is "ACC24E54EB4E54CE2ACC24599724E2B999729993599724CE2ACC2448862862A8";
    attribute INIT_15 of inst : label is "ACC2B724E2B724E2ACCCC2B724E2B972ACC24E2A624E2A62E333C24E2A624CE2";
    attribute INIT_16 of inst : label is "411C11112120000C2A882E2A882E2ACCCE2A882E2A888ACC54E54E2ACCC054E6";
    attribute INIT_17 of inst : label is "463F4431111111111111111111111111436C34436C34431113C344333C344111";
    attribute INIT_18 of inst : label is "3441113111C31111488881113111C311114333C344333C34431113C1114463F4";
    attribute INIT_19 of inst : label is "6C34431111111111111111111111111463F4463F4431113C11144333C344333C";
    attribute INIT_1A of inst : label is "77D7978717D767A7A7A71727373111411C1111214333C34431113C34436C3443";
    attribute INIT_1B of inst : label is "D9097969391989A9F9A9A90868C82888E848C0302018A888685888A8C8F82858";
    attribute INIT_1C of inst : label is "FFF91C0055260B0FFF0004945230B0FFF52F330879834ADACAAA99C9E91939A9";
    attribute INIT_1D of inst : label is "4152220F1F256F005D17220F5FF7402591C02C00AAAAAA00F5F5EF02591C02C0";
    attribute INIT_1E of inst : label is "2591C00202F01220F5F09CEF02591C001220F7FEF4452042143083502E0F9FB9";
    attribute INIT_1F of inst : label is "3230F3F08910EDCBA980C2A0FEFFED00000002F60E1DB350035EF236000F05F3";
    attribute INIT_20 of inst : label is "80F3F69BE906180F1F69B31D6150F1F69521B16150FFF5D1EB39E0A025431218";
    attribute INIT_21 of inst : label is "BB5B1B9F0250F3FEDCBA982D0FFFFED00504280FFFFED00100260F3F69B39D61";
    attribute INIT_22 of inst : label is "51220F3FBBBBBBB0DF20280F3FBB53529831D0280F1FBBBBBE983250250F1FBB";
    attribute INIT_23 of inst : label is "0F3FEDA9220F3FED87220F3FED60220F3F0540220F3F0530220F3F0520220F3F";
    attribute INIT_24 of inst : label is "FFF04945230100E9F301380FFFD020000412340FFFBF0092FD5D340F3FEDCB22";
    attribute INIT_25 of inst : label is "0000091C0005526380FFF34945230200E9F301380FFF04945230103E9F302380";
    attribute INIT_26 of inst : label is "53E0FFF005C2143E0FFFE1DB3503C0FFF035EF23A0FFF5EFE0035EF23A0FFF00";
    attribute INIT_27 of inst : label is "D61E0F7F6145A5761E0F5F69B35D61B0F5F65B53F161B0FFF0002A0FFF487920";
    attribute INIT_28 of inst : label is "02E0F7FBBB5BF2F4F02E0F5FBBBB439C94302B0F5FBB52571D9B02B0F7F69B3F";
    attribute INIT_29 of inst : label is "54622226444211112222644424222264442111122231113110F7FBBBB9212923";
    attribute INIT_2A of inst : label is "111B424242E42421113111161113464327111584481115C11141131114111311";
    attribute INIT_2B of inst : label is "387A46AF10210DE1320EDE000DE10204311311131111A12124242E2221111242";
    attribute INIT_2C of inst : label is "0F207B020FA0C0036C6C6C6C6C6C6C6C6C6C9898747440405858F440284AA2F5";
    attribute INIT_2D of inst : label is "080000400A000A000A00860406008886060097C60600A6060600B5860600C406";
    attribute INIT_2E of inst : label is "B4D71C70000084210810C100FFCE6F010C1002050F20CFC60C1063420C106D82";
    attribute INIT_2F of inst : label is "0700714F33221FEDB9902902A03A0390290214F33221CFCEC5C8B3B438D3A2A2";
    attribute INIT_30 of inst : label is "0E0D0C0B0700707007070070E0D0C0B0700707007070070E0D0C0B0700707007";
    attribute INIT_31 of inst : label is "090E02070AF070A0F030609E06090E0204F32201BB0007060506070A0C0D0E07";
    attribute INIT_32 of inst : label is "676760437072437676760BA70724376767604F31211FE0BA9098707650609E06";
    attribute INIT_33 of inst : label is "0000000000000000000000000000000000CD00760A907A9CB0DC0CBA97072437";
    attribute INIT_34 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_35 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_36 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_37 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_38 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_39 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "110D000000000000000000000000000000000000000000000000000000000000";
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
    attribute INIT_00 of inst : label is "C0050000503FE7234C30D0F720230C4F750312A7E1230D0F60C74875C3100002";
    attribute INIT_01 of inst : label is "3C3BCBA74A75C34DE333334C1234CA743C888734C0E7243C7A75C34DEF03533B";
    attribute INIT_02 of inst : label is "4C30050E0E73BC0034CFE734C4FDFA141D7333337C1237CA743C888737C0E724";
    attribute INIT_03 of inst : label is "833C737C25C2001DF12F227035C300F12F227435C300402F12F22035C300402D";
    attribute INIT_04 of inst : label is "00FE740E7C120EB543450346374037372033724F033624F133624F7E25C20EC4";
    attribute INIT_05 of inst : label is "03AF22703502445454440F4000400F4000400F40004020CF21E5435C3484E400";
    attribute INIT_06 of inst : label is "B74B303020EB749303026E425434930302EE42503F5034033403A5C34C34E035";
    attribute INIT_07 of inst : label is "031C25C20020F0E000058325C42C0E5834B323020EB74B313020EB74B303020E";
    attribute INIT_08 of inst : label is "4325C42C0E054325C204033023F3C0E0058344372423713F201D25C2025C20D5";
    attribute INIT_09 of inst : label is "04C3D1DF35C133F1273327C33F1272733C5C3DED003E3F227A502F503A38C1E5";
    attribute INIT_0A of inst : label is "5035C33ECF2A5033EC5C3000124C1E543F13EC0024C6E543F21E5435C3F13EC0";
    attribute INIT_0B of inst : label is "0333333CF2B722025C324C3DC1E5435C33FCF12F22743004023AD1F70CE1F2FE";
    attribute INIT_0C of inst : label is "52A9A45111716010600050000222222229A452525555525250F0000F00F0000F";
    attribute INIT_0D of inst : label is "5044292249A452525552A55552525000000000000000000922442299A4525255";
    attribute INIT_0E of inst : label is "DBA5D6D6D1B180D0A0F050A22222929552A5555D56A6D6D55551310150B0D030";
    attribute INIT_0F of inst : label is "D0229292222BA5D6666D66B66666666FFFF0D0A0F050A92244229D56A6D6DBA5";
    attribute INIT_10 of inst : label is "DDDDDDDDDF4FFFF0E0B000D0229299224BA5D6666D66B6D6D6D6DFFFF0E0B000";
    attribute INIT_11 of inst : label is "E0DFFFD0DFFFD0EE0EEE0DFD0ED0DFFFD0DFFFD0DFDDDDDDDDDDDDFFFD0DFFFD";
    attribute INIT_12 of inst : label is "EEFD0DFFFD0DFFFD0ED0EFD0DFD0ED0ED0DFFFD0DFFFD0ED0EFD0DFD0EE0EE0E";
    attribute INIT_13 of inst : label is "EEF0FEEEEEEF0FEE0DFD0ED1DFD0ED0EEEEE0EDDDE0EDDDE0EE0EEE0DFD0ED0E";
    attribute INIT_14 of inst : label is "DFD0ED0ED0ED0EFD0DFD0EFEEF0ED0EEEEF0FEEFFEEF0EFD0DFD0EFEEF0FE0EE";
    attribute INIT_15 of inst : label is "DFD0EE0ED0EE0ED0DFFFD0EE0ED0EEE0DFD0ED0EE0ED0EE0EDDDE0ED0EE0EFD0";
    attribute INIT_16 of inst : label is "000000000060000D0EEEFD0EEEFD0DFFFC0EEEFD0EEEEFFD0ED0ED0DFFFF0ED0";
    attribute INIT_17 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_18 of inst : label is "0000000000000000010100000000000000000000000000000000000000000000";
    attribute INIT_19 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_1A of inst : label is "13F3E3C3B3938373635343332310000000000000000000000000000000000000";
    attribute INIT_1B of inst : label is "B3B39383A343532363130303F3E3E3D3C3C3B0000003A3938373635343333323";
    attribute INIT_1C of inst : label is "28254454445483828244454445483828245445444448D333231303F3E3E3D3C3";
    attribute INIT_1D of inst : label is "4445058282545444444409828245545454450811111111112824444545445088";
    attribute INIT_1E of inst : label is "54544543454430B8282454444545445430B8282445554455455445550E928255";
    attribute INIT_1F of inst : label is "40C8282333342222222450B82825554333444544444444554554440908020825";
    attribute INIT_20 of inst : label is "4828225444520482822544442048282244444420682824444444443454544544";
    attribute INIT_21 of inst : label is "3344444440C82822222222058292555433410782925554334107828225444420";
    attribute INIT_22 of inst : label is "880182823333333544540C82823345544444440C82823333344445540C828233";
    attribute INIT_23 of inst : label is "9282888803928288880392828884039282488403928248840392824884039282";
    attribute INIT_24 of inst : label is "2824544454434444444300828244544444440082824444554444009282888803";
    attribute INIT_25 of inst : label is "4444454454444540082825544454434444444300828245444544345444443008";
    attribute INIT_26 of inst : label is "5008282444444500828244444550082824554440082824444445544400828244";
    attribute INIT_27 of inst : label is "4204828224555542068282254454204828224455442068282333008282544455";
    attribute INIT_28 of inst : label is "40C8282333444445440C82823333554455540C8282334554444440C828225444";
    attribute INIT_29 of inst : label is "0000000000000000000000000000000000000000000000000828233335444554";
    attribute INIT_2A of inst : label is "0000000000000000000000070000010001000010010000600000000000000000";
    attribute INIT_2B of inst : label is "1CA1133414A213304C1330441330400000000000000000000000000000000000";
    attribute INIT_2C of inst : label is "00008F27010000271A1A1A1A1A1A1A1A19190A0A1A1A1A1A19190919F123FD68";
    attribute INIT_2D of inst : label is "0000000700001F74000000020000804300008033000080330000802300008023";
    attribute INIT_2E of inst : label is "776665508421000000000007F01F8F240000200000008F050000000400000F14";
    attribute INIT_2F of inst : label is "343560F0F0F0FF88886786786786786786780F0F0F0F3D3D39353F3DCBAA9988";
    attribute INIT_30 of inst : label is "1414141434356343563435614141414343563435634356141414143435634356";
    attribute INIT_31 of inst : label is "545454767445454545476744545454540F0F0F0F3FF746363614141414141427";
    attribute INIT_32 of inst : label is "262627826344426262627826344426262620F0F0F0FF65444544454447674454";
    attribute INIT_33 of inst : label is "000000000000000000000000000000000039F782462266262462362626344426";
    attribute INIT_34 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_35 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_36 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_37 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_38 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_39 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "F308300000000000000000000000000000000000000000000000000000000000";
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
