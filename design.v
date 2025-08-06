module seq0110x(in, clk, rst, out);

input in, clk, rst;
output reg out;

parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3;

reg [1:0] ns, ps;


always @ (posedge clk, posedge rst)
    begin
        if(rst)
            ps = s0;
        else
            ps = ns;
    end

always @ (ps or in)
    begin
        case(ps)
            s0: begin
                    out=in ? 0 : 0;
                    ns=in ? s0 : s1;
                end
            s1: begin
                    out=in ? 0 : 0;
                    ns=in ? s2 : s1;
                end
            s2: begin
                    out=in ? 0 : 0;
                    ns=in ? s3 : s1;
                end
            s3: begin
                    out=in ? 0 : 1;
                    ns=in ? s0 : s1;
                end
            
        endcase
    end


endmodule
