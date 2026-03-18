module tb_alu();
    
    reg [7:0] a;
    reg [7:0] b;
    reg [2:0] sel;  // Make sure this is [2:0]


    wire [7:0] out;
    wire c;

    
    alu_8bit uut (
        .a(a), 
        .b(b), 
        .sel(sel), // Make sure the names match your design exactly
        .out(out), 
        .c(c)
    );
    
  

    initial begin
        $dumpfile("dump.vcd"); // Required for seeing waveforms in EDA Playground
        $dumpvars(1);

        // Test Addition
        a = 8'd10; b = 8'd5; sel = 3'b000; #10;
        
        // Test Subtraction
        a = 8'd20; b = 8'd8; sel = 3'b001; #10;

        // Test AND logic
        a = 8'b10101010; b = 8'b11110000; sel = 3'b010; #10;

        $finish;
    end
endmodule
