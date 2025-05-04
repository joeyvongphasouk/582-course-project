



module STE #(parameter integer fan_in = 1)(
           input clk,
           input run,
           input reset,
           input [fan_in - 1 : 0] income_edges,
           input match,
           output active_state);
reg internal_reg = 1'b0;
always @ (posedge clk)
begin
    if (reset == 1)
        internal_reg <= 1'b0;
    else if (run == 1)
        internal_reg <= is_potential;
end
assign active_state = internal_reg & match;



wire is_potential;

assign is_potential = |income_edges;


endmodule






/*
******************** Summary {}********************
total nodes = 58
total reports = 17
total edges = 177
average symbols len = 2.44827586207
#######################################################
*/

module Automata_Stage0(input clk,
                    input run,
                    input reset,
                    input [7 : 0] top_symbols
                    , output automata0bitwiseS1_w_out_551
                    , output automata0bitwiseS1_w_out_553
                    , output automata0bitwiseS1_w_out_554
                    , output automata0bitwiseS1_w_out_555
                    , output automata0bitwiseS1_w_out_556
                    , output automata0bitwiseS1_w_out_558
                    , output automata0bitwiseS1_w_out_559
                    , output automata0bitwiseS1_w_out_560
                    , output automata0bitwiseS1_w_out_592
                    , output automata0bitwiseS1_w_out_640
                    , output automata0bitwiseS1_w_out_643
                    , output automata0bitwiseS1_w_out_644
                    , output automata0bitwiseS1_w_out_645
                    , output automata0bitwiseS1_w_out_667
                    , output automata0bitwiseS1_w_out_672
                    , output automata0bitwiseS1_w_out_681
                    , output automata0bitwiseS1_w_out_683
                    ,
                    output reg[7 : 0] out_symbols,
                    output reg out_reset
                    );

always @(posedge clk)
begin
    if (run == 1)
        out_symbols <= top_symbols;
        out_reset <= reset;
end



Automata_automata0bitwiseS1 automata_automata0bitwiseS1 (.clk(clk),
                     .run(run),
                     .reset(reset),
                     .symbols(top_symbols )
                     
                      , .automata0bitwiseS1_w_out_551(automata0bitwiseS1_w_out_551)
                      , .automata0bitwiseS1_w_out_553(automata0bitwiseS1_w_out_553)
                      , .automata0bitwiseS1_w_out_554(automata0bitwiseS1_w_out_554)
                      , .automata0bitwiseS1_w_out_555(automata0bitwiseS1_w_out_555)
                      , .automata0bitwiseS1_w_out_556(automata0bitwiseS1_w_out_556)
                      , .automata0bitwiseS1_w_out_558(automata0bitwiseS1_w_out_558)
                      , .automata0bitwiseS1_w_out_559(automata0bitwiseS1_w_out_559)
                      , .automata0bitwiseS1_w_out_560(automata0bitwiseS1_w_out_560)
                      , .automata0bitwiseS1_w_out_592(automata0bitwiseS1_w_out_592)
                      , .automata0bitwiseS1_w_out_640(automata0bitwiseS1_w_out_640)
                      , .automata0bitwiseS1_w_out_643(automata0bitwiseS1_w_out_643)
                      , .automata0bitwiseS1_w_out_644(automata0bitwiseS1_w_out_644)
                      , .automata0bitwiseS1_w_out_645(automata0bitwiseS1_w_out_645)
                      , .automata0bitwiseS1_w_out_667(automata0bitwiseS1_w_out_667)
                      , .automata0bitwiseS1_w_out_672(automata0bitwiseS1_w_out_672)
                      , .automata0bitwiseS1_w_out_681(automata0bitwiseS1_w_out_681)
                      , .automata0bitwiseS1_w_out_683(automata0bitwiseS1_w_out_683)
                    );










 










endmodule





/*
******************** Summary ********************
report for automata0bitwiseS1
Number of nodes = 58
Number of edges = 177
Average edge per node = 0.327683615819
Number of start nodes = 10
Number of report nodes = 17
does have all_input = False
does have special element = False
is Homogenous = True
stride value = 1
Max Fan-in = 15
Max Fan-out = 10
Max value in dim = 255
average number of intervals per STE = 2.44827586207
#######################################################
*/

 



