-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_6H is
  port (
    CLK         : in    std_logic;
    ENA         : in    std_logic;
    ADDR        : in    std_logic_vector(11 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_6H is

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
    attribute INIT_00 of inst : label is "B4B4B4B06706CF06D5597E6FBFBFBCF06FBFBFBD97E05D00D9716D1EDF06D0ED";
    attribute INIT_01 of inst : label is "8106307EDFA0EA7E2A07D1A92F921E40BEE02D9940105D9119001906C0B4B0B4";
    attribute INIT_02 of inst : label is "0EDFA09A7E2A07D3A9D223E8EE0AD9109301EDFA01A7E2A07D2A9D122E8EEFAD";
    attribute INIT_03 of inst : label is "DCA764E07D7AD621E80DBA764E0427D6AEE187D3A9D323E8EE1ADA19DF2E22F0";
    attribute INIT_04 of inst : label is "9E3DB6DB6D86D86D94E6156DD72D02CF016DAA161B100C1B101A7E6A9D721E80";
    attribute INIT_05 of inst : label is "D6D2A1B3162F6D2A1B30757D02DCADC255DEC2EC2FA0D162E6D2A1B3102E6DAA";
    attribute INIT_06 of inst : label is "0C260C2A0C2D242E2C15110C127121DE7A94E410057E620D6DAA86D86D1B3102";
    attribute INIT_07 of inst : label is "028E587ED1A94E71D72D02C102C6DAAF80837116D006D56D5325225325221E2D";
    attribute INIT_08 of inst : label is "B6D86D86D98716D606D516D406D20B6D1A28316D206D27286D1A48D02DE20411";
    attribute INIT_09 of inst : label is "7016D006DD16DC06D44D116808F73006D1A38B16DA06D916D806DC0E6D1A9E3D";
    attribute INIT_0A of inst : label is "1A94E8156DD72D02C10256DAA2E252D0C2E277E8A944E41E72F103084710308A";
    attribute INIT_0B of inst : label is "2F68D8E6D2A103D3286D1AD22D0A58D6D2AC809A7EEDD121ED12CC102EE58FED";
    attribute INIT_0C of inst : label is "0AE6D004C0C7FE072F00246104C0C70E07200246001C0C7F8600194E410057E8";
    attribute INIT_0D of inst : label is "2C02C010023DD060024DD002F06001FFFFE6C01F881001FF010026B002C072F0";
    attribute INIT_0E of inst : label is "71797C70684D6B5D4849473D753D1C220E20CF66CF63DA7EC2AB0021EF06FEC2";
    attribute INIT_0F of inst : label is "9C0DF0010410E40337894E416265B1CEBABAAAA083384760A549620D898F858B";
    attribute INIT_10 of inst : label is "12D719F067F6D3015573A3B906F4CA87A4510019C0DF401041F9C0DF0410010E";
    attribute INIT_11 of inst : label is "D3410D0810D041E418053D20D3D0620790ED0ED8EE606551DE61D0014F33B71E";
    attribute INIT_12 of inst : label is "410D0810DE410415053DC0D3D60BDF1870EE90ED8EE606551DE61D00190D3810";
    attribute INIT_13 of inst : label is "1D66001AE01EBF70106FEC0DF0414010E28FE2E889F464EFE6FEE6190D3810D3";
    attribute INIT_14 of inst : label is "01D96D25D28E309D07DF7DE7D701D56309D07DF7DE7D401D56BE609D87DC7D50";
    attribute INIT_15 of inst : label is "20C1D020416F2780D6D9B6D796D576D356D136DFC6DCA6D086D066D046D026DC";
    attribute INIT_16 of inst : label is "92D22E81D72D02CF1D52DE20F1D32DC2EF1D12DA2EC1D82041D620C1D420C1D2";
    attribute INIT_17 of inst : label is "DE2DA2331DC2D82121D62DC2101D42DA20F1D22D820F1D02D62011DE2D42101D";
    attribute INIT_18 of inst : label is "2D42101D72D52D32D12D02DE2DC2DA2E21D62D42D22D020419D22001DC2D022E";
    attribute INIT_19 of inst : label is "02D82D220019D92D22F21D82841DC2F962ED81D62DC2D42D22D02DE2DA2D82D6";
    attribute INIT_1A of inst : label is "07D06F6E1A161D96622D732E01D01F9E12FE021E9D021E85D425E9D62D42D22D";
    attribute INIT_1B of inst : label is "36FFFF8EF2C104EC36FF8ED2926EB20EFFF6EE16E236700A907D068F6FFFFE1A";
    attribute INIT_1C of inst : label is "4AA07D6A7827BD1A0D08F0509E2216F700AE32F7C1716F778E5216F78E127781";
    attribute INIT_1D of inst : label is "DADCA303EE4A7E27BD1A9DC2DE296DDCAD9BDDAA9DC2DE296D2D1DCADAA303EE";
    attribute INIT_1E of inst : label is "01DEADEA303EE4A7B27BD1A9DD2D0296DDDADCAB999DCAD9BD9DD2D0296D9D1D";
    attribute INIT_1F of inst : label is "303EE4A8327BD1A9DE2D2296DDEADEAB707CF17D99DCAD9BDDABD9DE2D2296D0";
    attribute INIT_20 of inst : label is "A7DCA9DF2D4296DDFAD9BDD0A80A2D70019ADD01DD91D9DF2D4296DB01DFAD0A";
    attribute INIT_21 of inst : label is "A9DD2D0296DDDADCAEC18FA7DDA9DC2DE29EDDCADAA9DC2DE296DDCADAAEC185";
    attribute INIT_22 of inst : label is "83A7DFA9DE2D229EDDEADEA9DE2D2296DDEADEAEC189A7DEA9DD2D029EDDDADC";
    attribute INIT_23 of inst : label is "9A9DC2D6296DDCADCBDD2A8EA7D7A9DF2D429EDDFAD0A9DF2D4296DDFAD0AEC1";
    attribute INIT_24 of inst : label is "DDADE1D9D2F1D06F77DB136A3DDD22EDE29DC2D6296DDCAD2AB707CF17DDCBDD";
    attribute INIT_25 of inst : label is "D2F1DD42FF1DD22EDB2D03DDE29D3736CEDB13D3D9DBA16D0EDA806060FD97AE";
    attribute INIT_26 of inst : label is "D43D96A2D7D4AB1D1D9ADD21DD01D5D5D780606E05DD2200D96AEDDA06D71DE1";
    attribute INIT_27 of inst : label is "1ED5A2D006D8992006D0ED9FB16D0ED9D2F1D06F7DBA982E4E4D713D3DDB2D7A";
    attribute INIT_28 of inst : label is "A82D73010019D92E7F6C3999D4D9A9A92D9AE298E50EF7991A2D016D8AC2016D";
    attribute INIT_29 of inst : label is "1A9999B777E0E3F77EA3776BBBDBFB7181EE0AA83320EA833A3A4EA3A2EA3A0E";
    attribute INIT_2A of inst : label is "FA3913873C1341E9AF8321341B0D031E81BBD970BB508EA36EA1333AFDB3CCDE";
    attribute INIT_2B of inst : label is "91E61341AED3C1E21341F86E01FCED069B7D0E3879780E48F6910BAEDAAEDFFF";
    attribute INIT_2C of inst : label is "BEC16B06BB2B300000000705030106080402000009E4187E01E9A386E707E0A3";
    attribute INIT_2D of inst : label is "0EC86E512A942BDD81EE0A78BBBED8D60DBBBFD0EA06EE8785E0A164E514E416";
    attribute INIT_2E of inst : label is "206FFFF9806EEACED16CE32650FEEEA91173C79C73C70F15591173790F173755";
    attribute INIT_2F of inst : label is "17E7B81CE28ECE3A81EE0A940D911C03155001B53E363E363E1903206F6EEA04";
    attribute INIT_30 of inst : label is "6B99B8106F763E283EB83374CEB0DF744EBED8D90D33374CEB0DA3744EBFDA04";
    attribute INIT_31 of inst : label is "0183F0130EBFF19DC015D9D401D63EF651971B0766F7FFFFB8068F706F67BD37";
    attribute INIT_32 of inst : label is "81D431849D3006DA8FEE9909D07D9709D307DEC4A7E1D32849D307D98FEE8870";
    attribute INIT_33 of inst : label is "4DE71DEC1DB01E628487ECA7D4DE21DEC1DBC1E128487ECA7D4DEC1DEC1DB812";
    attribute INIT_34 of inst : label is "FEB2DEDE71DEC1DB01E62DEDE21DEC1DB01E12DEDEC1DEC1DB019EB2887ECA7D";
    attribute INIT_35 of inst : label is "C1780E74D65D3E76D6EDD72C5DC8F523D7032ED980BB501B0E86FD4A70ED9E02";
    attribute INIT_36 of inst : label is "7778F1D0E2886BED9EDD0D38F67FD0C0C0C0C0C0C0C0C0C0CFBF9F7F5F57F65D";
    attribute INIT_37 of inst : label is "D6D026D872ED7070EDE43E8A46D1E2806DED06EEDE7D7B81F698F68C7D7B0176";
    attribute INIT_38 of inst : label is "315D9506F7778523DF032ED980BB501B0E86F9F036D026D016D006D0F6D0E6D0";
    attribute INIT_39 of inst : label is "FBB085D0878EDA0C5D0D6DF0D7086B7DF6FFFF79EDE7D4EDC7DF66ED10D08133";
    attribute INIT_3A of inst : label is "DA6D9EDE7D47D76D4ED6DBD486DBD6DBD57D4D5ED68E6BDC7DF66EDDE307D06D";
    attribute INIT_3B of inst : label is "ED37DFFFFC24D17DFFFFD05DD097FFFF88063ED06FE7D56DEEDF0D3086BED797";
    attribute INIT_3C of inst : label is "6C4A9F7DD8F60FED16C4A98FED9FEDF4F3F2F1F0FFFEFDFCFBFAF3FCFBF6F27B";
    attribute INIT_3D of inst : label is "D3E76D6ED937D74D65D3E76D6ED977DE367DE76D6ED999999999996876C4AD83";
    attribute INIT_3E of inst : label is "000000D4307D06DF2ED9B7D74D65D3E76D6ED997D74D65D3E76D6ED947D74D65";
    attribute INIT_3F of inst : label is "FB00000000000000000000000000000000000000000000000000000000000000";
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
    attribute INIT_00 of inst : label is "C2C2C2C0062D762D7CFC61C3C3C3C762C3C3C3C7CA706C20CC608D07F608D07F";
    attribute INIT_01 of inst : label is "B228CC0F49327CA413CA4A3C0AC003021F725CC100106CCFC044000241C2C1C2";
    attribute INIT_02 of inst : label is "2F4932CCA413CA4A3C4A303DB4134B22ACC1F4932ACA413CA4A3C4A303DB4034";
    attribute INIT_03 of inst : label is "4B349F3CA4B34B303D94B349F32FCA4B3402CA4A3C4A303DB4134B2C493413AC";
    attribute INIT_04 of inst : label is "C02C13C13C10C10CC340200C4B34A33022D43328272700242421E403C4B303D9";
    attribute INIT_05 of inst : label is "3D43322C23C2D43322C004F4334334120AC4B34A3A17C23C1D43322C23C1D433";
    attribute INIT_06 of inst : label is "0028002600252421202F2E002CE4D2F403C3402004F403C3D43310C10C22C23C";
    attribute INIT_07 of inst : label is "3C7F027F403C34024B34A3323C2D43301004F603F603F00C4F34F34D34D30328";
    attribute INIT_08 of inst : label is "13C10C10CB1623F623F603F603F127D403D1603F603F23C7D403E14524422822";
    attribute INIT_09 of inst : label is "F423F423F603F603F3340281004FD28D40391623F623F603F603FE27D403C02C";
    attribute INIT_0A of inst : label is "03C340200C4B34A3323C2D4332F2F2D002B2AE403C33402403A2FC005F2FC004";
    attribute INIT_0B of inst : label is "3AE1B21D43323C4D30D4034D3403D22D433D1004F1FC4B3034033323CFF02FF4";
    attribute INIT_0C of inst : label is "0F35EF12F22703503A5C300F12F227435035C300402F127A00502C3402004F40";
    attribute INIT_0D of inst : label is "24824C25C32EC005C320C5C3C40542CCCCB0402C000502A4C35C37F5033503A0";
    attribute INIT_0E of inst : label is "2F2A26232920282324212D2EEE282482C2022F342F328FA7482F50303C40F348";
    attribute INIT_0F of inst : label is "CF20C40200043202FE7C34022B272A252E26252E2E2E282D232C2A002B282623";
    attribute INIT_10 of inst : label is "F5EAD160281E78E1EF72002101522FCA0330402CF20C402000ACF20C80044243";
    attribute INIT_11 of inst : label is "E481AE471AE461432E202DF202F13030105F07D0010013B2F412D40221C0E70E";
    attribute INIT_12 of inst : label is "82AE472AE431462E202DE202F10CD30231F7105F0010013B2F412D402CAE491A";
    attribute INIT_13 of inst : label is "2D0002113C0F7C4C24003F20C8004421302130F75CC0013C10F3412CAE492AE4";
    attribute INIT_14 of inst : label is "02DC4034E313F11D17D07D07D422D00F11D17D07D07D442D0013F11D17D07D4A";
    attribute INIT_15 of inst : label is "287240286220CA7003D003D003D003D003D003D303D203D203D203D203D203D4";
    attribute INIT_16 of inst : label is "324122324324122224324023224324022224324022224028C240277240297240";
    attribute INIT_17 of inst : label is "4224220024224220024224120024224120F24224120F24224120024124120024";
    attribute INIT_18 of inst : label is "2412002432432432432412402402402132402402402402092C4D200243343303";
    attribute INIT_19 of inst : label is "024024D2002C432412132402092433C000342242241242242242241241241241";
    attribute INIT_1A of inst : label is "07D3C0E473432DC2AC5EA11402401AC403A40303C4A303C049353C4024024024";
    attribute INIT_1B of inst : label is "0E000074633020F30E007463A0E4630C14F34622DC0E4583C27D3CC0E0000473";
    attribute INIT_1C of inst : label is "0312A4B325C4C4C30706F211C4730E20543472D22240E20074730E207473D222";
    attribute INIT_1D of inst : label is "23402120F40328C4C4C3C42341226C423435E402C42341226C211423402120F4";
    attribute INIT_1E of inst : label is "41423402120F4032CC4C4C3C42342226C423402E122412435EC42342226C3114";
    attribute INIT_1F of inst : label is "120F40321C4C4C3C42342226C423402E6987698712412435E404EC42342226C2";
    attribute INIT_20 of inst : label is "CA4A3C42342226C423435E41220D5EA0412EC412F432DC42342226C341423412";
    attribute INIT_21 of inst : label is "2C42342226C42340222127CA4A3C42341221C423402C42341226C42340222125";
    attribute INIT_22 of inst : label is "2DCA4A3C42342221C423402C42342226C4234022212ACA4A3C42342221C42340";
    attribute INIT_23 of inst : label is "32C43342226C433405E4122FCA4A3C42342221C423412C42342226C423412221";
    attribute INIT_24 of inst : label is "433432F1D3F2D015874320E22C4330E432C43342226C433412E69876987404E4";
    attribute INIT_25 of inst : label is "F3F2D442FF24330E433445E43223C70E374322D2DC43306D06D02CDCE20C25CB";
    attribute INIT_26 of inst : label is "445E2CD5EA442EEDEF2EC442F442DEFED22CDCE706C44220C2CCB433034C2432";
    attribute INIT_27 of inst : label is "07DE21C904D72FD904F07DC3C06D06D1D3F2D015843328CB0334C22D2D4334C3";
    attribute INIT_28 of inst : label is "1C5EA4C2441C4C2761E72122554C2C21C0121D20050256C0C21C904D720D904F";
    attribute INIT_29 of inst : label is "732222E5728032572872728720CED212C0F40323C114323C125C1F25C1F25C1F";
    attribute INIT_2A of inst : label is "014E202A4F2000403014F20001BE00048120CCF12102DB1004821112AC23DB34";
    attribute INIT_2B of inst : label is "E24810002BC4F2481000C00482A25C00C2704302A70100020ECF112CC12CC000";
    attribute INIT_2C of inst : label is "C492CCC4C16615030201000000000100000000501C482CA482403B100B2A4734";
    attribute INIT_2D of inst : label is "43C14412000412CCC0F403F12227CF0F102228C23030F02A700412434123412C";
    attribute INIT_2E of inst : label is "33C000002FE46325C0025C0002FF463CED7237137237011DECED7271011727DE";
    attribute INIT_2F of inst : label is "200430122D0F3413C0F403CF231ECF127CE021EE2724242525EC4333C0E46343";
    attribute INIT_30 of inst : label is "0E003020040D13031FE12268F328CA680327CF0E1022168F328C11680328C140";
    attribute INIT_31 of inst : label is "0072FE1027CFF11DF01ED1D402D525D3A2C28F121CA4000002FE7420C0E42FC0";
    attribute INIT_32 of inst : label is "1BE02F101D2403D022F7CF11D07DCF11D207D72AFA7ED2F101D207D022F72380";
    attribute INIT_33 of inst : label is "4C492F4E2D3D2493702A4D3424C492F4D2D3C2493702A4C3424C482F4C2D3C2D";
    attribute INIT_34 of inst : label is "A4932EC492F4B2D3824932EC492F4A2D3424932EC482F492D332C4937CA4E342";
    attribute INIT_35 of inst : label is "6223FF07D07D2706D06D2DC03D01D007D02A07DCF13C02A7810042FCA07DC493";
    attribute INIT_36 of inst : label is "000707D00020E07D04D07D021E42A000000000000000000002928272625E0EE2";
    attribute INIT_37 of inst : label is "03D003DCA07D22A07D2EC2EC08D03021E07D0206D07DD3B20E021E707DD3B20E";
    attribute INIT_38 of inst : label is "1DED0E0040007007D32A07DCF13C02A781004CA003F003F003F003F003D003D0";
    attribute INIT_39 of inst : label is "270203D12A07D5203D003D07D020E07D0E0000407D07D07D07D7E07DEBE00011";
    attribute INIT_3A of inst : label is "D08D07D07D07D08D07D80CD22C0CD40CD07D4E07D1270CD07D7E07D2EC07D0AD";
    attribute INIT_3B of inst : label is "7D07F0000707F07F0000707FF1240000027E07D02607D08D07D07D020E07D407";
    attribute INIT_3C of inst : label is "E483C07D3C0EC07D0E4830107DC07D25252525252424242424242423222222E0";
    attribute INIT_3D of inst : label is "D2706D06DC07D07D07D2706D06DC07D7207D706D06DCCCCCCCCCCCE10E483E10";
    attribute INIT_3E of inst : label is "0000002FC07D0AD207DC07D07D07D2706D06DC07D07D07D2706D06DC07D07D07";
    attribute INIT_3F of inst : label is "1800000000000000000000000000000000000000000000000000000000000000";
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
