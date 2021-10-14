library verilog;
use verilog.vl_types.all;
entity ALU2_Block_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        Data_in         : in     vl_logic;
        Enable          : in     vl_logic;
        L1Reset         : in     vl_logic;
        L2Reset         : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU2_Block_vlg_sample_tst;
