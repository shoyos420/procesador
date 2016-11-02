----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:51:26 11/01/2016 
-- Design Name: 
-- Module Name:    nPc - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nPc is
    Port ( addres : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           nextInstruction : out  STD_LOGIC_VECTOR (31 downto 0));
end nPc;

architecture arqnPc of nPc is

begin
process(clk, address, reset)
	begin
		if(reset = '1')then
			nextInstruction <= (others=>'0');
		else
			if(rising_edge(clk))then
				nextInstruction <= address;
			end if;
		end if;
	end process;

end arqnPc;

