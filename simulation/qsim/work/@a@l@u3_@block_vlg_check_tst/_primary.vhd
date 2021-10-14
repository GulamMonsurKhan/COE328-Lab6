library verilog;
use verilog.vl_types.all;
entity ALU3_Block_vlg_check_tst is
    port(
        OP              : in     vl_logic_vector(0 to 15);
        RFirst          : in     vl_logic_vector(0 to 6);
        RLast           : in     vl_logic_vector(0 to 6);
        Sign            : in     vl_logic_vector(0 to 6);
        Student_ID      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end ALU3_Block_vlg_check_tst;
