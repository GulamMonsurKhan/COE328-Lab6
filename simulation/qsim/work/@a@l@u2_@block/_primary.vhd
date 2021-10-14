library verilog;
use verilog.vl_types.all;
entity ALU2_Block is
    port(
        OP              : out    vl_logic_vector(0 to 15);
        Enable          : in     vl_logic;
        Clock           : in     vl_logic;
        Data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        RFirst          : out    vl_logic_vector(0 to 6);
        L1Reset         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        L2Reset         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        RLast           : out    vl_logic_vector(0 to 6);
        Sign            : out    vl_logic_vector(0 to 6);
        Student_ID      : out    vl_logic_vector(0 to 6)
    );
end ALU2_Block;
