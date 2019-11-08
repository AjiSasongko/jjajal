----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:27 10/24/2019 
-- Design Name: 
-- Module Name:    counterntaps - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterntaps is

generic (n: natural :=4);
port( clock : in std_logic;
		reset: in std_logic;
		count_en: in std_logic;
		count_out: out std_logic_vector (n-1 downto 0;

end counterntaps;

architecture Behavioral of counterntaps is
signal sign_counter: std_logic_vector(n-1 downto 0)
begin

process(clock, count_en, reset)
begin
if reset = '1' then
	sign_counter <= (others=>'0');
elsif (clock= '1' and clock'event) then
	if count_en = '1' then
	sign_counter <= sign_counter +1;
	end if;
end if;
end process

count_out <= sign_counter;

end Behavioral;

