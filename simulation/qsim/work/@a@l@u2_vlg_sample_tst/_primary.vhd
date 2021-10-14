library verilog;
use verilog.vl_types.all;
entity ALU2_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        OP              : in     vl_logic_vector(0 to 15);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU2_vlg_sample_tst;
