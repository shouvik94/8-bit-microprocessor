module test ;
    reg [7:0] addr,data;
    reg done,clk;

    instReg R(clk,rst,addr,data,done,out);

    initial begin
        $dumpfile("GTK.vcd");
        $dumpvars(1,test);
    end

    initial begin
        clk = 0;
        #1 clk = ~clk;
    end


    initial begin
        addr = 8'b00000000; data = 8'b00000000; done = 1; #1 done = 0;
    end
endmodule