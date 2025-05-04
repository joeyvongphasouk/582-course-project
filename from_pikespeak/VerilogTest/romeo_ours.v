module STE0(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 124);
endmodule

module STE1(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 92);
endmodule

module STE2(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 104);
endmodule

module STE3(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 116);
endmodule

module STE4(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 65);
endmodule

module STE5(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 74);
endmodule

module STE6(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 82);
endmodule

module STE7(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 46);
endmodule

module STE8(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 92);
endmodule

module STE9(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 116);
endmodule

module STE10(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE11(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 67);
endmodule

module STE12(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE13(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 63);
endmodule

module STE14(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE15(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 104);
endmodule

module STE16(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 67);
endmodule

module STE17(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 92);
endmodule

module STE18(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 63);
endmodule

module STE19(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 92);
endmodule

module STE20(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 116);
endmodule

module STE21(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE22(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE23(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE24(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 124);
endmodule

module STE25(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 73);
endmodule

module STE26(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 43);
endmodule

module STE27(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 42);
endmodule

module STE28(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 82);
endmodule

module STE29(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 69);
endmodule

module STE30(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 79);
endmodule

module STE31(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 124);
endmodule

module STE32(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 69);
endmodule

module STE33(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE34(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE35(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 32);
endmodule

module STE36(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 57);
endmodule

module STE37(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE38(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 73);
endmodule

module STE39(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 63);
endmodule

module STE40(
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
	wire ste8Active, ste9Active, ste10Active, ste11Active, ste12Active, ste13Active, ste14Active, ste15Active, ste16Active, ste17Active, ste18Active, ste19Active, ste20Active, ste21Active, ste22Active, ste23Active, ste24Active, ste25Active, ste26Active, ste27Active, ste28Active, ste29Active, ste30Active, ste31Active, ste32Active, ste33Active, ste34Active, ste35Active, ste36Active, ste37Active, ste38Active, ste39Active, ste40Active;
	wire ste0ChildrenActivate, ste1ChildrenActivate, ste2ChildrenActivate, ste3ChildrenActivate, ste4ChildrenActivate, ste5ChildrenActivate, ste6ChildrenActivate, ste7ChildrenActivate, ste8ChildrenActivate, ste9ChildrenActivate, ste10ChildrenActivate, ste11ChildrenActivate, ste12ChildrenActivate, ste13ChildrenActivate, ste14ChildrenActivate, ste15ChildrenActivate, ste16ChildrenActivate, ste17ChildrenActivate, ste18ChildrenActivate, ste19ChildrenActivate, ste20ChildrenActivate, ste21ChildrenActivate, ste22ChildrenActivate, ste23ChildrenActivate, ste24ChildrenActivate, ste25ChildrenActivate, ste26ChildrenActivate, ste27ChildrenActivate, ste28ChildrenActivate, ste29ChildrenActivate, ste30ChildrenActivate, ste31ChildrenActivate, ste32ChildrenActivate, ste33ChildrenActivate, ste34ChildrenActivate, ste35ChildrenActivate, ste36ChildrenActivate, ste37ChildrenActivate, ste38ChildrenActivate, ste39ChildrenActivate, ste40ChildrenActivate;

	STE0 ste0(character, ste0ChildrenActivate);
	STE1 ste1(character, ste1ChildrenActivate);
	STE2 ste2(character, ste2ChildrenActivate);
	STE3 ste3(character, ste3ChildrenActivate);
	STE4 ste4(character, ste4ChildrenActivate);
	STE5 ste5(character, ste5ChildrenActivate);
	STE6 ste6(character, ste6ChildrenActivate);
	STE7 ste7(character, ste7ChildrenActivate);
	STE8 ste8(character, ste8Active, ste8ChildrenActivate);
	STE9 ste9(character, ste9Active, ste9ChildrenActivate);
	STE10 ste10(character, ste10Active, ste10ChildrenActivate);
	STE11 ste11(character, ste11Active, ste11ChildrenActivate);
	STE12 ste12(character, ste12Active, ste12ChildrenActivate);
	STE13 ste13(character, ste13Active, ste13ChildrenActivate);
	STE14 ste14(character, ste14Active, ste14ChildrenActivate);
	STE15 ste15(character, ste15Active, ste15ChildrenActivate);
	STE16 ste16(character, ste16Active, ste16ChildrenActivate);
	STE17 ste17(character, ste17Active, ste17ChildrenActivate);
	STE18 ste18(character, ste18Active, ste18ChildrenActivate);
	STE19 ste19(character, ste19Active, ste19ChildrenActivate);
	STE20 ste20(character, ste20Active, ste20ChildrenActivate);
	STE21 ste21(character, ste21Active, ste21ChildrenActivate);
	STE22 ste22(character, ste22Active, ste22ChildrenActivate);
	STE23 ste23(character, ste23Active, ste23ChildrenActivate);
	STE24 ste24(character, ste24Active, ste24ChildrenActivate);
	STE25 ste25(character, ste25Active, ste25ChildrenActivate);
	STE26 ste26(character, ste26Active, ste26ChildrenActivate);
	STE27 ste27(character, ste27Active, ste27ChildrenActivate);
	STE28 ste28(character, ste28Active, ste28ChildrenActivate);
	STE29 ste29(character, ste29Active, ste29ChildrenActivate);
	STE30 ste30(character, ste30Active, ste30ChildrenActivate);
	STE31 ste31(character, ste31Active, ste31ChildrenActivate);
	STE32 ste32(character, ste32Active, ste32ChildrenActivate);
	STE33 ste33(character, ste33Active, ste33ChildrenActivate);
	STE34 ste34(character, ste34Active, ste34ChildrenActivate);
	STE35 ste35(character, ste35Active, ste35ChildrenActivate);
	STE36 ste36(character, ste36Active, ste36ChildrenActivate);
	STE37 ste37(character, ste37Active, ste37ChildrenActivate);
	STE38 ste38(character, ste38Active, ste38ChildrenActivate);
	STE39 ste39(character, ste39Active, ste39ChildrenActivate);
	STE40 ste40(character, ste40Active, ste40ChildrenActivate);

	FF ste8FF(ste4ChildrenActivate || ste0ChildrenActivate || ste5ChildrenActivate || ste3ChildrenActivate || ste2ChildrenActivate || ste7ChildrenActivate || ste1ChildrenActivate, clock, ste8Active);
	FF ste9FF(ste4ChildrenActivate || ste5ChildrenActivate || ste2ChildrenActivate || ste7ChildrenActivate || ste0ChildrenActivate || ste1ChildrenActivate, clock, ste9Active);
	FF ste10FF(ste4ChildrenActivate || ste5ChildrenActivate || ste3ChildrenActivate || ste7ChildrenActivate || ste0ChildrenActivate || ste1ChildrenActivate, clock, ste10Active);
	FF ste11FF(ste5ChildrenActivate || ste3ChildrenActivate || ste2ChildrenActivate || ste7ChildrenActivate || ste0ChildrenActivate || ste1ChildrenActivate, clock, ste11Active);
	FF ste12FF(ste4ChildrenActivate || ste3ChildrenActivate || ste2ChildrenActivate || ste7ChildrenActivate || ste0ChildrenActivate || ste1ChildrenActivate, clock, ste12Active);
	FF ste13FF(ste4ChildrenActivate || ste5ChildrenActivate || ste3ChildrenActivate || ste2ChildrenActivate || ste0ChildrenActivate || ste1ChildrenActivate, clock, ste13Active);
	FF ste14FF(ste2ChildrenActivate, clock, ste14Active);
	FF ste15FF(ste3ChildrenActivate, clock, ste15Active);
	FF ste16FF(ste4ChildrenActivate, clock, ste16Active);
	FF ste17FF(ste17ChildrenActivate || ste6ChildrenActivate, clock, ste17Active);
	FF ste18FF(ste7ChildrenActivate, clock, ste18Active);
	FF ste19FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste3ChildrenActivate || ste16ChildrenActivate || ste15ChildrenActivate || ste9ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate || ste18ChildrenActivate || ste5ChildrenActivate, clock, ste19Active);
	FF ste20FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste15ChildrenActivate || ste16ChildrenActivate || ste9ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate || ste18ChildrenActivate || ste5ChildrenActivate, clock, ste20Active);
	FF ste21FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste16ChildrenActivate || ste3ChildrenActivate || ste9ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate || ste18ChildrenActivate || ste5ChildrenActivate, clock, ste21Active);
	FF ste22FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste3ChildrenActivate || ste16ChildrenActivate || ste15ChildrenActivate || ste9ChildrenActivate || ste18ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate, clock, ste22Active);
	FF ste23FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste3ChildrenActivate || ste15ChildrenActivate || ste9ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate || ste18ChildrenActivate || ste5ChildrenActivate, clock, ste23Active);
	FF ste24FF(ste18ChildrenActivate, clock, ste24Active);
	FF ste25FF(ste40ChildrenActivate || ste6ChildrenActivate || ste23ChildrenActivate || ste17ChildrenActivate || ste22ChildrenActivate || ste3ChildrenActivate || ste21ChildrenActivate || ste28ChildrenActivate || ste15ChildrenActivate || ste20ChildrenActivate || ste24ChildrenActivate || ste34ChildrenActivate || ste5ChildrenActivate || ste31ChildrenActivate || ste19ChildrenActivate, clock, ste25Active);
	FF ste26FF(ste24ChildrenActivate, clock, ste26Active);
	FF ste27FF(ste26ChildrenActivate, clock, ste27Active);
	FF ste28FF(ste17ChildrenActivate, clock, ste28Active);
	FF ste29FF(ste28ChildrenActivate || ste17ChildrenActivate || ste6ChildrenActivate, clock, ste29Active);
	FF ste30FF(ste29ChildrenActivate, clock, ste30Active);
	FF ste31FF(ste12ChildrenActivate || ste11ChildrenActivate || ste10ChildrenActivate || ste3ChildrenActivate || ste16ChildrenActivate || ste15ChildrenActivate || ste9ChildrenActivate || ste13ChildrenActivate || ste8ChildrenActivate || ste5ChildrenActivate, clock, ste31Active);
	FF ste32FF(ste38ChildrenActivate || ste25ChildrenActivate, clock, ste32Active);
	FF ste33FF(ste32ChildrenActivate, clock, ste33Active);
	FF ste34FF(ste16ChildrenActivate, clock, ste34Active);
	FF ste35FF(ste34ChildrenActivate, clock, ste35Active);
	FF ste36FF(ste35ChildrenActivate, clock, ste36Active);
	FF ste37FF(ste15ChildrenActivate, clock, ste37Active);
	FF ste38FF(ste37ChildrenActivate, clock, ste38Active);
	FF ste39FF(ste38ChildrenActivate || ste40ChildrenActivate, clock, ste39Active);
	FF ste40FF(ste14ChildrenActivate, clock, ste40Active);
	
	assign result = (ste0ChildrenActivate || ste5ChildrenActivate || ste6ChildrenActivate || ste7ChildrenActivate || ste17ChildrenActivate || ste27ChildrenActivate || ste30ChildrenActivate || ste33ChildrenActivate || ste36ChildrenActivate || ste39ChildrenActivate);
	
	assign HBM_CATTRIP = 1'b0;
endmodule
