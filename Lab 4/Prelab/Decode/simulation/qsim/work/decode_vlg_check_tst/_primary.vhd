library verilog;
use verilog.vl_types.all;
entity decode_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end decode_vlg_check_tst;
