module seq_tb();
    reg in, clk = 0, rst;
    wire out;
    
    // instantiation
    seq0110x s(in, clk, rst, out);
    
    // clock generation
    always #5 clk = ~clk;
    
    initial
        begin
            rst = 1; 
            #15 rst = 0;
        end
    
    initial
        begin
            #12 in = 0; #10 in = 0; #10 in = 1; #10 in = 1;
            #10 in = 0; #10 in = 1; #10 in = 1; #10 in = 0;
            #10 in = 0; #10 in = 1; #10 in = 1; #10 in = 0;
            #10 $finish();
        end
        
     initial
        begin
            $monitor($time, " in = %b | out = %b ", in, out);
        end

endmodule
