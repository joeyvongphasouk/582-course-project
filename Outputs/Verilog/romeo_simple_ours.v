module STE0(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 82);
endmodule

module STE1(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 79);
endmodule

module STE2(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 77);
endmodule

module STE3(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 69);
endmodule

module STE4(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 79);
endmodule

module STE5(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 92);
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
	input [7:0] character,
	output HBM_CATTRIP,
	output result
);
	wire ste1Active, ste2Active, ste3Active, ste4Active, ste5Active;
	wire ste0ChildrenActivate, ste1ChildrenActivate, ste2ChildrenActivate, ste3ChildrenActivate, ste4ChildrenActivate, ste5ChildrenActivate;

	STE0 ste0(character, ste0ChildrenActivate);
	STE1 ste1(character, ste1Active, ste1ChildrenActivate);
	STE2 ste2(character, ste2Active, ste2ChildrenActivate);
	STE3 ste3(character, ste3Active, ste3ChildrenActivate);
	STE4 ste4(character, ste4Active, ste4ChildrenActivate);
	STE5 ste5(character, ste5Active, ste5ChildrenActivate);

	FF ste1FF(ste0ChildrenActivate, clock, ste1Active);
	FF ste2FF(ste1ChildrenActivate, clock, ste2Active);
	FF ste3FF(ste2ChildrenActivate, clock, ste3Active);
	FF ste4FF(ste3ChildrenActivate || ste5ChildrenActivate || ste4ChildrenActivate, clock, ste4Active);
	FF ste5FF(ste5ChildrenActivate || ste4ChildrenActivate, clock, ste5Active);
	
	assign result = ste4ChildrenActivate || ste5ChildrenActivate;

	assign HBM_CATTRIP = 1'b0;
endmodule