module LUT_Match_automata0bitwiseS1_551 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_553 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_554 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_555 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd42) &&(input_capture[7:0] <= 8'd42) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_556 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd82) &&(input_capture[7:0] <= 8'd82) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_558 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd82) &&(input_capture[7:0] <= 8'd82) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_559 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd79) &&(input_capture[7:0] <= 8'd79) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_560 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd81) && 1'b1) ||
     ((input_capture[7:0] >= 8'd83) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_592 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd82) &&(input_capture[7:0] <= 8'd82) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_640 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_643 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_644 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd84) &&(input_capture[7:0] <= 8'd84) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_645 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd42) &&(input_capture[7:0] <= 8'd42) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd53) && 1'b1) ||
     ((input_capture[7:0] >= 8'd55) &&(input_capture[7:0] <= 8'd55) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd97) && 1'b1) ||
     ((input_capture[7:0] >= 8'd113) &&(input_capture[7:0] <= 8'd115) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_667 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd82) &&(input_capture[7:0] <= 8'd82) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_672 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd43) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd54) &&(input_capture[7:0] <= 8'd54) && 1'b1) ||
     ((input_capture[7:0] >= 8'd56) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd98) &&(input_capture[7:0] <= 8'd98) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_681 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd46) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_683 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_689 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd43) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_690 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd69) &&(input_capture[7:0] <= 8'd69) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_691 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_722 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd73) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_768 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_801 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd73) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_832 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd72) && 1'b1) ||
     ((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_839 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd69) &&(input_capture[7:0] <= 8'd69) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_840 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd0) &&(input_capture[7:0] <= 8'd255) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_842 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_843 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd81) && 1'b1) ||
     ((input_capture[7:0] >= 8'd83) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_860 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd82) &&(input_capture[7:0] <= 8'd82) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_916 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd84) &&(input_capture[7:0] <= 8'd84) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_917 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd105) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_918 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd105) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_919 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd105) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_920 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd73) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_921 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_922 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd67) &&(input_capture[7:0] <= 8'd67) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_923 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_924 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_925 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_926 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_928 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
     ((input_capture[7:0] >= 8'd75) &&(input_capture[7:0] <= 8'd83) && 1'b1) ||
     ((input_capture[7:0] >= 8'd85) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd103) && 1'b1) ||
     ((input_capture[7:0] >= 8'd106) &&(input_capture[7:0] <= 8'd115) && 1'b1) ||
     ((input_capture[7:0] >= 8'd117) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_934 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd105) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_936 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd84) &&(input_capture[7:0] <= 8'd84) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_962 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_967 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_974 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
     ((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1001 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1002 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd65) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1004 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1005 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1007 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1018 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd105) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1024 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd43) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd46) && 1'b1) ||
     ((input_capture[7:0] >= 8'd48) &&(input_capture[7:0] <= 8'd57) && 1'b1) ||
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd66) && 1'b1) ||
     ((input_capture[7:0] >= 8'd68) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
     ((input_capture[7:0] >= 8'd75) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd103) && 1'b1) ||
     ((input_capture[7:0] >= 8'd106) &&(input_capture[7:0] <= 8'd115) && 1'b1) ||
     ((input_capture[7:0] >= 8'd117) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1027 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd74) &&(input_capture[7:0] <= 8'd74) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1042 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd63) &&(input_capture[7:0] <= 8'd63) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1056 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd67) &&(input_capture[7:0] <= 8'd67) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1063 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd104) &&(input_capture[7:0] <= 8'd104) && 1'b1) ||
     ((input_capture[7:0] >= 8'd116) &&(input_capture[7:0] <= 8'd116) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_1088 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd10) &&(input_capture[7:0] <= 8'd10) && 1'b1) ||
     ((input_capture[7:0] >= 8'd32) &&(input_capture[7:0] <= 8'd32) && 1'b1) ||
     ((input_capture[7:0] >= 8'd40) &&(input_capture[7:0] <= 8'd41) && 1'b1) ||
     ((input_capture[7:0] >= 8'd45) &&(input_capture[7:0] <= 8'd45) && 1'b1) ||
     ((input_capture[7:0] >= 8'd66) &&(input_capture[7:0] <= 8'd73) && 1'b1) ||
     ((input_capture[7:0] >= 8'd75) &&(input_capture[7:0] <= 8'd81) && 1'b1) ||
     ((input_capture[7:0] >= 8'd83) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd99) &&(input_capture[7:0] <= 8'd103) && 1'b1) ||
     ((input_capture[7:0] >= 8'd105) &&(input_capture[7:0] <= 8'd112) && 1'b1) ||
     ((input_capture[7:0] >= 8'd117) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule



module Automata_automata0bitwiseS1(input clk,
           input run,
           input reset,
           input [7 : 0] symbols
           
           , output automata0bitwiseS1_w_out_551
           , output automata0bitwiseS1_w_out_553
           , output automata0bitwiseS1_w_out_554
           , output automata0bitwiseS1_w_out_555
           , output automata0bitwiseS1_w_out_556
           , output automata0bitwiseS1_w_out_558
           , output automata0bitwiseS1_w_out_559
           , output automata0bitwiseS1_w_out_560
           , output automata0bitwiseS1_w_out_592
           , output automata0bitwiseS1_w_out_640
           , output automata0bitwiseS1_w_out_643
           , output automata0bitwiseS1_w_out_644
           , output automata0bitwiseS1_w_out_645
           , output automata0bitwiseS1_w_out_667
           , output automata0bitwiseS1_w_out_672
           , output automata0bitwiseS1_w_out_681
           , output automata0bitwiseS1_w_out_683);

wire all_input;
wire start_of_data;

assign all_input = 1'b1;
assign start_of_data = ~reset;

wire automata0bitwiseS1_lut_match_551;
wire automata0bitwiseS1_w_match_551;

    
    
    

LUT_Match_automata0bitwiseS1_551 #(8) lut_match_automata0bitwiseS1_551(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_551));


assign automata0bitwiseS1_w_match_551 = automata0bitwiseS1_lut_match_551 ;

STE #(2) automata0bitwiseS1_ste_551 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_553, automata0bitwiseS1_w_out_551 }),
                .match(automata0bitwiseS1_w_match_551) ,
                .active_state(automata0bitwiseS1_w_out_551));
wire automata0bitwiseS1_lut_match_553;
wire automata0bitwiseS1_w_match_553;

    
    
    

LUT_Match_automata0bitwiseS1_553 #(8) lut_match_automata0bitwiseS1_553(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_553));


assign automata0bitwiseS1_w_match_553 = automata0bitwiseS1_lut_match_553 ;

STE #(1) automata0bitwiseS1_ste_553 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_554 }),
                .match(automata0bitwiseS1_w_match_553) ,
                .active_state(automata0bitwiseS1_w_out_553));
wire automata0bitwiseS1_lut_match_554;
wire automata0bitwiseS1_w_match_554;

    
    
    

LUT_Match_automata0bitwiseS1_554 #(8) lut_match_automata0bitwiseS1_554(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_554));


assign automata0bitwiseS1_w_match_554 = automata0bitwiseS1_lut_match_554 ;

STE #(1) automata0bitwiseS1_ste_554 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_683 }),
                .match(automata0bitwiseS1_w_match_554) ,
                .active_state(automata0bitwiseS1_w_out_554));
wire automata0bitwiseS1_lut_match_555;
wire automata0bitwiseS1_w_match_555;

    
    
    

LUT_Match_automata0bitwiseS1_555 #(8) lut_match_automata0bitwiseS1_555(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_555));


assign automata0bitwiseS1_w_match_555 = automata0bitwiseS1_lut_match_555 ;

STE #(1) automata0bitwiseS1_ste_555 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_689 }),
                .match(automata0bitwiseS1_w_match_555) ,
                .active_state(automata0bitwiseS1_w_out_555));
wire automata0bitwiseS1_lut_match_556;
wire automata0bitwiseS1_w_match_556;

    
    
    

LUT_Match_automata0bitwiseS1_556 #(8) lut_match_automata0bitwiseS1_556(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_556));


assign automata0bitwiseS1_w_match_556 = automata0bitwiseS1_lut_match_556 ;

STE #(2) automata0bitwiseS1_ste_556 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_556, automata0bitwiseS1_w_out_558 }),
                .match(automata0bitwiseS1_w_match_556) ,
                .active_state(automata0bitwiseS1_w_out_556));
wire automata0bitwiseS1_lut_match_558;
wire automata0bitwiseS1_w_match_558;

    
    
    

LUT_Match_automata0bitwiseS1_558 #(8) lut_match_automata0bitwiseS1_558(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_558));


assign automata0bitwiseS1_w_match_558 = automata0bitwiseS1_lut_match_558 ;

STE #(1) automata0bitwiseS1_ste_558 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_592 }),
                .match(automata0bitwiseS1_w_match_558) ,
                .active_state(automata0bitwiseS1_w_out_558));
wire automata0bitwiseS1_lut_match_559;
wire automata0bitwiseS1_w_match_559;

    
    
    

LUT_Match_automata0bitwiseS1_559 #(8) lut_match_automata0bitwiseS1_559(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_559));


assign automata0bitwiseS1_w_match_559 = automata0bitwiseS1_lut_match_559 ;

STE #(1) automata0bitwiseS1_ste_559 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_690 }),
                .match(automata0bitwiseS1_w_match_559) ,
                .active_state(automata0bitwiseS1_w_out_559));
wire automata0bitwiseS1_lut_match_560;
wire automata0bitwiseS1_w_match_560;

    
    
    

LUT_Match_automata0bitwiseS1_560 #(8) lut_match_automata0bitwiseS1_560(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_560));


assign automata0bitwiseS1_w_match_560 = automata0bitwiseS1_lut_match_560 ;

STE #(1) automata0bitwiseS1_ste_560 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_667 }),
                .match(automata0bitwiseS1_w_match_560) ,
                .active_state(automata0bitwiseS1_w_out_560));
wire automata0bitwiseS1_lut_match_592;
wire automata0bitwiseS1_w_match_592;

    
    
    

LUT_Match_automata0bitwiseS1_592 #(8) lut_match_automata0bitwiseS1_592(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_592));


assign automata0bitwiseS1_w_match_592 = automata0bitwiseS1_lut_match_592 ;

STE #(1) automata0bitwiseS1_ste_592 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_667 }),
                .match(automata0bitwiseS1_w_match_592) ,
                .active_state(automata0bitwiseS1_w_out_592));
wire automata0bitwiseS1_lut_match_640;
wire automata0bitwiseS1_w_match_640;

    
    
    

LUT_Match_automata0bitwiseS1_640 #(8) lut_match_automata0bitwiseS1_640(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_640));


assign automata0bitwiseS1_w_match_640 = automata0bitwiseS1_lut_match_640 ;

STE #(1) automata0bitwiseS1_ste_640 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_691 }),
                .match(automata0bitwiseS1_w_match_640) ,
                .active_state(automata0bitwiseS1_w_out_640));
wire automata0bitwiseS1_lut_match_643;
wire automata0bitwiseS1_w_match_643;

    
    
    

LUT_Match_automata0bitwiseS1_643 #(8) lut_match_automata0bitwiseS1_643(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_643));


assign automata0bitwiseS1_w_match_643 = automata0bitwiseS1_lut_match_643 ;

STE #(4) automata0bitwiseS1_ste_643 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_722, automata0bitwiseS1_w_out_768, automata0bitwiseS1_w_out_801, automata0bitwiseS1_w_out_832 }),
                .match(automata0bitwiseS1_w_match_643) ,
                .active_state(automata0bitwiseS1_w_out_643));
wire automata0bitwiseS1_lut_match_644;
wire automata0bitwiseS1_w_match_644;

    
    
    

LUT_Match_automata0bitwiseS1_644 #(8) lut_match_automata0bitwiseS1_644(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_644));


assign automata0bitwiseS1_w_match_644 = automata0bitwiseS1_lut_match_644 ;

STE #(1) automata0bitwiseS1_ste_644 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_839 }),
                .match(automata0bitwiseS1_w_match_644) ,
                .active_state(automata0bitwiseS1_w_out_644));
wire automata0bitwiseS1_lut_match_645;
wire automata0bitwiseS1_w_match_645;

    
    
    
            

LUT_Match_automata0bitwiseS1_645 #(8) lut_match_automata0bitwiseS1_645(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_645));


assign automata0bitwiseS1_w_match_645 = automata0bitwiseS1_lut_match_645 ;

STE #(2) automata0bitwiseS1_ste_645 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_645) ,
                .active_state(automata0bitwiseS1_w_out_645));
wire automata0bitwiseS1_lut_match_667;
wire automata0bitwiseS1_w_match_667;

    
    
    
            

LUT_Match_automata0bitwiseS1_667 #(8) lut_match_automata0bitwiseS1_667(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_667));


assign automata0bitwiseS1_w_match_667 = automata0bitwiseS1_lut_match_667 ;

STE #(2) automata0bitwiseS1_ste_667 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_667) ,
                .active_state(automata0bitwiseS1_w_out_667));
