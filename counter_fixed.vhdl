```vhdl
entity counter_fixed is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15 );
end entity;

architecture behavioral of counter_fixed is
    signal internal_count : UNSIGNED(3 downto 0) := (others => '0');
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_count <= (others => '0');
        elsif rising_edge(clk) then
            internal_count <= internal_count + 1;
        end if;
    end process;
    count <= to_integer(internal_count);
end architecture;
```