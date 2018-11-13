-- Address decode logic for ipbus fabric
-- 
-- This file has been AUTOGENERATED from the address table - do not hand edit
-- 
-- We assume the synthesis tool is clever enough to recognise exclusive conditions
-- in the if statement.
-- 
-- Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package ipbus_decode_ipbus_extended_example is

  constant IPBUS_SEL_WIDTH: positive := 4;
  subtype ipbus_sel_t is std_logic_vector(IPBUS_SEL_WIDTH - 1 downto 0);
  function ipbus_sel_ipbus_extended_example(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t;

-- START automatically  generated VHDL the Mon Nov 12 23:38:24 2018 
  constant N_SLV_CSR: integer := 0;
  constant N_SLV_PATT_GEN: integer := 1;
  constant N_SLV_REG: integer := 2;
  constant N_SLV_PORTED_RAM: integer := 3;
  constant N_SLV_PORTED_DPRAM: integer := 4;
  constant N_SLV_PORTED_DPRAM36: integer := 5;
  constant N_SLV_PORTED_DPRAM72: integer := 6;
  constant N_SLV_PORTED_SDPRAM72: integer := 7;
  constant N_SLV_RAM: integer := 8;
  constant N_SLV_DPRAM: integer := 9;
  constant N_SLV_DPRAM36: integer := 10;
  constant N_SLV_SDPRAM72: integer := 11;
  constant N_SLAVES: integer := 12;
-- END automatically generated VHDL

    
end ipbus_decode_ipbus_extended_example;

package body ipbus_decode_ipbus_extended_example is

  function ipbus_sel_ipbus_extended_example(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t is
    variable sel: ipbus_sel_t;
  begin

-- START automatically  generated VHDL the Mon Nov 12 23:38:24 2018 
    if    std_match(addr, "---------------0--00-------0000-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_CSR, IPBUS_SEL_WIDTH)); -- csr / base 0x00000000 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------0001-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PATT_GEN, IPBUS_SEL_WIDTH)); -- patt_gen / base 0x00000002 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1000-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_REG, IPBUS_SEL_WIDTH)); -- reg / base 0x00000010 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1001-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PORTED_RAM, IPBUS_SEL_WIDTH)); -- ported_ram / base 0x00000012 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1010-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PORTED_DPRAM, IPBUS_SEL_WIDTH)); -- ported_dpram / base 0x00000014 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1011-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PORTED_DPRAM36, IPBUS_SEL_WIDTH)); -- ported_dpram36 / base 0x00000016 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1100-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PORTED_DPRAM72, IPBUS_SEL_WIDTH)); -- ported_dpram72 / base 0x00000018 / mask 0x0001301e
    elsif std_match(addr, "---------------0--00-------1101-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PORTED_SDPRAM72, IPBUS_SEL_WIDTH)); -- ported_sdpram72 / base 0x0000001a / mask 0x0001301e
    elsif std_match(addr, "---------------0--01------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_RAM, IPBUS_SEL_WIDTH)); -- ram / base 0x00001000 / mask 0x00013000
    elsif std_match(addr, "---------------0--10------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_DPRAM, IPBUS_SEL_WIDTH)); -- dpram / base 0x00002000 / mask 0x00013000
    elsif std_match(addr, "---------------0--11------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_DPRAM36, IPBUS_SEL_WIDTH)); -- dpram36 / base 0x00003000 / mask 0x00013000
    elsif std_match(addr, "---------------1--00------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_SDPRAM72, IPBUS_SEL_WIDTH)); -- sdpram72 / base 0x00010000 / mask 0x00013000
-- END automatically generated VHDL

    else
        sel := ipbus_sel_t(to_unsigned(N_SLAVES, IPBUS_SEL_WIDTH));
    end if;

    return sel;

  end function ipbus_sel_ipbus_extended_example;

end ipbus_decode_ipbus_extended_example;