wire automata0bitwiseS1_lut_match_672;
wire automata0bitwiseS1_w_match_672;

    
    
    
            

LUT_Match_automata0bitwiseS1_672 #(8) lut_match_automata0bitwiseS1_672(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_672));


assign automata0bitwiseS1_w_match_672 = automata0bitwiseS1_lut_match_672 ;

STE #(2) automata0bitwiseS1_ste_672 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_672) ,
                .active_state(automata0bitwiseS1_w_out_672));
wire automata0bitwiseS1_lut_match_681;
wire automata0bitwiseS1_w_match_681;

    
    
    
            

LUT_Match_automata0bitwiseS1_681 #(8) lut_match_automata0bitwiseS1_681(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_681));


assign automata0bitwiseS1_w_match_681 = automata0bitwiseS1_lut_match_681 ;

STE #(2) automata0bitwiseS1_ste_681 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_681) ,
                .active_state(automata0bitwiseS1_w_out_681));
wire automata0bitwiseS1_lut_match_683;
wire automata0bitwiseS1_w_match_683;

    
    
    
            

LUT_Match_automata0bitwiseS1_683 #(8) lut_match_automata0bitwiseS1_683(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_683));


assign automata0bitwiseS1_w_match_683 = automata0bitwiseS1_lut_match_683 ;

