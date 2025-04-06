module Ste0(
    input [15:0] character,
    input isActive,
    output activateChildren
);
	assign activateChildren = isActive && (character == 16'h4141 || character == 16'h4147 || character == 16'h5441 || character == 16'h5447);
endmodule

module Ste1(
    input [15:0] character,
    input isActive,
    output activateChildren
);
    assign activateChildren = isActive && character == 16'h4343;
endmodule

module Ste2(
    input [15:0] character,
    input isActive,
    output activateChildren
);
    assign activateChildren = isActive && character[15:8] == 8'h43;
endmodule

module FF(
	input setActive,
	input clock,
	output reg isActive
);
	always @(posedge clock)
		isActive <= setActive;
endmodule

module main();
	integer fin, bytes_read;
	reg [15:0] character;
	reg clock;
	
    reg ste0Active;
	wire ste1Active, ste2Active;
    wire ste0ChildrenActivate, ste1ChildrenActivate, ste2ChildrenActivate;
	
    Ste0 ste0(character, ste0Active, ste0ChildrenActivate);
	Ste1 ste1(character, ste1Active, ste1ChildrenActivate);
	Ste2 ste2(character, ste2Active, ste2ChildrenActivate);
	
	FF ste1FF(ste0ChildrenActivate || ste1ChildrenActivate, clock, ste1Active);
	FF ste2FF(ste1ChildrenActivate, clock, ste2Active);
	
	always #5 clock = !clock;
	
    initial
    begin
		fin = $fopen("input.txt", "rb");
		clock = 0;
		ste0Active = 1;
		
		while (1)
		begin
			bytes_read = $fread(character, fin, 0, 2);
			if (bytes_read < 2)
			begin
				$finish;
			end
			
			#1;
			
			$display("Character: %h", character);
			$display("0: %d %d", ste0Active, ste0ChildrenActivate);
			$display("1: %d %d", ste1Active, ste1ChildrenActivate);
			$display("2: %d %d", ste2Active, ste2ChildrenActivate);
			$display("report: %d", ste1ChildrenActivate || ste2ChildrenActivate);
			$display();
			
			#9;
		end
	end
endmodule