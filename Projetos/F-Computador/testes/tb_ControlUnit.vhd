-- Elementos de Sistemas
-- developed by Luciano Soares
-- 1 tb_ControlUnit.vhd
-- date: 4/4/2017

Library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_ControlUnit is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_ControlUnit is

  component ControlUnit is
      port(
        instruction                 : in STD_LOGIC_VECTOR(17 downto 0);  -- instrução para executar
        zr,ng                       : in STD_LOGIC;                      -- valores zr(se zero) e ng(se negativo) da ALU
        muxALUI_A                   : out STD_LOGIC;                     -- mux que seleciona entre instrução e ALU para reg. A
        muxAM, muxDS                       : out STD_LOGIC;                     -- mux que seleciona entre reg. A e Mem. RAM para ALU
        zx, nx, zy, ny, f, no       : out STD_LOGIC;                     -- sinais de controle da ALU
        loadA, loadD,loadS, loadM, loadPC : out STD_LOGIC;                     -- sinais de load do reg. A, reg. D, Mem. RAM e Program Counter

        );
  end component;

	signal clk : std_logic := '0';
  signal instruction                 : STD_LOGIC_VECTOR(17 downto 0) := (others => '0');
  signal zr,ng                       : STD_LOGIC := '0';
  signal muxAM, muxDS                   : STD_LOGIC := '0';
  signal muxALUI_A                   : STD_LOGIC := '0';
  signal zx, nx, zy, ny, f, no       : STD_LOGIC := '0';
  signal loadA, loadD, loadS,  loadM, loadPC : STD_LOGIC := '0';

begin

	uCU: ControlUnit port map(instruction, zr, ng, muxALUI_A, muxAM, zx, nx, zy, ny, f, no, loadA, loadD, loadM, loadPC);

	clk <= not clk after 100 ps;

  main : process
    begin
      test_runner_setup(runner, runner_cfg);
      -- loadS
      instruction <= "01" & "0111111111111111";
      wait until clk = '1';
      assert(loadS = '0')
        report "ERRO" severity error;

      instruction <= "10" & "0000000001000000";
      wait until clk = '1';
      assert(loadS = '1')
        report "ERRO" severity error;

      -- MuxS

      instruction <= "10" & "1000000001000000";
      wait until clk = '1';
      assert(loadS = '1' and muxS ='1')
        report "ERRO" severity error;

      instruction <= "10" & "0111111111111111";
      wait until clk = '1';
      assert(loadS = '1' and muxS='0' and loadD='1')
        report "ERRO" severity error;

      -- Teste com assembly:
      -- mov 0 -> S
      instruction <= "10" & "110" & "101010" & "1000" & "000";
      wait until clk = '1';
      assert(loadA  = '0' and loadD  = '0' and  loadM  = '0' and loadS = '1' and loadPC = '0' and
            zx = '1' and nx = '0' and zy = '1' and ny = '0' and f = '1' and no = '0')
        report "ERRO" severity error;

      -- mov (%A) -> S
      instruction <= "10" & "110" & "110000" & "1000" & "000";
      wait until clk = '1';
      assert(loadA  = '0' and loadD  = '0' and  loadM  = '0' and loadS = '1' and  loadPC = '0' and
            zx = '1' and nx = '1' and zy = '0' and ny = '0' and f = '0' and no = '0')
        report "ERRO" severity error;


    test_runner_cleanup(runner); -- Simulation ends here

	wait;
  end process;
end architecture;