STE #(2) automata0bitwiseS1_ste_683 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_683) ,
                .active_state(automata0bitwiseS1_w_out_683));
wire automata0bitwiseS1_w_out_689;
wire automata0bitwiseS1_lut_match_689;
wire automata0bitwiseS1_w_match_689;

    
    
    

LUT_Match_automata0bitwiseS1_689 #(8) lut_match_automata0bitwiseS1_689(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_689));


assign automata0bitwiseS1_w_match_689 = automata0bitwiseS1_lut_match_689 ;

STE #(1) automata0bitwiseS1_ste_689 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_842 }),
                .match(automata0bitwiseS1_w_match_689) ,
                .active_state(automata0bitwiseS1_w_out_689));
wire automata0bitwiseS1_w_out_690;
wire automata0bitwiseS1_lut_match_690;
wire automata0bitwiseS1_w_match_690;

    
    
    

LUT_Match_automata0bitwiseS1_690 #(8) lut_match_automata0bitwiseS1_690(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_690));


assign automata0bitwiseS1_w_match_690 = automata0bitwiseS1_lut_match_690 ;

STE #(3) automata0bitwiseS1_ste_690 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_558, automata0bitwiseS1_w_out_843, automata0bitwiseS1_w_out_860 }),
                .match(automata0bitwiseS1_w_match_690) ,
                .active_state(automata0bitwiseS1_w_out_690));
wire automata0bitwiseS1_w_out_691;
wire automata0bitwiseS1_lut_match_691;
wire automata0bitwiseS1_w_match_691;

    
    
    

LUT_Match_automata0bitwiseS1_691 #(8) lut_match_automata0bitwiseS1_691(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_691));


assign automata0bitwiseS1_w_match_691 = automata0bitwiseS1_lut_match_691 ;

STE #(1) automata0bitwiseS1_ste_691 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_916 }),
                .match(automata0bitwiseS1_w_match_691) ,
                .active_state(automata0bitwiseS1_w_out_691));
wire automata0bitwiseS1_w_out_722;
wire automata0bitwiseS1_lut_match_722;
wire automata0bitwiseS1_w_match_722;

    
    
    

LUT_Match_automata0bitwiseS1_722 #(8) lut_match_automata0bitwiseS1_722(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_722));


assign automata0bitwiseS1_w_match_722 = automata0bitwiseS1_lut_match_722 ;

STE #(1) automata0bitwiseS1_ste_722 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_918 }),
                .match(automata0bitwiseS1_w_match_722) ,
                .active_state(automata0bitwiseS1_w_out_722));
wire automata0bitwiseS1_w_out_768;
wire automata0bitwiseS1_lut_match_768;
wire automata0bitwiseS1_w_match_768;

    
    
    

LUT_Match_automata0bitwiseS1_768 #(8) lut_match_automata0bitwiseS1_768(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_768));


assign automata0bitwiseS1_w_match_768 = automata0bitwiseS1_lut_match_768 ;

STE #(1) automata0bitwiseS1_ste_768 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_919 }),
                .match(automata0bitwiseS1_w_match_768) ,
                .active_state(automata0bitwiseS1_w_out_768));
wire automata0bitwiseS1_w_out_801;
wire automata0bitwiseS1_lut_match_801;
wire automata0bitwiseS1_w_match_801;

    
    
    

LUT_Match_automata0bitwiseS1_801 #(8) lut_match_automata0bitwiseS1_801(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_801));


assign automata0bitwiseS1_w_match_801 = automata0bitwiseS1_lut_match_801 ;

STE #(1) automata0bitwiseS1_ste_801 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_917 }),
                .match(automata0bitwiseS1_w_match_801) ,
                .active_state(automata0bitwiseS1_w_out_801));
wire automata0bitwiseS1_w_out_832;
wire automata0bitwiseS1_lut_match_832;
wire automata0bitwiseS1_w_match_832;

    
    
    

LUT_Match_automata0bitwiseS1_832 #(8) lut_match_automata0bitwiseS1_832(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_832));


assign automata0bitwiseS1_w_match_832 = automata0bitwiseS1_lut_match_832 ;

STE #(2) automata0bitwiseS1_ste_832 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_917, automata0bitwiseS1_w_out_918 }),
                .match(automata0bitwiseS1_w_match_832) ,
                .active_state(automata0bitwiseS1_w_out_832));
wire automata0bitwiseS1_w_out_839;
wire automata0bitwiseS1_lut_match_839;
wire automata0bitwiseS1_w_match_839;

    
    
    

LUT_Match_automata0bitwiseS1_839 #(8) lut_match_automata0bitwiseS1_839(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_839));


assign automata0bitwiseS1_w_match_839 = automata0bitwiseS1_lut_match_839 ;

STE #(2) automata0bitwiseS1_ste_839 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_920, automata0bitwiseS1_w_out_722 }),
                .match(automata0bitwiseS1_w_match_839) ,
                .active_state(automata0bitwiseS1_w_out_839));
wire automata0bitwiseS1_w_out_840;
wire automata0bitwiseS1_lut_match_840;
wire automata0bitwiseS1_w_match_840;

    
    
    
            

LUT_Match_automata0bitwiseS1_840 #(8) lut_match_automata0bitwiseS1_840(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_840));


