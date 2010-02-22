-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_6F is
  port (
    CLK         : in    std_logic;
    ENA         : in    std_logic;
    ADDR        : in    std_logic_vector(11 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_6F is

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
    attribute INIT_00 of inst : label is "A79D7DD925D09A7D4A04D08D0ED04D06D07D5A21D92CF8DE0ABCF9D22001D42F";
    attribute INIT_01 of inst : label is "DD2CDB280D9DC2CDB280D87DBA90FD0CD09D36D03EE4AD9DD2DCBDB6D86D07D4";
    attribute INIT_02 of inst : label is "1C1B190C7DFA1F1E1C0C7DEA1A180C7DDA02000C7DCA9DB2DDF29DE2CDB280D9";
    attribute INIT_03 of inst : label is "72DC2D02FD12DA2EF100ED0ADC2D821ED0200DD01D311D94DC102D7041D0AB8D";
    attribute INIT_04 of inst : label is "DD2D921ED2200DD21D311D94DD102D7041D2ACFD96BEC1036D26D16D06DDC1DD";
    attribute INIT_05 of inst : label is "A21ED4200DD41D311D94DE102D7041D4AD6D113D82DD2D12FD32DC2EF100ED2A";
    attribute INIT_06 of inst : label is "D22FDE2DA21ED52DE20F100ED5ADE2DA22ED4200DD41D331D94DE100ED4ADE2D";
    attribute INIT_07 of inst : label is "2F1D94DF100ED6ADF2DB21ED6200DD61D311D94DF102D7041D6AEDD113D92DE2";
    attribute INIT_08 of inst : label is "12F0C2F7D1A113DA2DF2D32FDF2DB21ED72D02CF100ED7ADF2DB2FD6200DD61D";
    attribute INIT_09 of inst : label is "4ACB29E0694D1103A7CB20E86308B0B481E9AFE2A7076D0A707D1A906F7D4AC0";
    attribute INIT_0A of inst : label is "81D523D5A33363E363E363E363E36292B272727270C7D5A96BEC1D12D42FDB2D";
    attribute INIT_0B of inst : label is "5E6BEC194D5102D7D523D5ACA29F10E480E9A7E2AF0414E6ED0019D525E02D70";
    attribute INIT_0C of inst : label is "DE2631C1CE2631D1BE2631E1AE2630F19E2630018E2630117E2630216E263031";
    attribute INIT_0D of inst : label is "DD71D87D6A94E4165D5E515E4102D7181D523D5ACA2FE263191EE06EC12631B1";
    attribute INIT_0E of inst : label is "27DFAD923B27DEAD823127DDAD723727DCA96CB105CDB2BDBA38A36D26D16D0E";
    attribute INIT_0F of inst : label is "00102D7D5BDD723D7A9D720013EAEEEADE19EBEBEC1D02D82D62DC2DB2FDA235";
    attribute INIT_10 of inst : label is "D2FD1A37D3D0A768E8EC01D780E9A7E2A901C7D3A8109C57D2A8106C57D1AD72";
    attribute INIT_11 of inst : label is "2AA7D1FD9AB7D3D8A87D1FD7A97D3D6A67D1FD5A77D3D4A47D2FD3A57D3D2A27";
    attribute INIT_12 of inst : label is "D2D3A57D3FD2A27D2D1A37D3FD0AC01D667E9E700E9A7E2A4E3C7D1FD3AD7D3D";
    attribute INIT_13 of inst : label is "5AC7D1D3AD7D3FD2AA7D1D9AB7D3FD8A87D1D7A97D3FD6A67D1D5A77D3FD4A47";
    attribute INIT_14 of inst : label is "3E5839A28AB902ED0A5831A5017CAA0EB8786766616C7D0A55C15427D4A5B27D";
    attribute INIT_15 of inst : label is "07D8A607DDA27D127DCA907D7A607DCA0E87D67D47D27D2CE6D01CA29A582B90";
    attribute INIT_16 of inst : label is "87862D6DD56D87D127DFA907DAA607DFA67D127DEA907D9A607DEA47D127DDA9";
    attribute INIT_17 of inst : label is "846488E288648CEF6D9A856E6A9CC21CCAC821C8AC621C6AC421C4AC221C2A0E";
    attribute INIT_18 of inst : label is "EA0B6D40D6DAA787E7A9D2D92D72D52D66FA6DC2D482D462D442D462806484EA";
    attribute INIT_19 of inst : label is "D3AEFFF86D1A83EA27D38ED0A81EA0B6D40D6DAA787E8A9326D8CED36D226D8A";
    attribute INIT_1A of inst : label is "E9FA6D586E76D8A9EA6D9CA6D582E9EA6D584E90A6D586E76D9A9ED6D27DCCC7";
    attribute INIT_1B of inst : label is "586E76D8AA80EC02E28CE484E9A3DBBEE886E76D9A90A6D9FA6D582E9DA6D584";
    attribute INIT_1C of inst : label is "A2D7D5A907DEA573A2D7D7A907DFAD9BD46E8FE28DE482E9A3D3BFE884E7B30E";
    attribute INIT_1D of inst : label is "464D01D52F87E906FD6187D52D428573A2D7D1A907DCA573A2D7D3A907DDA573";
    attribute INIT_1E of inst : label is "6DD4A307DEA573A916DD7AA0906DD6A307DFAD81D464E87D6A07D4A9EBEC1AAD";
    attribute INIT_1F of inst : label is "A916DD1AA0906DD0A307DCA573A916DD3AA0906DD2A307DDA573A916DD5AA090";
    attribute INIT_20 of inst : label is "10D62ADD6AD829D8A8334DC10DA2ADDAADC29DCA8FA7D6A9581AEFEDD1733573";
    attribute INIT_21 of inst : label is "00A6879A920EE4AA9A1EE0ADF21E8B3300B6E98016EDA1F1E9AFE2ADE2EEA4D8";
    attribute INIT_22 of inst : label is "A6879A920EE4AA9A1EE0A903DC2D02F2FA9027B903DC2D022E33A892FB00A863";
    attribute INIT_23 of inst : label is "9BAFD0A9625B006060FDD91DD61D16D62DCAA8AFBA8A7BA9A7BA9AFB00A88300";
    attribute INIT_24 of inst : label is "90384E76D8A90384E76D9A95AFD0AD006060FDDC1D90384E76D8A90384E76D9A";
    attribute INIT_25 of inst : label is "94A95A4E76C953C953D91A95A4E76D95AFD0A00DD81DDC1DD02DCA90A5DC2D6A";
    attribute INIT_26 of inst : label is "2DC6F15E02DF96B02D7041D8A687D4AC87D2A07006D0EDDF1DD9208DD8249535";
    attribute INIT_27 of inst : label is "DD279DA1EC02D9BF96006FBF604DEE1D04E380EE05DD9ADD2FE6BEC1054704D0";
    attribute INIT_28 of inst : label is "F38E0D5EAC24E76D9AAC3A8A4E76D8AAEA7EDC19EB6B9EB6B58FEEAEC1AADB8D";
    attribute INIT_29 of inst : label is "82D72D621EDB2DDA06EDDA95300DD81DDC1DD02DCADC2D6AD2200DD21DD61D07";
    attribute INIT_2A of inst : label is "96D176D156D136DC86DC66DC46DC26DC01DD02D82FD52D42D32D22D12DA2D92D";
    attribute INIT_2B of inst : label is "DC21E31A84306D62DC23E35A84306D62DC2F2FA84306D62DC22E33A9EBEBEC11";
    attribute INIT_2C of inst : label is "07DCA87D0A94EF194E01B1A7D1A94E11B5A7D2A07D3A94DF1B4A7E2A84306D62";
    attribute INIT_2D of inst : label is "DA2ADDAADC29DCAB8A7D7AB834D010DE2ADDEAD029D0ABAA7D9A0ADD91D1A07D";
    attribute INIT_2E of inst : label is "D410D22ADD2AD429D4AB4A7D6AB834D010DE2ADDEAD029D0AB6A7D7AB834DC10";
    attribute INIT_2F of inst : label is "7AB8E0D1EC624E76D1AC63B7A4E76D0ABDA7ED414D810D62ADD6AD829D8AB834";
    attribute INIT_30 of inst : label is "0DD01DD41DD82DCAD42DEADA200DDA1DDE1DEED08F38AEE02DDAAC930CFCBA7D";
    attribute INIT_31 of inst : label is "D8ACF34DC10DA2ADDAADC29DCACDA7DAA0ADDA1D3A07DDA01ED1A9D1208DD020";
    attribute INIT_32 of inst : label is "EA4E76D2AC4A7ED614D410D22ADD2AD429D4ACF34D810D62ADD6AD829D8ACBA7";
    attribute INIT_33 of inst : label is "C200DDC1DD01DF5D09F38AEE02DDCAC030DFC2A7D8AB8E0D2EDD24E76D3ADD3C";
    attribute INIT_34 of inst : label is "D8AD4A7DBA0ADDB1D5A07DEA01ED2A9D3208DD2200DD21DD61DD92DDAD62D0AD";
    attribute INIT_35 of inst : label is "E2ADDEAD029D0AD634D410D22ADD2AD429D4AD2A7D9AD634D810D62ADD6AD829";
    attribute INIT_36 of inst : label is "E02DDEAD730EFD9A7D9AB8E0D3ED424E76D5AD43D5A4E76D4ADBA7ED814D010D";
    attribute INIT_37 of inst : label is "A01ED3A9D5208DD4200DD41DD81DDA2DEAD82D2ADE200DDE1DD21DFCD0AF38AE";
    attribute INIT_38 of inst : label is "E2ADDEAD029D0AE9A7DAAED34D410D22ADD2AD429D4AEBA7DCA0ADDC1D7A07DF";
    attribute INIT_39 of inst : label is "0D4EEB24E76D7AEB3ECA4E76D6AE2A7EDA14DC10DA2ADDAADC29DCAED34D010D";
    attribute INIT_3A of inst : label is "DDA1DDB2DFADA2D4AD0200DD01DD41DF3D0BF38AEE02DD0AEE30FFE0A7DAAB8E";
    attribute INIT_3B of inst : label is "1A9797EC20B6EECA016EC3E6ED2EEEC3D6E32DEE9D9106F79D7208DD6200DD61";
    attribute INIT_3C of inst : label is "2AD02F7DD22ED9A2F1D22F87D2A9D828D4202EE2ADE2F7DC22ED8A2F1D12F87D";
    attribute INIT_3D of inst : label is "A2F1D42F87D4A9DA28D8202EE2AD22F7DE22EDAA2F1D32F87D3A9D928D6202EE";
    attribute INIT_3E of inst : label is "000000000000000000000000000000000000009DB28DA202EE2AD42F7DF22EDB";
    attribute INIT_3F of inst : label is "C500000000000000000000000000000000000000000000000000000000000000";
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
    attribute INIT_00 of inst : label is "318C11CC13C13CA4A31BC1AC19C19C16CCA4A319CCA1EC340391EC4D20024D3A";
    attribute INIT_01 of inst : label is "4A334A3023C4A334A3023CA4A3C2AC28C26C17CC0F4031FC12C14C13C10CCA4A";
    attribute INIT_02 of inst : label is "1F1D1C00E4A318161500E4A3121100E4A31D1C00E4A3C4A334A3C4A334A3023C";
    attribute INIT_03 of inst : label is "A34A34A3A432402222C8F4034234230340220C402F302DC34A2C5EA8614021DC";
    attribute INIT_04 of inst : label is "4234230340220C402F302DC34A2C5EA8614021ACCBC4A2C0BD0BD0BD0BD4A2D4";
    attribute INIT_05 of inst : label is "230340220C402F302DC34A2C5EA86140218C10C4A34A34A3A432402222C8F403";
    attribute INIT_06 of inst : label is "4A3A42342303432402322C9F4034234230340220C402F302DC34A2C8F4034234";
    attribute INIT_07 of inst : label is "3F2DC34A2C8F4034234230340220C402F302DC34A2C5EA86140215C10C4A34A3";
    attribute INIT_08 of inst : label is "2130013E4D310C4A34A34A3A42342303432412222C7F403423423A40220C402F";
    attribute INIT_09 of inst : label is "A34030323C34D2004F403031327FCFC02A403447348204D322A4D3101584A340";
    attribute INIT_0A of inst : label is "714C224C2151413131212111110101F1C1B1B1B1B00E4A3CFC4A24D34A3A4A34";
    attribute INIT_0B of inst : label is "33EC4B2C34A2C5EA4C224C240374BC302A403447340B13327C002C4A303C5EA0";
    attribute INIT_0C of inst : label is "331DC021331DC011331DC001331DC0F1331DC0F1331DC0E1331DC0D1331DC0C1";
    attribute INIT_0D of inst : label is "D4A2DCA4A3C340227C34123412C5EA0B14C224C2403331DC05133234B21DC031";
    attribute INIT_0E of inst : label is "CA4A34A31BCA4A34A31BCA4A34A31ACA4A303402CB74C224C219C0BD0BD0BD07";
    attribute INIT_0F of inst : label is "002C5EA495E4922492C4920021ECB403492CBCAC4A24D34C34A34C34C3A4A31C";
    attribute INIT_10 of inst : label is "D8240317D8403010001402D4CA4034473C2DCA4A3CF2ACFA4A3CF28CFA4A3492";
    attribute INIT_11 of inst : label is "D317D8240317D840317D8240317D840317D8240317D840317D8240317D840317";
    attribute INIT_12 of inst : label is "D840317D8240317D840317D82403402D0100014CA40344731FC17D824D317D84";
    attribute INIT_13 of inst : label is "A317D84D317D824D317D840317D8240317D840317D8240317D840317D8240317";
    attribute INIT_14 of inst : label is "0F14CA7127C020F43314CB702A5403C022A71F1D1B18E433E1121BCA4A314CA4";
    attribute INIT_15 of inst : label is "2A4A302A4A307D88842302A4A302A4A32007D07D07D07D81354C2403A7027C02";
    attribute INIT_16 of inst : label is "CA715C12C1EC07D88842302A4A302A4A307D88842302A4A302A4A307D8884230";
    attribute INIT_17 of inst : label is "111030F1111030F0E403D0D403C403B403403B403403B403403B403403B403C0";
    attribute INIT_18 of inst : label is "F7003D023D4335CA403C07D07D07D07D11303D07D107D107D107D110111030F0";
    attribute INIT_19 of inst : label is "D8010000E403D0F707D8014C3D0F7003D023D4335CA403C303DD0F103D303DD0";
    attribute INIT_1A of inst : label is "FC203D030F0E403C203DC203D030FC203D030FC303D030F0E403C103D07D3307";
    attribute INIT_1B of inst : label is "030F0E403E131E30FF121030FC07DFC21030F0E403C303DC203D030FC203D030";
    attribute INIT_1C of inst : label is "C5EA43202A4A3016C5EA43202A4A3435E00E121F121030FC07DFC21030F10C31";
    attribute INIT_1D of inst : label is "0434D24A3ACA710154A2CA4A34A37016C5EA43202A4A3016C5EA43202A4A3016";
    attribute INIT_1E of inst : label is "9D40312A4A3016DB09D40303B09D40312A4A3402D0000CA4A3CA4A3CDC4B225C";
    attribute INIT_1F of inst : label is "DB09D40303B09D40312A4A3016DB09D40303B09D40312A4A3016DB09D40303B0";
    attribute INIT_20 of inst : label is "2D4426E442442244214C3442D4426E442442244212CA4A3C311CBF349216C016";
    attribute INIT_21 of inst : label is "54302A711D1F40311C0F4034B3031AC0393070392074324A4034473493403344";
    attribute INIT_22 of inst : label is "302A711D1F40311C0F40315C412433A3F215C5C15C4124330330219C4C50318C";
    attribute INIT_23 of inst : label is "10D043311C042CDCE20C432F422D004224121FC5C1EC4C1DC5C1CC4C5031CC54";
    attribute INIT_24 of inst : label is "15CC0F0E40315CC0F0E40313D043322CDCE20C412D14CC0F0E40314CC0F0E403";
    attribute INIT_25 of inst : label is "18D18C0F0E718C218C217D18C0F0E717D043320C402F412D43343315C0412422";
    attribute INIT_26 of inst : label is "4C10481004C410125EA89140222A4D322A4D3CA003D07D4B2D43221C402218C2";
    attribute INIT_27 of inst : label is "49381FC0F304C3C4107403C0E03D402DC1F021F706C432493F3DC4B2005F10C0";
    attribute INIT_28 of inst : label is "E031DC0315C0F0E40315C13C0F0E40312CA7412CCC8CC8CCC0304034B216C10C";
    attribute INIT_29 of inst : label is "A34A34A3034C24B2C0F49318C20C402F412D43343341242241220C412F422D01";
    attribute INIT_2A of inst : label is "03D103D103D103D103D103D103D103D402D4D34C3A4B34B34B34B34B34A34A34";
    attribute INIT_2B of inst : label is "433033021EC00422433033021EC00422433A3F21EC0042243303302CBCEC4A21";
    attribute INIT_2C of inst : label is "CA4A3CA4A3C3402C341213CA4A3C341212CA4A3CA4A3C349211CA4131EC00422";
    attribute INIT_2D of inst : label is "4526E452452245218CA4A31DC3462D4526E452462246216CA49325C4904322DC";
    attribute INIT_2E of inst : label is "452D4526E45245224521CCA4B31DC3452D4426E44245224521ACA4B31DC3452D";
    attribute INIT_2F of inst : label is "A3131DC0313C0F0E40313C1FC0F0E4031ECA74123452D4526E45245224521DC3";
    attribute INIT_30 of inst : label is "0C402F412D42342341241240220C402F412D1FC00E021F725C40211C00E10CA4";
    attribute INIT_31 of inst : label is "4A31AC3462D4626E462462246217CA49325C490432CA4A3C0F4A3C43221C4022";
    attribute INIT_32 of inst : label is "CC0F0E4031CCA74123462D4626E46246224621AC3462D4626E462462246219CA";
    attribute INIT_33 of inst : label is "0220C402F422D12C00E021F725C4021FC00E1ECA4A3131DC0310C0F0E40310C1";
    attribute INIT_34 of inst : label is "47215CA49325C490432CA4A3C0F4A3C43221C40220C402F412D4234234124224";
    attribute INIT_35 of inst : label is "626E462472247218C3472D4726E472472247217CA4A318C3472D4726E4724722";
    attribute INIT_36 of inst : label is "725C4021CC00E1BCA4A3131DC031EC0F0E4031EC1AC0F0E40319CA74123472D4";
    attribute INIT_37 of inst : label is "3C0F4A3C43221C40220C402F412D42342341242240220C402F422D14C00E021F";
    attribute INIT_38 of inst : label is "726E472482248214CA4A315C3482D4826E482482248212CA49325C490432CA4A";
    attribute INIT_39 of inst : label is "DC031BC0F0E4031BC17C0F0E40317CA74123472D4726E472472247215C3482D4";
    attribute INIT_3A of inst : label is "F412D42342341242241220C412F422D17C00E021F725C41219C00E19CA4A3131";
    attribute INIT_3B of inst : label is "B3C3CA1FD93071FD9201FC131EC3F1FC331EC1F704020048C43221C40220C402";
    attribute INIT_3C of inst : label is "03422D44230E4233F24B3ACA4B3C4237412C2F403412D44230E4233F24B3ACA4";
    attribute INIT_3D of inst : label is "33F24B3ACA4B3C4237412C2F403422D44230E4233F24B3ACA4B3C4237412C2F4";
    attribute INIT_3E of inst : label is "00000000000000000000000000000000000000C4237412C2F403422D44230E42";
    attribute INIT_3F of inst : label is "0100000000000000000000000000000000000000000000000000000000000000";
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
