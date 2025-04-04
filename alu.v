module alu(a,b,s,y);
input[3:0]a;
input[3:0]b;
input[2:0]s;
output reg [7:0]y;

always@(*)
begin
case(s)
3'b000: y=0;
3'b001: y=a+b;
3'b010: y=a-b;
3'b011: y=a&b;
3'b100: y=a|b;
3'b101: y=~a;
3'b110: y=~b;
3'b111: y=0;
default: y=0;
endcase
end
endmodule