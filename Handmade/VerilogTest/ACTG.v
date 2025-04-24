module STE0(
    input [15:0] character,
    output activateChildren
);
	assign activateChildren = (character == 16'h4141 || character == 16'h4147 || character == 16'h5441 || character == 16'h5447);
endmodule

module STE1(
    input [15:0] character,
    input isActive,
    output activateChildren
);
    assign activateChildren = isActive && character == 16'h4343;
endmodule

module STE2(
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

module main(
	input clock,
	input [15:0] character,
	output HBM_CATTRIP,
	output result
);
	wire ste1Active, ste2Active;
    wire ste0ChildrenActivate, ste1ChildrenActivate, ste2ChildrenActivate;
	
    STE0 ste0(character, ste0ChildrenActivate);
	STE1 ste1(character, ste1Active, ste1ChildrenActivate);
	STE2 ste2(character, ste2Active, ste2ChildrenActivate);
	
	FF ste1FF(ste0ChildrenActivate || ste1ChildrenActivate, clock, ste1Active);
	FF ste2FF(ste1ChildrenActivate, clock, ste2Active);
	
	assign result = ste1ChildrenActivate || ste2ChildrenActivate;
	
	assign HBM_CATTRIP = 1'b0;
	
    /*
	integer fin, bytesRead;
	initial
    begin
		fin = $fopen("input.txt", "rb");
	end
	
	always @(posedge clock)
	begin
		bytesRead = $fread(character, fin, 0, 2);
		if (bytesRead < 2)
			$finish;
		
		#1;
		
		$display("Character: %h", character);
		$display("0: S %d", ste0ChildrenActivate);
		$display("1: %d %d", ste1Active, ste1ChildrenActivate);
		$display("2: %d %d", ste2Active, ste2ChildrenActivate);
		$display("report: %d", ste1ChildrenActivate || ste2ChildrenActivate);
		$display();
	end*/
endmodule