assign automata0bitwiseS1_w_match_840 = automata0bitwiseS1_lut_match_840 ;

STE #(2) automata0bitwiseS1_ste_840 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_840) ,
                .active_state(automata0bitwiseS1_w_out_840));
wire automata0bitwiseS1_w_out_842;
wire automata0bitwiseS1_lut_match_842;
wire automata0bitwiseS1_w_match_842;

    
    
    

LUT_Match_automata0bitwiseS1_842 #(8) lut_match_automata0bitwiseS1_842(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_842));


assign automata0bitwiseS1_w_match_842 = automata0bitwiseS1_lut_match_842 ;

STE #(1) automata0bitwiseS1_ste_842 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_921 }),
                .match(automata0bitwiseS1_w_match_842) ,
                .active_state(automata0bitwiseS1_w_out_842));
wire automata0bitwiseS1_w_out_843;
wire automata0bitwiseS1_lut_match_843;
wire automata0bitwiseS1_w_match_843;

    
    
    

LUT_Match_automata0bitwiseS1_843 #(8) lut_match_automata0bitwiseS1_843(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_843));


assign automata0bitwiseS1_w_match_843 = automata0bitwiseS1_lut_match_843 ;

STE #(2) automata0bitwiseS1_ste_843 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_560, automata0bitwiseS1_w_out_592 }),
                .match(automata0bitwiseS1_w_match_843) ,
                .active_state(automata0bitwiseS1_w_out_843));
wire automata0bitwiseS1_w_out_860;
wire automata0bitwiseS1_lut_match_860;
wire automata0bitwiseS1_w_match_860;

    
    
    

LUT_Match_automata0bitwiseS1_860 #(8) lut_match_automata0bitwiseS1_860(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_860));


assign automata0bitwiseS1_w_match_860 = automata0bitwiseS1_lut_match_860 ;

STE #(1) automata0bitwiseS1_ste_860 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_560 }),
                .match(automata0bitwiseS1_w_match_860) ,
                .active_state(automata0bitwiseS1_w_out_860));
wire automata0bitwiseS1_w_out_916;
wire automata0bitwiseS1_lut_match_916;
wire automata0bitwiseS1_w_match_916;

    
    
    

LUT_Match_automata0bitwiseS1_916 #(8) lut_match_automata0bitwiseS1_916(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_916));


assign automata0bitwiseS1_w_match_916 = automata0bitwiseS1_lut_match_916 ;

STE #(1) automata0bitwiseS1_ste_916 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_922 }),
                .match(automata0bitwiseS1_w_match_916) ,
                .active_state(automata0bitwiseS1_w_out_916));
wire automata0bitwiseS1_w_out_917;
wire automata0bitwiseS1_lut_match_917;
wire automata0bitwiseS1_w_match_917;

    
    
    

LUT_Match_automata0bitwiseS1_917 #(8) lut_match_automata0bitwiseS1_917(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_917));


assign automata0bitwiseS1_w_match_917 = automata0bitwiseS1_lut_match_917 ;

STE #(2) automata0bitwiseS1_ste_917 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_924, automata0bitwiseS1_w_out_923 }),
                .match(automata0bitwiseS1_w_match_917) ,
                .active_state(automata0bitwiseS1_w_out_917));
wire automata0bitwiseS1_w_out_918;
wire automata0bitwiseS1_lut_match_918;
wire automata0bitwiseS1_w_match_918;

    
    
    

LUT_Match_automata0bitwiseS1_918 #(8) lut_match_automata0bitwiseS1_918(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_918));


assign automata0bitwiseS1_w_match_918 = automata0bitwiseS1_lut_match_918 ;

STE #(1) automata0bitwiseS1_ste_918 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_925 }),
                .match(automata0bitwiseS1_w_match_918) ,
                .active_state(automata0bitwiseS1_w_out_918));
wire automata0bitwiseS1_w_out_919;
wire automata0bitwiseS1_lut_match_919;
wire automata0bitwiseS1_w_match_919;

    
    
    

LUT_Match_automata0bitwiseS1_919 #(8) lut_match_automata0bitwiseS1_919(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_919));


assign automata0bitwiseS1_w_match_919 = automata0bitwiseS1_lut_match_919 ;

STE #(1) automata0bitwiseS1_ste_919 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_926 }),
                .match(automata0bitwiseS1_w_match_919) ,
                .active_state(automata0bitwiseS1_w_out_919));
wire automata0bitwiseS1_w_out_920;
wire automata0bitwiseS1_lut_match_920;
wire automata0bitwiseS1_w_match_920;

    
    
    

LUT_Match_automata0bitwiseS1_920 #(8) lut_match_automata0bitwiseS1_920(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_920));


assign automata0bitwiseS1_w_match_920 = automata0bitwiseS1_lut_match_920 ;

STE #(15) automata0bitwiseS1_ste_920 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_553, automata0bitwiseS1_w_out_558, automata0bitwiseS1_w_out_768, automata0bitwiseS1_w_out_1001, automata0bitwiseS1_w_out_842, automata0bitwiseS1_w_out_843, automata0bitwiseS1_w_out_860, automata0bitwiseS1_w_out_916, automata0bitwiseS1_w_out_923, automata0bitwiseS1_w_out_928, automata0bitwiseS1_w_out_934, automata0bitwiseS1_w_out_936, automata0bitwiseS1_w_out_962, automata0bitwiseS1_w_out_967, automata0bitwiseS1_w_out_974 }),
                .match(automata0bitwiseS1_w_match_920) ,
                .active_state(automata0bitwiseS1_w_out_920));
wire automata0bitwiseS1_w_out_921;
wire automata0bitwiseS1_lut_match_921;
wire automata0bitwiseS1_w_match_921;

    
    
    

LUT_Match_automata0bitwiseS1_921 #(8) lut_match_automata0bitwiseS1_921(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_921));


assign automata0bitwiseS1_w_match_921 = automata0bitwiseS1_lut_match_921 ;

STE #(1) automata0bitwiseS1_ste_921 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_681 }),
                .match(automata0bitwiseS1_w_match_921) ,
                .active_state(automata0bitwiseS1_w_out_921));
