module Ste0(
    input [15:0] character,
    input isActive,
    output activateChildren
);
    reg hasEdge;
    always @(character)
    case(character)
        16'h4141: hasEdge <= 1; //AA
        16'h4147: hasEdge <= 1; //AG
        16'h5441: hasEdge <= 1; //TA
        16'h5447: hasEdge <= 1; //TG
        default: hasEdge <= 0;
    endcase
    assign activateChildren = isActive && hasEdge;
endmodule

module Ste1(
    input [15:0] character,
    input isActive,
    output activateChildren
);
    reg hasEdge;
    always @(character)
	begin
		case(character)
			16'h4343: hasEdge <= 1; //CC
			default: hasEdge <= 0;
		endcase
    end
    assign activateChildren = isActive && hasEdge;
endmodule

module FF(
	input setActive,
	input clock,
	output reg isActive
);
	always @(posedge clock)
	begin
	    isActive <= setActive;
	end
endmodule

module main();
	reg [15:0] character;
	reg clock;
	
    reg ste0Active;
	wire ste1Active;
    wire ste0ChildrenActivate, ste1ChildrenActivate;
	
    Ste0 ste0(character, ste0Active, ste0ChildrenActivate);
	Ste1 ste1(character, ste1Active, ste1ChildrenActivate);
	
	FF ste1FF(ste0ChildrenActivate || ste1ChildrenActivate, clock, ste1Active);
	
	always #5 clock = ~clock;
	
    initial
    begin
		clock = 0;
		ste0Active = 1;
		
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
        character = 16'h4141;#10;
		$display("AA");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
        character = 16'h4147;#10;
		$display("AG");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
		character = 16'h4343;#10;
		$display("CC");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
		character = 16'h4343;#10;
		$display("CC");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
		character = 16'h4154;#10;
		$display("AT");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
		character = 16'h4343;#10;
		$display("CC");
		$display("0: %d %d", ste0Active, ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		
		$finish;
	end
endmodule