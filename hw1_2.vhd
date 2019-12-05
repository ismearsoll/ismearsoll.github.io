library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder is
    port (
        a:      in std_logic;
        b:      in std_logic;
        small:  in std_logic_vector(3 downto 0);
        f:      out std_logic_vector(15 downto 0)
    );
end encoder;

architecture behavior of encoder is
begin
    if (a = '0' and b = '0') then
        if (small = "0000") then
            f <= "0000000000000001";
        elsif (small = "0001") then
            f <= "0000000000000010";
        elsif (small = "0010") then
            f <= "0000000000000100";
        elsif (small = "0011") then
            f <= "0000000000001000";
        elsif (small = "0100") then
            f <= "0000000000010000";
        elsif (small = "0101") then
            f <= "0000000000100000";
        elsif (small = "0110") then
            f <= "0000000001000000";
        elsif (small = "0111") then
            f <= "0000000010000000";
        elsif (small = "1000") then
            f <= "0000000100000000";
        elsif (small = "1001") then
            f <= "0000001000000000";
        elsif (small = "1010") then
            f <= "0000010000000000";
        elsif (small = "1011") then
            f <= "0000100000000000";
        elsif (small = "1100") then
            f <= "0001000000000000";
        elsif (small = "1101") then
            f <= "0010000000000000";
        elsif (small = "1110") then
            f <= "0100000000000000";
        elsif (small = "1111") then
            f <= "1000000000000000";
        else
            f <= "0000000000000000";
        end if;

    end if;
end behavior;