wire automata0bitwiseS1_w_out_922;
wire automata0bitwiseS1_lut_match_922;
wire automata0bitwiseS1_w_match_922;

    
    
    

LUT_Match_automata0bitwiseS1_922 #(8) lut_match_automata0bitwiseS1_922(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_922));


assign automata0bitwiseS1_w_match_922 = automata0bitwiseS1_lut_match_922 ;

STE #(1) automata0bitwiseS1_ste_922 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1002 }),
                .match(automata0bitwiseS1_w_match_922) ,
                .active_state(automata0bitwiseS1_w_out_922));
wire automata0bitwiseS1_w_out_923;
wire automata0bitwiseS1_lut_match_923;
wire automata0bitwiseS1_w_match_923;

    
    
    

LUT_Match_automata0bitwiseS1_923 #(8) lut_match_automata0bitwiseS1_923(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_923));


assign automata0bitwiseS1_w_match_923 = automata0bitwiseS1_lut_match_923 ;

STE #(1) automata0bitwiseS1_ste_923 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1004 }),
                .match(automata0bitwiseS1_w_match_923) ,
                .active_state(automata0bitwiseS1_w_out_923));
wire automata0bitwiseS1_w_out_924;
wire automata0bitwiseS1_lut_match_924;
wire automata0bitwiseS1_w_match_924;

    
    
    

LUT_Match_automata0bitwiseS1_924 #(8) lut_match_automata0bitwiseS1_924(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_924));


assign automata0bitwiseS1_w_match_924 = automata0bitwiseS1_lut_match_924 ;

STE #(2) automata0bitwiseS1_ste_924 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1005, automata0bitwiseS1_w_out_1001 }),
                .match(automata0bitwiseS1_w_match_924) ,
                .active_state(automata0bitwiseS1_w_out_924));
wire automata0bitwiseS1_w_out_925;
wire automata0bitwiseS1_lut_match_925;
wire automata0bitwiseS1_w_match_925;

    
    
    

LUT_Match_automata0bitwiseS1_925 #(8) lut_match_automata0bitwiseS1_925(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_925));


assign automata0bitwiseS1_w_match_925 = automata0bitwiseS1_lut_match_925 ;

STE #(1) automata0bitwiseS1_ste_925 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_925) ,
                .active_state(automata0bitwiseS1_w_out_925));
wire automata0bitwiseS1_w_out_926;
wire automata0bitwiseS1_lut_match_926;
wire automata0bitwiseS1_w_match_926;

    
    
    
            

LUT_Match_automata0bitwiseS1_926 #(8) lut_match_automata0bitwiseS1_926(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_926));


assign automata0bitwiseS1_w_match_926 = automata0bitwiseS1_lut_match_926 ;

STE #(2) automata0bitwiseS1_ste_926 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_926) ,
                .active_state(automata0bitwiseS1_w_out_926));
wire automata0bitwiseS1_w_out_928;
wire automata0bitwiseS1_lut_match_928;
wire automata0bitwiseS1_w_match_928;

    
    
    

LUT_Match_automata0bitwiseS1_928 #(8) lut_match_automata0bitwiseS1_928(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_928));


assign automata0bitwiseS1_w_match_928 = automata0bitwiseS1_lut_match_928 ;

STE #(11) automata0bitwiseS1_ste_928 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_554, automata0bitwiseS1_w_out_921, automata0bitwiseS1_w_out_922, automata0bitwiseS1_w_out_925, automata0bitwiseS1_w_out_1004, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_928) ,
                .active_state(automata0bitwiseS1_w_out_928));
wire automata0bitwiseS1_w_out_934;
wire automata0bitwiseS1_lut_match_934;
wire automata0bitwiseS1_w_match_934;

    
    
    

LUT_Match_automata0bitwiseS1_934 #(8) lut_match_automata0bitwiseS1_934(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_934));


assign automata0bitwiseS1_w_match_934 = automata0bitwiseS1_lut_match_934 ;

STE #(10) automata0bitwiseS1_ste_934 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_554, automata0bitwiseS1_w_out_921, automata0bitwiseS1_w_out_922, automata0bitwiseS1_w_out_1004, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_934) ,
                .active_state(automata0bitwiseS1_w_out_934));
wire automata0bitwiseS1_w_out_936;
wire automata0bitwiseS1_lut_match_936;
wire automata0bitwiseS1_w_match_936;

    
    
    

LUT_Match_automata0bitwiseS1_936 #(8) lut_match_automata0bitwiseS1_936(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_936));


assign automata0bitwiseS1_w_match_936 = automata0bitwiseS1_lut_match_936 ;

STE #(10) automata0bitwiseS1_ste_936 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_554, automata0bitwiseS1_w_out_921, automata0bitwiseS1_w_out_925, automata0bitwiseS1_w_out_1004, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_936) ,
                .active_state(automata0bitwiseS1_w_out_936));
wire automata0bitwiseS1_w_out_962;
wire automata0bitwiseS1_lut_match_962;
wire automata0bitwiseS1_w_match_962;

    
    
    

LUT_Match_automata0bitwiseS1_962 #(8) lut_match_automata0bitwiseS1_962(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_962));


assign automata0bitwiseS1_w_match_962 = automata0bitwiseS1_lut_match_962 ;

STE #(10) automata0bitwiseS1_ste_962 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_554, automata0bitwiseS1_w_out_922, automata0bitwiseS1_w_out_925, automata0bitwiseS1_w_out_1004, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_962) ,
                .active_state(automata0bitwiseS1_w_out_962));
wire automata0bitwiseS1_w_out_967;
wire automata0bitwiseS1_lut_match_967;
wire automata0bitwiseS1_w_match_967;

    
    
    

LUT_Match_automata0bitwiseS1_967 #(8) lut_match_automata0bitwiseS1_967(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_967));


assign automata0bitwiseS1_w_match_967 = automata0bitwiseS1_lut_match_967 ;

