module STE0(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = ((42 <= character && character <= 43) || (48 <= character && character <= 57) || character == 63 || (97 <= character && character <= 98) || (113 <= character && character <= 115) || character == 124);
endmodule

module STE1(
	input [7:0] character,
	output activateChildren
);
	assign activateChildren = (character == 10 || character == 32 || (40 <= character && character <= 41) || character == 45 || (66 <= character && character <= 73) || (75 <= character && character <= 81) || (83 <= character && character <= 90) || character == 92 || (99 <= character && character <= 103) || (105 <= character && character <= 112) || (117 <= character && character <= 122));
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
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || (65 <= character && character <= 66) || (68 <= character && character <= 73) || (75 <= character && character <= 90) || character == 92 || (97 <= character && character <= 103) || (106 <= character && character <= 115) || (117 <= character && character <= 122) || character == 124);
endmodule

module STE9(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 104 || character == 116);
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
	assign activateChildren = isActive && (character == 116);
endmodule

module STE17(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 67);
endmodule

module STE18(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE19(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || character == 63 || (65 <= character && character <= 81) || (83 <= character && character <= 90) || character == 92 || (97 <= character && character <= 122) || character == 124);
endmodule

module STE20(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 82);
endmodule

module STE21(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 63);
endmodule

module STE22(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || character == 63 || (65 <= character && character <= 73) || (75 <= character && character <= 83) || (85 <= character && character <= 90) || character == 92 || (97 <= character && character <= 103) || (106 <= character && character <= 115) || (117 <= character && character <= 122));
endmodule

module STE23(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 104 || character == 116);
endmodule

module STE24(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE25(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE26(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE27(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 124);
endmodule

module STE28(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 73);
endmodule

module STE29(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 43);
endmodule

module STE30(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 42);
endmodule

module STE31(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || character == 63 || (65 <= character && character <= 81) || (83 <= character && character <= 90) || character == 92 || (97 <= character && character <= 122) || character == 124);
endmodule

module STE32(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 82);
endmodule

module STE33(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 82);
endmodule

module STE34(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 69);
endmodule

module STE35(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 82);
endmodule

module STE36(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 79);
endmodule

module STE37(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE38(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 124);
endmodule

module STE39(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 69);
endmodule

module STE40(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE41(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 74);
endmodule

module STE42(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 84);
endmodule

module STE43(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 32);
endmodule

module STE44(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && ((48 <= character && character <= 57));
endmodule

module STE45(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE46(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 104);
endmodule

module STE47(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 116);
endmodule

module STE48(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 105);
endmodule

module STE49(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 104);
endmodule

module STE50(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 116);
endmodule

module STE51(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || character == 63 || (65 <= character && character <= 72) || (74 <= character && character <= 90) || character == 92 || (97 <= character && character <= 122) || character == 124);
endmodule

module STE52(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 73);
endmodule

module STE53(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 63);
endmodule

module STE54(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 73);
endmodule

module STE55(
	input [7:0] character,
	input isActive,
	output activateChildren
);
	assign activateChildren = isActive && (character == 10 || character == 32 || (40 <= character && character <= 43) || (45 <= character && character <= 46) || (48 <= character && character <= 57) || character == 63 || (65 <= character && character <= 90) || character == 92 || (97 <= character && character <= 122) || character == 124);
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
	integer fin, bytesRead;
	reg [7:0] character;
	reg clock;

	wire ste8Active, ste9Active, ste10Active, ste11Active, ste12Active, ste13Active, ste14Active, ste15Active, ste16Active, ste17Active, ste18Active, ste19Active, ste20Active, ste21Active, ste22Active, ste23Active, ste24Active, ste25Active, ste26Active, ste27Active, ste28Active, ste29Active, ste30Active, ste31Active, ste32Active, ste33Active, ste34Active, ste35Active, ste36Active, ste37Active, ste38Active, ste39Active, ste40Active, ste41Active, ste42Active, ste43Active, ste44Active, ste45Active, ste46Active, ste47Active, ste48Active, ste49Active, ste50Active, ste51Active, ste52Active, ste53Active, ste54Active, ste55Active;
	wire ste0ChildrenActivate, ste1ChildrenActivate, ste2ChildrenActivate, ste3ChildrenActivate, ste4ChildrenActivate, ste5ChildrenActivate, ste6ChildrenActivate, ste7ChildrenActivate, ste8ChildrenActivate, ste9ChildrenActivate, ste10ChildrenActivate, ste11ChildrenActivate, ste12ChildrenActivate, ste13ChildrenActivate, ste14ChildrenActivate, ste15ChildrenActivate, ste16ChildrenActivate, ste17ChildrenActivate, ste18ChildrenActivate, ste19ChildrenActivate, ste20ChildrenActivate, ste21ChildrenActivate, ste22ChildrenActivate, ste23ChildrenActivate, ste24ChildrenActivate, ste25ChildrenActivate, ste26ChildrenActivate, ste27ChildrenActivate, ste28ChildrenActivate, ste29ChildrenActivate, ste30ChildrenActivate, ste31ChildrenActivate, ste32ChildrenActivate, ste33ChildrenActivate, ste34ChildrenActivate, ste35ChildrenActivate, ste36ChildrenActivate, ste37ChildrenActivate, ste38ChildrenActivate, ste39ChildrenActivate, ste40ChildrenActivate, ste41ChildrenActivate, ste42ChildrenActivate, ste43ChildrenActivate, ste44ChildrenActivate, ste45ChildrenActivate, ste46ChildrenActivate, ste47ChildrenActivate, ste48ChildrenActivate, ste49ChildrenActivate, ste50ChildrenActivate, ste51ChildrenActivate, ste52ChildrenActivate, ste53ChildrenActivate, ste54ChildrenActivate, ste55ChildrenActivate;

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
	STE41 ste41(character, ste41Active, ste41ChildrenActivate);
	STE42 ste42(character, ste42Active, ste42ChildrenActivate);
	STE43 ste43(character, ste43Active, ste43ChildrenActivate);
	STE44 ste44(character, ste44Active, ste44ChildrenActivate);
	STE45 ste45(character, ste45Active, ste45ChildrenActivate);
	STE46 ste46(character, ste46Active, ste46ChildrenActivate);
	STE47 ste47(character, ste47Active, ste47ChildrenActivate);
	STE48 ste48(character, ste48Active, ste48ChildrenActivate);
	STE49 ste49(character, ste49Active, ste49ChildrenActivate);
	STE50 ste50(character, ste50Active, ste50ChildrenActivate);
	STE51 ste51(character, ste51Active, ste51ChildrenActivate);
	STE52 ste52(character, ste52Active, ste52ChildrenActivate);
	STE53 ste53(character, ste53Active, ste53ChildrenActivate);
	STE54 ste54(character, ste54Active, ste54ChildrenActivate);
	STE55 ste55(character, ste55Active, ste55ChildrenActivate);

	FF ste8FF(ste1ChildrenActivate || ste7ChildrenActivate || ste2ChildrenActivate || ste3ChildrenActivate || ste5ChildrenActivate || ste0ChildrenActivate || ste4ChildrenActivate, clock, ste8Active);
	FF ste9FF(ste1ChildrenActivate || ste0ChildrenActivate || ste7ChildrenActivate || ste2ChildrenActivate || ste5ChildrenActivate || ste4ChildrenActivate, clock, ste9Active);
	FF ste10FF(ste1ChildrenActivate || ste0ChildrenActivate || ste7ChildrenActivate || ste3ChildrenActivate || ste5ChildrenActivate || ste4ChildrenActivate, clock, ste10Active);
	FF ste11FF(ste1ChildrenActivate || ste0ChildrenActivate || ste7ChildrenActivate || ste2ChildrenActivate || ste3ChildrenActivate || ste5ChildrenActivate, clock, ste11Active);
	FF ste12FF(ste1ChildrenActivate || ste0ChildrenActivate || ste7ChildrenActivate || ste2ChildrenActivate || ste3ChildrenActivate || ste4ChildrenActivate, clock, ste12Active);
	FF ste13FF(ste1ChildrenActivate || ste0ChildrenActivate || ste2ChildrenActivate || ste3ChildrenActivate || ste5ChildrenActivate || ste4ChildrenActivate, clock, ste13Active);
	FF ste14FF(ste2ChildrenActivate, clock, ste14Active);
	FF ste15FF(ste3ChildrenActivate, clock, ste15Active);
	FF ste16FF(ste3ChildrenActivate, clock, ste16Active);
	FF ste17FF(ste4ChildrenActivate, clock, ste17Active);
	FF ste18FF(ste5ChildrenActivate, clock, ste18Active);
	FF ste19FF(ste6ChildrenActivate, clock, ste19Active);
	FF ste20FF(ste6ChildrenActivate, clock, ste20Active);
	FF ste21FF(ste7ChildrenActivate, clock, ste21Active);
	FF ste22FF(ste18ChildrenActivate || ste8ChildrenActivate || ste21ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste15ChildrenActivate || ste17ChildrenActivate || ste16ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste22Active);
	FF ste23FF(ste18ChildrenActivate || ste8ChildrenActivate || ste21ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste17ChildrenActivate || ste15ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste23Active);
	FF ste24FF(ste18ChildrenActivate || ste8ChildrenActivate || ste21ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste16ChildrenActivate || ste17ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste24Active);
	FF ste25FF(ste8ChildrenActivate || ste21ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste15ChildrenActivate || ste17ChildrenActivate || ste16ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste25Active);
	FF ste26FF(ste18ChildrenActivate || ste8ChildrenActivate || ste21ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste15ChildrenActivate || ste16ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste26Active);
	FF ste27FF(ste21ChildrenActivate, clock, ste27Active);
	FF ste28FF(ste38ChildrenActivate || ste25ChildrenActivate || ste33ChildrenActivate || ste46ChildrenActivate || ste23ChildrenActivate || ste27ChildrenActivate || ste37ChildrenActivate || ste24ChildrenActivate || ste32ChildrenActivate || ste42ChildrenActivate || ste31ChildrenActivate || ste22ChildrenActivate || ste55ChildrenActivate || ste26ChildrenActivate || ste47ChildrenActivate, clock, ste28Active);
	FF ste29FF(ste27ChildrenActivate, clock, ste29Active);
	FF ste30FF(ste29ChildrenActivate, clock, ste30Active);
	FF ste31FF(ste20ChildrenActivate || ste19ChildrenActivate, clock, ste31Active);
	FF ste32FF(ste20ChildrenActivate, clock, ste32Active);
	FF ste33FF(ste19ChildrenActivate, clock, ste33Active);
	FF ste34FF(ste32ChildrenActivate || ste31ChildrenActivate || ste33ChildrenActivate, clock, ste34Active);
	FF ste35FF(ste32ChildrenActivate || ste35ChildrenActivate, clock, ste35Active);
	FF ste36FF(ste34ChildrenActivate, clock, ste36Active);
	FF ste37FF(ste18ChildrenActivate, clock, ste37Active);
	FF ste38FF(ste18ChildrenActivate || ste8ChildrenActivate || ste13ChildrenActivate || ste9ChildrenActivate || ste15ChildrenActivate || ste17ChildrenActivate || ste16ChildrenActivate || ste10ChildrenActivate || ste11ChildrenActivate || ste12ChildrenActivate, clock, ste38Active);
	FF ste39FF(ste28ChildrenActivate || ste54ChildrenActivate, clock, ste39Active);
	FF ste40FF(ste39ChildrenActivate, clock, ste40Active);
	FF ste41FF(ste37ChildrenActivate || ste41ChildrenActivate, clock, ste41Active);
	FF ste42FF(ste17ChildrenActivate, clock, ste42Active);
	FF ste43FF(ste42ChildrenActivate, clock, ste43Active);
	FF ste44FF(ste43ChildrenActivate, clock, ste44Active);
	FF ste45FF(ste15ChildrenActivate, clock, ste45Active);
	FF ste46FF(ste16ChildrenActivate, clock, ste46Active);
	FF ste47FF(ste16ChildrenActivate, clock, ste47Active);
	FF ste48FF(ste46ChildrenActivate || ste49ChildrenActivate, clock, ste48Active);
	FF ste49FF(ste47ChildrenActivate || ste50ChildrenActivate, clock, ste49Active);
	FF ste50FF(ste47ChildrenActivate || ste50ChildrenActivate, clock, ste50Active);
	FF ste51FF(ste48ChildrenActivate || ste45ChildrenActivate, clock, ste51Active);
	FF ste52FF(ste48ChildrenActivate, clock, ste52Active);
	FF ste53FF(ste51ChildrenActivate || ste55ChildrenActivate || ste54ChildrenActivate || ste52ChildrenActivate, clock, ste53Active);
	FF ste54FF(ste45ChildrenActivate, clock, ste54Active);
	FF ste55FF(ste14ChildrenActivate, clock, ste55Active);

	always #5 clock = !clock;

	initial
	begin
		fin = $fopen("input.txt", "rb");
		clock = 0;

		while (1)
		begin
			bytesRead = $fread(character, fin, 0, 1);
			if (bytesRead < 1)
				$finish;

			#1;

			$display("Character: %h", character);
			$display("0: S %d", ste0ChildrenActivate);
			$display("1: S %d", ste1ChildrenActivate);
			$display("2: S %d", ste2ChildrenActivate);
			$display("3: S %d", ste3ChildrenActivate);
			$display("4: S %d", ste4ChildrenActivate);
			$display("5: S %d", ste5ChildrenActivate);
			$display("6: S %d", ste6ChildrenActivate);
			$display("7: S %d", ste7ChildrenActivate);
			$display("8: %d %d", ste8Active, ste8ChildrenActivate);
			$display("9: %d %d", ste9Active, ste9ChildrenActivate);
			$display("10: %d %d", ste10Active, ste10ChildrenActivate);
			$display("11: %d %d", ste11Active, ste11ChildrenActivate);
			$display("12: %d %d", ste12Active, ste12ChildrenActivate);
			$display("13: %d %d", ste13Active, ste13ChildrenActivate);
			$display("14: %d %d", ste14Active, ste14ChildrenActivate);
			$display("15: %d %d", ste15Active, ste15ChildrenActivate);
			$display("16: %d %d", ste16Active, ste16ChildrenActivate);
			$display("17: %d %d", ste17Active, ste17ChildrenActivate);
			$display("18: %d %d", ste18Active, ste18ChildrenActivate);
			$display("19: %d %d", ste19Active, ste19ChildrenActivate);
			$display("20: %d %d", ste20Active, ste20ChildrenActivate);
			$display("21: %d %d", ste21Active, ste21ChildrenActivate);
			$display("22: %d %d", ste22Active, ste22ChildrenActivate);
			$display("23: %d %d", ste23Active, ste23ChildrenActivate);
			$display("24: %d %d", ste24Active, ste24ChildrenActivate);
			$display("25: %d %d", ste25Active, ste25ChildrenActivate);
			$display("26: %d %d", ste26Active, ste26ChildrenActivate);
			$display("27: %d %d", ste27Active, ste27ChildrenActivate);
			$display("28: %d %d", ste28Active, ste28ChildrenActivate);
			$display("29: %d %d", ste29Active, ste29ChildrenActivate);
			$display("30: %d %d", ste30Active, ste30ChildrenActivate);
			$display("31: %d %d", ste31Active, ste31ChildrenActivate);
			$display("32: %d %d", ste32Active, ste32ChildrenActivate);
			$display("33: %d %d", ste33Active, ste33ChildrenActivate);
			$display("34: %d %d", ste34Active, ste34ChildrenActivate);
			$display("35: %d %d", ste35Active, ste35ChildrenActivate);
			$display("36: %d %d", ste36Active, ste36ChildrenActivate);
			$display("37: %d %d", ste37Active, ste37ChildrenActivate);
			$display("38: %d %d", ste38Active, ste38ChildrenActivate);
			$display("39: %d %d", ste39Active, ste39ChildrenActivate);
			$display("40: %d %d", ste40Active, ste40ChildrenActivate);
			$display("41: %d %d", ste41Active, ste41ChildrenActivate);
			$display("42: %d %d", ste42Active, ste42ChildrenActivate);
			$display("43: %d %d", ste43Active, ste43ChildrenActivate);
			$display("44: %d %d", ste44Active, ste44ChildrenActivate);
			$display("45: %d %d", ste45Active, ste45ChildrenActivate);
			$display("46: %d %d", ste46Active, ste46ChildrenActivate);
			$display("47: %d %d", ste47Active, ste47ChildrenActivate);
			$display("48: %d %d", ste48Active, ste48ChildrenActivate);
			$display("49: %d %d", ste49Active, ste49ChildrenActivate);
			$display("50: %d %d", ste50Active, ste50ChildrenActivate);
			$display("51: %d %d", ste51Active, ste51ChildrenActivate);
			$display("52: %d %d", ste52Active, ste52ChildrenActivate);
			$display("53: %d %d", ste53Active, ste53ChildrenActivate);
			$display("54: %d %d", ste54Active, ste54ChildrenActivate);
			$display("55: %d %d", ste55Active, ste55ChildrenActivate);
			$display("report: %d", ste0ChildrenActivate || ste5ChildrenActivate || ste6ChildrenActivate || ste7ChildrenActivate || ste18ChildrenActivate || ste19ChildrenActivate || ste20ChildrenActivate || ste30ChildrenActivate || ste32ChildrenActivate || ste35ChildrenActivate || ste36ChildrenActivate || ste37ChildrenActivate || ste40ChildrenActivate || ste41ChildrenActivate || ste44ChildrenActivate || ste53ChildrenActivate);
			$display();

			#9;
		end
	end
endmodule
