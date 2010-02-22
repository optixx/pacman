-- generated with romgen v3.0 by MikeJ
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_std.all;

library UNISIM;
  use UNISIM.Vcomponents.all;

entity PACROM_6E is
  port (
    CLK         : in    std_logic;
    ENA         : in    std_logic;
    ADDR        : in    std_logic_vector(11 downto 0);
    DATA        : out   std_logic_vector(7 downto 0)
    );
end;

architecture RTL of PACROM_6E is

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
    attribute INIT_00 of inst : label is "30720FC301306C012853E3619B63F7719B63F7789E7C0EF57E39C0373B37D0E3";
    attribute INIT_01 of inst : label is "43143210FEDCBA98765432100D39A0C32E361970CCC687A9C020E20C1C0C0A08";
    attribute INIT_02 of inst : label is "30EFA7ECA052EFA30EFA7ECA0D001001EC15D5D5553002F0025410FEDCBA9876";
    attribute INIT_03 of inst : label is "78ED67D776ED47D774ED27D772EDC01D0D0C1C21C210F2EFA30EFA7ECA0A2EFA";
    attribute INIT_04 of inst : label is "420EDC521EDC420EDC4BDC4A9D06F7D4AC01D801ED1AC7D77CEDA7D77AED87D7";
    attribute INIT_05 of inst : label is "D0C1F21C21CA3DCA3DC22CAAC22CAAC2BDC2BD16A7D6A12D03D14D05DC521EDC";
    attribute INIT_06 of inst : label is "DC1DDCDEC2EC260DE0A2DD2DD27D4FD40D3DD287E0A38D21D1CD0D0C1021C210";
    attribute INIT_07 of inst : label is "06BC80E320606AC30EBF6E44112913534C4191B0021E00A0600A887E0A1111D1";
    attribute INIT_08 of inst : label is "EC55720F6E58097706F87E06FCAAC010A0A0A0697C67767EC7C677EC1CA15033";
    attribute INIT_09 of inst : label is "62F67E6A0B700A0F06279EEEA96CF980CCC1129101B230B00225E6384752B16C";
    attribute INIT_0A of inst : label is "721E2420EFEAA787E9A94E910C6E82F67E8A0B4E912A2C6E72F67E7A0B2FCC6E";
    attribute INIT_0B of inst : label is "DE19EBEC179E26276EE1EDA7064EC1EBA9E9285EA2006EA2BC072F2E28EB2FD0";
    attribute INIT_0C of inst : label is "39D3422EE3A34A3EE0A351D381D0429052918FF2016EEAF0FD6A7FFFFEF0F6E4";
    attribute INIT_0D of inst : label is "6D516D006D9126D516D006D930C7E0A30436C7B31333439C7B392DEA7E9A936D";
    attribute INIT_0E of inst : label is "D72D320CD42D221D22D62D0E86D8A856E6A9026D016D006D9026D016D006D922";
    attribute INIT_0F of inst : label is "1D9160114E1107F0EF04F08F04F01F06F00F0C3C7E1A6E553E347E0A9D32D521";
    attribute INIT_10 of inst : label is "F0C490C430C450C4F0C490C4B0C450C4F0C410C4F7E2A94E01E22E42FC87EEAB";
    attribute INIT_11 of inst : label is "E955DCE5FD1E341955DCE0EF04F01F10F5C5C51565B5C0C400C480C430C4D0C4";
    attribute INIT_12 of inst : label is "1953DFE953D3E955DCE5FD5E3A1953DFE953D6E955DCE5FD3E371953DDE953D4";
    attribute INIT_13 of inst : label is "52E02FE421E14F40F15F01F589D55D3E5532E1CF5031E953D5E955DCE5FD7E3D";
    attribute INIT_14 of inst : label is "ED55DB6DCDDE3D07D07D5E316500DAA16D019609D37D17D001DC6001CE46321E";
    attribute INIT_15 of inst : label is "96ED5C35EA6E0D1A7D0A543D2A46D31543D2A26D21543D2A06D119F3DFCDF5DE";
    attribute INIT_16 of inst : label is "69D62F2F17DC22ED0AD52F87D5A95ED025702DC6F1E5A94E2102A702DC6F1E5A";
    attribute INIT_17 of inst : label is "F7CF01F10FB1D680C646B537E3A97D7D72D77D7D7940146C26C0690E156C36C1";
    attribute INIT_18 of inst : label is "3E021E807BC800A1EEEACED8620961EEEAB1D90FFACF8FEE1AD621E4E310EFBC";
    attribute INIT_19 of inst : label is "02F02F11F10F9EC2EC2CD62F4E31B1DEE279679638EEA7E0A587EBAE02F0FB69";
    attribute INIT_1A of inst : label is "4A94E01E42E22E32FBAD5E5194E3101770AFE52E42EFAE32F0BF08F6CF3CF03F";
    attribute INIT_1B of inst : label is "AE0CAC0CAA0CA80CA60CA40CA20C9E0C980C98920C98920C900C9D8D0C89897E";
    attribute INIT_1C of inst : label is "D021ED84D93F106F0177F77770ED9D06F00777761DEEAA4078A30CA0AC0CAC0C";
    attribute INIT_1D of inst : label is "75EDDD216D0ED9D811D06F74EDDB216D0ED9D8F1D06F73ED8AD983106F0772ED";
    attribute INIT_1E of inst : label is "2633252333152623051523241423140312140201139BADD5216D0ED9D831D06F";
    attribute INIT_1F of inst : label is "6325286325276325276315255325275305275325264325234315274305263325";
    attribute INIT_20 of inst : label is "031D8190D0E10D2D70C10D2D70C10D2D70C10D0C1D6128732628732528732527";
    attribute INIT_21 of inst : label is "FB6FE910400000108001810282038306CC82480EC9248FEA4000200CE06E490D";
    attribute INIT_22 of inst : label is "A064700470AF00F05F04F3CF01F9E429E60DE0A94E410D0E1E81EA1EA2E3A49D";
    attribute INIT_23 of inst : label is "A3DE6DE3DC2D3DD07D07D9C6E41604EEEA903FE6E418E27B00A8430320E9A7E2";
    attribute INIT_24 of inst : label is "94900475CF02DC6F36E9A387E2A987E0AF07E4A4E4147DE221E9EDDECDCDDB6D";
    attribute INIT_25 of inst : label is "2E92E02E42E22F9E429EE921EE9AA6D94E4100475CFB1DA07E4A507E2A687E0A";
    attribute INIT_26 of inst : label is "48DE0A00470DF5CF683EE0A6CF0AF00F05F04F03F03F01F02F11F10F9E021E03";
    attribute INIT_27 of inst : label is "0E94E416ED001002702D162E9EC2EC2F4E4100479E423E8430320E9A7E2A0647";
    attribute INIT_28 of inst : label is "4EE3AEC2EC22EEC2EC2F94E41003730F15F14F03F01F06F10F08C84808884888";
    attribute INIT_29 of inst : label is "EC2F9EC2EC2F44E41AFAFAFAF27AFAFAF27AFAFAF27AFAFAF1EAFAF18AF74E28";
    attribute INIT_2A of inst : label is "3D3D03D02D0ED06DE81DEA1DE69239839EA2384EEEAA4E314E4149DFEC176EC2";
    attribute INIT_2B of inst : label is "7ACB29EEB40BED9EEBEC1302D7DBAB87D6AE06DB220ED101D81DC01D07D4A9E0";
    attribute INIT_2C of inst : label is "02D7DBAD87D8A136DB33136D783ED1EB33236DB33136D783ED1E702D7DBAD87D";
    attribute INIT_2D of inst : label is "76D787ED1E702D7DBAD87D9A356DB83356D785ED3EB83256DB83156D785ED1E7";
    attribute INIT_2E of inst : label is "B23296DB23196D789ED1E702D7DBAD87DAA576DBD3576D787ED5EBD3276DBD31";
    attribute INIT_2F of inst : label is "4A7DEA50DBAA7DDA30DB0A7DCAC01D06B222EE2A96905D796DB23796D789ED7E";
    attribute INIT_30 of inst : label is "8270E20E0E721978274248270E20E0E441503EE4A060EAE4DF1990D87DFA70DC";
    attribute INIT_31 of inst : label is "D42101DA2EC1C024ED0ADC2D823ED0200DD01D351DC027D0A0D427D4A07D4A96";
    attribute INIT_32 of inst : label is "B3D2200DD21DD01DD92DDAFEC0EFEC8ED2AC120ECBA1ED1AD021EDC2D822EDE2";
    attribute INIT_33 of inst : label is "1ED2AD121EDD2D922ED02D62101DC2EC1CB24ED2AD92DD23ED2200DD21D351DC";
    attribute INIT_34 of inst : label is "200DD41D2F1DD923ED2AD33D4200DD41DD21DDA2DEAF5C0EF5C8ED4ADC20ED3A";
    attribute INIT_35 of inst : label is "101DE2EC1D324ED4ADE2DA23ED4200DD41D351DD33D222ED320ED5ADE2DA2FD4";
    attribute INIT_36 of inst : label is "9D6200DD61DD41DDB2DFAFCC0EFCC8ED6AD020E81ED3AD221EDE2DA22ED22D82";
    attribute INIT_37 of inst : label is "DF2DB23ED6200DD61D351D9D322E00ED7ADF2DB22ED6200DD61D331DDA23ED3A";
    attribute INIT_38 of inst : label is "7ED1A07D6A9D021ED0A060E8E4D419D321EDF2DB22ED42DA2101D02EC104ED6A";
    attribute INIT_39 of inst : label is "EEEA06EC19EC2F587D5A9D32D12111D12CFB02D716D0ED9DD61D06FD223D2A78";
    attribute INIT_3A of inst : label is "AEE86EEEA07D4A07D5A977B6897FB68684E977B68684E97FB68684E977B68684";
    attribute INIT_3B of inst : label is "640904A7D42E3CD2E3CC270774E284EE3AED1D220414EC107ECA984ED107EDA0";
    attribute INIT_3C of inst : label is "77D5D67D67D67D67D67D67D67D67D67C63C63B96B96A75A759449448528527F1";
    attribute INIT_3D of inst : label is "00000000000000000000000000000000000000000000000000000000310D3148";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "E100000000000000000000000000000000000000000000000000000000000000";
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
    attribute INIT_00 of inst : label is "C503503C05C1049111E2424EEE525D8ECE525D87C768036800CCF12720C4E03F";
    attribute INIT_01 of inst : label is "00011111000000000000000022CEF1121700ECF111102A1C482C202272748203";
    attribute INIT_02 of inst : label is "024D3A4D3543493024C3A4C3BE010551482EFEDEDCF503A5C3F1110000000000";
    attribute INIT_03 of inst : label is "007D07D0007D07D0007D07D0007D422DBE0104214025434B3024E3A4E35434A3";
    attribute INIT_04 of inst : label is "3317D42307D42307D435E4221D01584A3422D320F4D307D0007D07D0007D07D0";
    attribute INIT_05 of inst : label is "E0004F1422435E424E432432422422435E424E07CA4A317D17D07D07D43317D4";
    attribute INIT_06 of inst : label is "F2CC20C4B34A30234030FC0AC06C11C19C09C12A4030CC02C0DCBE000561432B";
    attribute INIT_07 of inst : label is "03E002B21FE1C1012BE0E730000112323482CFF5030300C1E54302A403CDEEDE";
    attribute INIT_08 of inst : label is "72EC7223E7323B00CE22A7104483492A06060A0C73888887273888727482E112";
    attribute INIT_09 of inst : label is "630E14630C4503D150319F463C81ECC1222CE2B2F2206101017080A09EE05242";
    attribute INIT_0A of inst : label is "03030CC0F54634CA463C3462C0D4630E14630C346209C0D4630E14630C0DC0D4";
    attribute INIT_0B of inst : label is "4C2CCC4927930FD284624637C93462463C46370463C1D46371503A0CC0F70DC5";
    attribute INIT_0C of inst : label is "06C04D0F40304C0F4034C2F4D2D50375037024A030D4634B24D3400007120E73";
    attribute INIT_0D of inst : label is "3F503F503FC303D503D503DC09CA47309C07C6C06C08C06C6C05C4C3A403C07C";
    attribute INIT_0E of inst : label is "4034038740340394D340371000402D0D403C403F403F403FC403D403D403DC30";
    attribute INIT_0F of inst : label is "ACC03502340200E01E00E01E01E00E00E00E000DE4030B0E0F0DE403C4D34039";
    attribute INIT_10 of inst : label is "B000B000B000A0009000900080008000700070005E403C3402403403A02A4632";
    attribute INIT_11 of inst : label is "0C08C000BC03402C08C0001E00E00E00E070606050401000E000D000D000C000";
    attribute INIT_12 of inst : label is "2C09C20C09C30C08C000BC03402C09C00C09C10C08C000BC03402C09C00C09C1";
    attribute INIT_13 of inst : label is "13473A4130300E11E00E01E307C08C1008C1011E08C30C09C30C08C000BC0340";
    attribute INIT_14 of inst : label is "FC0AC0DC00C02C11C11C08C03029433204A2CF11D17D17D442D10021F3134324";
    attribute INIT_15 of inst : label is "C0BC02C08C0F84D344D302C433204A202C433204A202C433204A2C17C14C12C1";
    attribute INIT_16 of inst : label is "3C422D3F244330E4334B3ACA4B3C08C004F04C1048473C3402004F04C1048473";
    attribute INIT_17 of inst : label is "E01E00E00E2AC0A0007010FE403C727274EA727271001B32B32B30010B32B32B";
    attribute INIT_18 of inst : label is "C47303027C025430F46325C0002000F4632ACC01E01ECFF4734D303340201E01";
    attribute INIT_19 of inst : label is "01E00E00E00EC4D34C334D3A34022AC46329C29C02463A47312A463473AC6C04";
    attribute INIT_1A of inst : label is "03C3402403403403A26C3412C3402005F01E413413463413A01E01E01E01E00E";
    attribute INIT_1B of inst : label is "00000000000000000000000000000F000E000D0D000807000400000C000907E4";
    attribute INIT_1C of inst : label is "4B307D01C130201588884884807D1D01588884092D740202A70A000A07000200";
    attribute INIT_1D of inst : label is "807D4B206F06F1F062F015807D4B206F06F1F042F015807D03C104201588407D";
    attribute INIT_1E of inst : label is "000000000000000000000000000000000000000000C2EC49206F06F1F072F015";
    attribute INIT_1F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_20 of inst : label is "0004B1CBE000BE4EA000BE4EA000BE4EA000BE01044100000000000000000000";
    attribute INIT_21 of inst : label is "C00A4020B0F0F00070F060E050D040C483736251313120101000300310411CBE";
    attribute INIT_22 of inst : label is "3005F005F01E01E00E00E81E01EC40303023403C3402BE0204314024024722CC";
    attribute INIT_23 of inst : label is "0CC03C02C04C1DC11C11CC0340202FF403C01E034020DC6C50309C503A403447";
    attribute INIT_24 of inst : label is "C3C005F01E04C1040C40312A44312A47312A413340228C41303C0AC06C00C0DC";
    attribute INIT_25 of inst : label is "3403473403403AC403034030E4030ACC3402005F01E2AC12A41312A44302A473";
    attribute INIT_26 of inst : label is "023403005F01E01E020F40301E01E01E00E00E00E01E01E00E00E00EC4030350";
    attribute INIT_27 of inst : label is "00C340227C002004F04C0000C4B34A3A3402005FC4030309C503A4034473005F";
    attribute INIT_28 of inst : label is "1F4134D34C3034B34A3AC3402004F11E00E00E01E01E00E00EF1D1F1E1F1E1E1";
    attribute INIT_29 of inst : label is "4C3AC4D34C3A33402060606062906060629060606290606062906062006E1303";
    attribute INIT_2A of inst : label is "2F2D07D07F05F05D432F402D200DC08CC4022C1F7402341234022CCC402004D3";
    attribute INIT_2B of inst : label is "A340303BC020BD03FC4A2135EA4C212A4A3003F0DC0BF0014C2F402DCA4A3CE1";
    attribute INIT_2C of inst : label is "35EA4C212A4A3003D03C003D020BD0303C103D03C103D020BD13235EA4C212A4";
    attribute INIT_2D of inst : label is "03D020BD13235EA4C212A4A3003D06C003D020BD0306C103D06C103D020BD132";
    attribute INIT_2E of inst : label is "0DC103D0DC103D020BD13235EA4C212A4A3003D09C003D020BD0309C103D09C1";
    attribute INIT_2F of inst : label is "0CA4A307D0FCA4A307D0FCA4A3402D000EC2F40310C03F003D0DC003D020BD03";
    attribute INIT_30 of inst : label is "7370302B13432C49348347370302B13462120F40303CB0334C2C07DCA4A307D0";
    attribute INIT_31 of inst : label is "41200240222209C6F4034234230340220C402F302D09CA4A3D4930493CA4A3C4";
    attribute INIT_32 of inst : label is "FC40220C402F422D42342312C8F12C7F4030CC0F0FC0F4A34A30342342303412";
    attribute INIT_33 of inst : label is "0F4A34A303423423034224120024022220FC6F4034234230340220C402F302D0";
    attribute INIT_34 of inst : label is "220C402F3F2D05C0F4A309C40220C402F422D42342315C8F15C7F40302C0F09C";
    attribute INIT_35 of inst : label is "00240222209C6F4034234230340220C402F302D09C4A30309C8F403423423A40";
    attribute INIT_36 of inst : label is "C40220C402F422D42342317C8F17C7F4030CC0FC0F4A34A30342342303422412";
    attribute INIT_37 of inst : label is "4234230340220C402F302DC4A303C8F4034234230340220C402F302D0EC0F4A3";
    attribute INIT_38 of inst : label is "0F4C3CA4A3C4C30E4C303CB0334C2C4A30342342303422412002412222C6F403";
    attribute INIT_39 of inst : label is "F403E04A2C4A3A02A4A3C4B24B20024C333CC5EA05D05D1D482D0154C224C28C";
    attribute INIT_3A of inst : label is "AF024F403CA4D3CA4A3C7CCA7C7CCA7037FC7DCA703BFC7DCA703DFC7ECA703E";
    attribute INIT_3B of inst : label is "010C008F4D37240372403D88413031F4130F24D28923402CA403013402CA403C";
    attribute INIT_3C of inst : label is "B5EF010010010010010010010010010010010000000010010010010010010000";
    attribute INIT_3D of inst : label is "00000000000000000000000000000000000000000000000000000030CF08CF02";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "C800000000000000000000000000000000000000000000000000000000000000";
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