STE #(10) automata0bitwiseS1_ste_967 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_921, automata0bitwiseS1_w_out_922, automata0bitwiseS1_w_out_925, automata0bitwiseS1_w_out_1004, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_967) ,
                .active_state(automata0bitwiseS1_w_out_967));
wire automata0bitwiseS1_w_out_974;
wire automata0bitwiseS1_lut_match_974;
wire automata0bitwiseS1_w_match_974;

    
    
    

LUT_Match_automata0bitwiseS1_974 #(8) lut_match_automata0bitwiseS1_974(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_974));


assign automata0bitwiseS1_w_match_974 = automata0bitwiseS1_lut_match_974 ;

STE #(10) automata0bitwiseS1_ste_974 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1024, automata0bitwiseS1_w_out_1027, automata0bitwiseS1_w_out_1042, automata0bitwiseS1_w_out_1056, automata0bitwiseS1_w_out_1063, automata0bitwiseS1_w_out_554, automata0bitwiseS1_w_out_921, automata0bitwiseS1_w_out_922, automata0bitwiseS1_w_out_925, automata0bitwiseS1_w_out_1018 }),
                .match(automata0bitwiseS1_w_match_974) ,
                .active_state(automata0bitwiseS1_w_out_974));
wire automata0bitwiseS1_w_out_1001;
wire automata0bitwiseS1_lut_match_1001;
wire automata0bitwiseS1_w_match_1001;

    
    
    

LUT_Match_automata0bitwiseS1_1001 #(8) lut_match_automata0bitwiseS1_1001(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1001));


assign automata0bitwiseS1_w_match_1001 = automata0bitwiseS1_lut_match_1001 ;

STE #(1) automata0bitwiseS1_ste_1001 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1004 }),
                .match(automata0bitwiseS1_w_match_1001) ,
                .active_state(automata0bitwiseS1_w_out_1001));
wire automata0bitwiseS1_w_out_1002;
wire automata0bitwiseS1_lut_match_1002;
wire automata0bitwiseS1_w_match_1002;

    
    
    
            

LUT_Match_automata0bitwiseS1_1002 #(8) lut_match_automata0bitwiseS1_1002(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1002));


assign automata0bitwiseS1_w_match_1002 = automata0bitwiseS1_lut_match_1002 ;

STE #(2) automata0bitwiseS1_ste_1002 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_1002) ,
                .active_state(automata0bitwiseS1_w_out_1002));
wire automata0bitwiseS1_w_out_1004;
wire automata0bitwiseS1_lut_match_1004;
wire automata0bitwiseS1_w_match_1004;

    
    
    

LUT_Match_automata0bitwiseS1_1004 #(8) lut_match_automata0bitwiseS1_1004(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1004));


assign automata0bitwiseS1_w_match_1004 = automata0bitwiseS1_lut_match_1004 ;

STE #(1) automata0bitwiseS1_ste_1004 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1004) ,
                .active_state(automata0bitwiseS1_w_out_1004));
wire automata0bitwiseS1_w_out_1005;
wire automata0bitwiseS1_lut_match_1005;
wire automata0bitwiseS1_w_match_1005;

    
    
    

LUT_Match_automata0bitwiseS1_1005 #(8) lut_match_automata0bitwiseS1_1005(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1005));


assign automata0bitwiseS1_w_match_1005 = automata0bitwiseS1_lut_match_1005 ;

STE #(2) automata0bitwiseS1_ste_1005 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1001, automata0bitwiseS1_w_out_1005 }),
                .match(automata0bitwiseS1_w_match_1005) ,
                .active_state(automata0bitwiseS1_w_out_1005));
wire automata0bitwiseS1_w_out_1007;
wire automata0bitwiseS1_lut_match_1007;
wire automata0bitwiseS1_w_match_1007;

    
    
    
            

LUT_Match_automata0bitwiseS1_1007 #(8) lut_match_automata0bitwiseS1_1007(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1007));


assign automata0bitwiseS1_w_match_1007 = automata0bitwiseS1_lut_match_1007 ;

STE #(2) automata0bitwiseS1_ste_1007 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_1007) ,
                .active_state(automata0bitwiseS1_w_out_1007));
wire automata0bitwiseS1_w_out_1018;
wire automata0bitwiseS1_lut_match_1018;
wire automata0bitwiseS1_w_match_1018;

    
    
    

LUT_Match_automata0bitwiseS1_1018 #(8) lut_match_automata0bitwiseS1_1018(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1018));


assign automata0bitwiseS1_w_match_1018 = automata0bitwiseS1_lut_match_1018 ;

STE #(7) automata0bitwiseS1_ste_1018 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_681, automata0bitwiseS1_w_out_683, automata0bitwiseS1_w_out_1002, automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1018) ,
                .active_state(automata0bitwiseS1_w_out_1018));
wire automata0bitwiseS1_w_out_1024;
wire automata0bitwiseS1_lut_match_1024;
wire automata0bitwiseS1_w_match_1024;

    
    
    

LUT_Match_automata0bitwiseS1_1024 #(8) lut_match_automata0bitwiseS1_1024(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1024));


assign automata0bitwiseS1_w_match_1024 = automata0bitwiseS1_lut_match_1024 ;

STE #(8) automata0bitwiseS1_ste_1024 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_681, automata0bitwiseS1_w_out_683, automata0bitwiseS1_w_out_926, automata0bitwiseS1_w_out_1002, automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1024) ,
                .active_state(automata0bitwiseS1_w_out_1024));
wire automata0bitwiseS1_w_out_1027;
wire automata0bitwiseS1_lut_match_1027;
wire automata0bitwiseS1_w_match_1027;

    
    
    

LUT_Match_automata0bitwiseS1_1027 #(8) lut_match_automata0bitwiseS1_1027(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1027));


assign automata0bitwiseS1_w_match_1027 = automata0bitwiseS1_lut_match_1027 ;

STE #(7) automata0bitwiseS1_ste_1027 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_681, automata0bitwiseS1_w_out_926, automata0bitwiseS1_w_out_1002, automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1027) ,
                .active_state(automata0bitwiseS1_w_out_1027));
