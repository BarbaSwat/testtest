library ieee;
 use ieee.std_logic_1164.all;
 
entity lab3 is
	port( clk : in std_logic;
			reset : in std_logic;
			led : out std_logic);
end entity lab3;

architecture lab3_rtl of lab3 is
 constant c_cnt_max : integer := 25000000-1;
 signal tick : std_logic;
 signal led_int : std_logic;
 signal counter : integer range 0 to c_cnt_max;
 
begin
p_tick : process(clk, reset)
begin
	if reset = '0' then
		tick <= '0';
		counter <= 0;
 elsif rising_edge(clk) then
	counter <= counter+1;
		
 end if;
end process p_tick;

p_led_blink : process(clk, reset)
begin
 if (reset = '0') then
	led <= '0';
	led_int <= '0';
 elsif rising_edge(clk) then
	if counter = (c_cnt_max) then
		led_int <= not(led_int);
	
	elsif counter = (c_cnt_max*2) then
		led_int <= not(led_int);
		counter <= 0;
	end if;
 led <= led_int;	
 end if;
end process p_led_blink;
end architecture lab3_rtl; 