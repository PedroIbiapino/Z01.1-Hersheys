-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		LEDR    : out std_logic_vector(9 downto 0);
		HEX0     : out std_logic_vector(6 downto 0); -- 7seg0
    HEX1     : out std_logic_vector(6 downto 0); -- 7seg0
    HEX2     : out std_logic_vector(6 downto 0); -- 7seg0
		HEX3     : out std_logic_vector(6 downto 0)
		
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is


--------------
-- signals
--------------

  signal x : std_logic_vector(15 downto 0) := x"0073"; -- 115
  signal y : std_logic_vector(15 downto 0) := x"005F"; -- 95
	
--------------
-- component
--------------

	 component sevenSeg is
	port (
			bcd : in  STD_LOGIC_VECTOR(3 downto 0);
			leds: out STD_LOGIC_VECTOR(6 downto 0));
end component;

  component ALU is
    port (
			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			zx:    in STD_LOGIC;                     -- zera a entrada x
			nx:    in STD_LOGIC;                     -- inverte a entrada x
			zy:    in STD_LOGIC;                     -- zera a entrada y
			ny:    in STD_LOGIC;                     -- inverte a entrada y
			f:     in STD_LOGIC_VECTOR(1 downto 0);                     -- se 0 calcula x & y, senão x + y
			no:    in STD_LOGIC;                     -- inverte o valor da saída
			zr:    out STD_LOGIC;                    -- setado se saída igual a zero
			ng:    out STD_LOGIC;                    -- setado se saída é negativa
			saida: out STD_LOGIC_VECTOR(15 downto 0); -- saída de dados da ALU
			dir:   in STD_LOGIC;					 -- dir direcao esquerda (0), direita (1)
			size:  in STD_LOGIC_VECTOR(2 downto 0); -- qtd de deslocamento
			estouro : out STD_LOGIC
	);
  end component;
	 
signal saida: STD_LOGIC_VECTOR(15 downto 0); -- saída de dados da ALU
---------------
-- implementacao
---------------
begin
  -- ULA
      ula : ALU port map(
      x => "0000000000000001",
      y  => "1111111111111111",
      zx => SW(0),   ---- zerador x
      nx => SW(1),   -- inversor de x
      zy => SW(2),   -- zerador de y
      ny => SW(3),  -- inversor de y
      f => SW(5 downto 4),   -- f
      no => SW(6),  -- inversor out 
      zr => LEDR(0), -- saida do comparador
      ng => LEDR(1),  -- com
      saida => saida,
      dir => SW(9),
      size => "001",
		  estouro => LEDR(9)
      );



  -- Sevenseg:
      display1 : sevenSeg port map(
          bcd => saida(3 downto 0),
          leds => HEX0
      );
      display2 :sevenSeg port map(
        bcd => saida(7 downto 4),
        leds => HEX1
      );
      display3 : sevenSeg port map(
        bcd => saida(11 downto 8),
        leds => HEX2
      );
      display4 : sevenSeg port map(
        bcd => saida(15 downto 12),
        leds => HEX3
      );

  
end rtl;