wire automata0bitwiseS1_w_out_1042;
wire automata0bitwiseS1_lut_match_1042;
wire automata0bitwiseS1_w_match_1042;

    
    
    

LUT_Match_automata0bitwiseS1_1042 #(8) lut_match_automata0bitwiseS1_1042(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1042));


assign automata0bitwiseS1_w_match_1042 = automata0bitwiseS1_lut_match_1042 ;

STE #(7) automata0bitwiseS1_ste_1042 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_683, automata0bitwiseS1_w_out_926, automata0bitwiseS1_w_out_1002, automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1042) ,
                .active_state(automata0bitwiseS1_w_out_1042));
wire automata0bitwiseS1_w_out_1056;
wire automata0bitwiseS1_lut_match_1056;
wire automata0bitwiseS1_w_match_1056;

    
    
    

LUT_Match_automata0bitwiseS1_1056 #(8) lut_match_automata0bitwiseS1_1056(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1056));


assign automata0bitwiseS1_w_match_1056 = automata0bitwiseS1_lut_match_1056 ;

STE #(7) automata0bitwiseS1_ste_1056 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_681, automata0bitwiseS1_w_out_683, automata0bitwiseS1_w_out_926, automata0bitwiseS1_w_out_1007 }),
                .match(automata0bitwiseS1_w_match_1056) ,
                .active_state(automata0bitwiseS1_w_out_1056));
wire automata0bitwiseS1_w_out_1063;
wire automata0bitwiseS1_lut_match_1063;
wire automata0bitwiseS1_w_match_1063;

    
    
    

LUT_Match_automata0bitwiseS1_1063 #(8) lut_match_automata0bitwiseS1_1063(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1063));


assign automata0bitwiseS1_w_match_1063 = automata0bitwiseS1_lut_match_1063 ;

STE #(7) automata0bitwiseS1_ste_1063 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_1088, automata0bitwiseS1_w_out_645, automata0bitwiseS1_w_out_672, automata0bitwiseS1_w_out_681, automata0bitwiseS1_w_out_683, automata0bitwiseS1_w_out_926, automata0bitwiseS1_w_out_1002 }),
                .match(automata0bitwiseS1_w_match_1063) ,
                .active_state(automata0bitwiseS1_w_out_1063));
wire automata0bitwiseS1_w_out_1088;
wire automata0bitwiseS1_lut_match_1088;
wire automata0bitwiseS1_w_match_1088;

    
    
    
            

LUT_Match_automata0bitwiseS1_1088 #(8) lut_match_automata0bitwiseS1_1088(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_1088));


assign automata0bitwiseS1_w_match_1088 = automata0bitwiseS1_lut_match_1088 ;

STE #(2) automata0bitwiseS1_ste_1088 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input, automata0bitwiseS1_w_out_840 }),
                .match(automata0bitwiseS1_w_match_1088) ,
                .active_state(automata0bitwiseS1_w_out_1088));


endmodule



module main(
                  input clock,
                  input reset,
                  input run,
                  input [7 : 0] symbols
                   , output automata0bitwiseS1_w_out_551
                   , output automata0bitwiseS1_w_out_553
                   , output automata0bitwiseS1_w_out_554
                   , output automata0bitwiseS1_w_out_555
                   , output automata0bitwiseS1_w_out_556
                   , output automata0bitwiseS1_w_out_558
                   , output automata0bitwiseS1_w_out_559
                   , output automata0bitwiseS1_w_out_560
                   , output automata0bitwiseS1_w_out_592
                   , output automata0bitwiseS1_w_out_640
                   , output automata0bitwiseS1_w_out_643
                   , output automata0bitwiseS1_w_out_644
                   , output automata0bitwiseS1_w_out_645
                   , output automata0bitwiseS1_w_out_667
                   , output automata0bitwiseS1_w_out_672
                   , output automata0bitwiseS1_w_out_681
                   , output automata0bitwiseS1_w_out_683,
				   
	output HBM_CATTRIP
                  
                  );






Automata_Stage0 automata_stage0(.clk(clock),
                                             .run(run),
                                             .reset(reset),
                                             .top_symbols( symbols ),
                                              .automata0bitwiseS1_w_out_551(automata0bitwiseS1_w_out_551),
                                              .automata0bitwiseS1_w_out_553(automata0bitwiseS1_w_out_553),
                                              .automata0bitwiseS1_w_out_554(automata0bitwiseS1_w_out_554),
                                              .automata0bitwiseS1_w_out_555(automata0bitwiseS1_w_out_555),
                                              .automata0bitwiseS1_w_out_556(automata0bitwiseS1_w_out_556),
                                              .automata0bitwiseS1_w_out_558(automata0bitwiseS1_w_out_558),
                                              .automata0bitwiseS1_w_out_559(automata0bitwiseS1_w_out_559),
                                              .automata0bitwiseS1_w_out_560(automata0bitwiseS1_w_out_560),
                                              .automata0bitwiseS1_w_out_592(automata0bitwiseS1_w_out_592),
                                              .automata0bitwiseS1_w_out_640(automata0bitwiseS1_w_out_640),
                                              .automata0bitwiseS1_w_out_643(automata0bitwiseS1_w_out_643),
                                              .automata0bitwiseS1_w_out_644(automata0bitwiseS1_w_out_644),
                                              .automata0bitwiseS1_w_out_645(automata0bitwiseS1_w_out_645),
                                              .automata0bitwiseS1_w_out_667(automata0bitwiseS1_w_out_667),
                                              .automata0bitwiseS1_w_out_672(automata0bitwiseS1_w_out_672),
                                              .automata0bitwiseS1_w_out_681(automata0bitwiseS1_w_out_681),
                                              .automata0bitwiseS1_w_out_683(automata0bitwiseS1_w_out_683),
                                             
                                             .out_symbols(),
                                             .out_reset()
                                             );



	assign HBM_CATTRIP = 1'b0;
endmodule