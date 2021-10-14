library verilog;
use verilog.vl_types.all;
entity ALU2 is
    port(
        Clock           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        OP              : in     vl_logic_vector(0 to 15);
        Neg             : out    vl_logic;
        R1              : out    vl_logic_vector(3 downto 0);
        R2              : out    vl_logic_vector(3 downto 0)
    );
end ALU2;
