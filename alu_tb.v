module alu_tb();
reg [3:0]a;
reg [3:0]b;
reg [2:0]s;
wire [3:0]y;

alu dut(a,b,s,y);  // alu dut(.a(a), .b(b), .s(s), .y(y));

initial 
 begin
s=3'b000; a=4'd5; b=4'd9;
#10
s=3'b001; a=4'd8; b=4'd3;
#10
s=3'b010; a=4'd6; b=4'd2;
#10
s=3'b011; a=4'd9; b=4'd2;
#10
s=3'b100; a=4'd6; b=4'd4;
//#10
//s=3'b101; a=4'd5; b=4'd8;
//#10
//s=3'b110; a=4'd4; b=4'd;
//#10
//s=3'b111; a=4'b011; b=4'b0001;

end

initial begin
$monitor($time, "input s=%0b,a=%0b,b=%0b, output y=%0b",s,a,b,y);

 #200 $finish();
end
endmodule