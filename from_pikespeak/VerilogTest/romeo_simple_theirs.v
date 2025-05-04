




/*
******************** Summary ********************
report for automata0bitwiseS1
Number of nodes = 6
Number of edges = 8
Average edge per node = 0.75
Number of start nodes = 1
Number of report nodes = 2
does have all_input = True
does have special element = False
is Homogenous = True
stride value = 1
Max Fan-in = 3
Max Fan-out = 2
Max value in dim = 255
average number of intervals per STE = 2.66666666667
#######################################################
*/

 



module LUT_Match_automata0bitwiseS1_129 #(parameter integer width = 8)(
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
     ((input_capture[7:0] >= 8'd65) &&(input_capture[7:0] <= 8'd78) && 1'b1) ||
     ((input_capture[7:0] >= 8'd80) &&(input_capture[7:0] <= 8'd90) && 1'b1) ||
     ((input_capture[7:0] >= 8'd92) &&(input_capture[7:0] <= 8'd92) && 1'b1) ||
     ((input_capture[7:0] >= 8'd97) &&(input_capture[7:0] <= 8'd122) && 1'b1) ||
     ((input_capture[7:0] >= 8'd124) &&(input_capture[7:0] <= 8'd124) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_223 #(parameter integer width = 8)(
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

 



module LUT_Match_automata0bitwiseS1_225 #(parameter integer width = 8)(
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

 



module LUT_Match_automata0bitwiseS1_226 #(parameter integer width = 8)(
        input clk,
        input [width-1:0] symbols,
        output match);

wire match_internal;
wire [width-1:0] input_capture;
assign input_capture = symbols;
assign match = match_internal;

assign match_internal = (((input_capture[7:0] >= 8'd77) &&(input_capture[7:0] <= 8'd77) && 1'b1) ||
      1'b0) ? 1'b1 : 1'b0;


endmodule

 



module LUT_Match_automata0bitwiseS1_227 #(parameter integer width = 8)(
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

 



module LUT_Match_automata0bitwiseS1_228 #(parameter integer width = 8)(
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



module Automata_automata0bitwiseS1(input clk,
           input run,
           input reset,
           input [7 : 0] symbols
           
           , output automata0bitwiseS1_w_out_129
           , output automata0bitwiseS1_w_out_223);

wire all_input;
wire start_of_data;

assign all_input = 1'b1;
assign start_of_data = ~reset;

wire automata0bitwiseS1_lut_match_129;
wire automata0bitwiseS1_w_match_129;

    
    
    

LUT_Match_automata0bitwiseS1_129 #(8) lut_match_automata0bitwiseS1_129(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_129));


assign automata0bitwiseS1_w_match_129 = automata0bitwiseS1_lut_match_129 ;

STE #(2) automata0bitwiseS1_ste_129 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_129, automata0bitwiseS1_w_out_223 }),
                .match(automata0bitwiseS1_w_match_129) ,
                .active_state(automata0bitwiseS1_w_out_129));
wire automata0bitwiseS1_lut_match_223;
wire automata0bitwiseS1_w_match_223;

    
    
    

LUT_Match_automata0bitwiseS1_223 #(8) lut_match_automata0bitwiseS1_223(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_223));


assign automata0bitwiseS1_w_match_223 = automata0bitwiseS1_lut_match_223 ;

STE #(3) automata0bitwiseS1_ste_223 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_129, automata0bitwiseS1_w_out_223, automata0bitwiseS1_w_out_225 }),
                .match(automata0bitwiseS1_w_match_223) ,
                .active_state(automata0bitwiseS1_w_out_223));
wire automata0bitwiseS1_w_out_225;
wire automata0bitwiseS1_lut_match_225;
wire automata0bitwiseS1_w_match_225;

    
    
    

LUT_Match_automata0bitwiseS1_225 #(8) lut_match_automata0bitwiseS1_225(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_225));


assign automata0bitwiseS1_w_match_225 = automata0bitwiseS1_lut_match_225 ;

STE #(1) automata0bitwiseS1_ste_225 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_226 }),
                .match(automata0bitwiseS1_w_match_225) ,
                .active_state(automata0bitwiseS1_w_out_225));
wire automata0bitwiseS1_w_out_226;
wire automata0bitwiseS1_lut_match_226;
wire automata0bitwiseS1_w_match_226;

    
    
    

LUT_Match_automata0bitwiseS1_226 #(8) lut_match_automata0bitwiseS1_226(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_226));


assign automata0bitwiseS1_w_match_226 = automata0bitwiseS1_lut_match_226 ;

STE #(1) automata0bitwiseS1_ste_226 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_227 }),
                .match(automata0bitwiseS1_w_match_226) ,
                .active_state(automata0bitwiseS1_w_out_226));
wire automata0bitwiseS1_w_out_227;
wire automata0bitwiseS1_lut_match_227;
wire automata0bitwiseS1_w_match_227;

    
    
    

LUT_Match_automata0bitwiseS1_227 #(8) lut_match_automata0bitwiseS1_227(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_227));


assign automata0bitwiseS1_w_match_227 = automata0bitwiseS1_lut_match_227 ;

STE #(1) automata0bitwiseS1_ste_227 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ automata0bitwiseS1_w_out_228 }),
                .match(automata0bitwiseS1_w_match_227) ,
                .active_state(automata0bitwiseS1_w_out_227));
wire automata0bitwiseS1_w_out_228;
wire automata0bitwiseS1_lut_match_228;
wire automata0bitwiseS1_w_match_228;

    
    
    
            

LUT_Match_automata0bitwiseS1_228 #(8) lut_match_automata0bitwiseS1_228(
                .clk(clk),
                .symbols(symbols),
                .match(automata0bitwiseS1_lut_match_228));


assign automata0bitwiseS1_w_match_228 = automata0bitwiseS1_lut_match_228 ;

STE #(1) automata0bitwiseS1_ste_228 (
                .clk(clk),
                .run(run),
                .reset(reset),
                .income_edges({ all_input }),
                .match(automata0bitwiseS1_w_match_228) ,
                .active_state(automata0bitwiseS1_w_out_228));


endmodule







/*
******************** Summary {}********************
total nodes = 6
total reports = 2
total edges = 8
average symbols len = 2.66666666667
#######################################################
*/

module Automata_Stage0(input clk,
                    input run,
                    input reset,
                    input [7 : 0] top_symbols
                    , output automata0bitwiseS1_w_out_129
                    , output automata0bitwiseS1_w_out_223
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
                     
                      , .automata0bitwiseS1_w_out_129(automata0bitwiseS1_w_out_129)
                      , .automata0bitwiseS1_w_out_223(automata0bitwiseS1_w_out_223)
                    );










 










endmodule





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



module main(
                  input clock,
                  input reset,
                  input run,
                  input [7 : 0] symbols
                   , output automata0bitwiseS1_w_out_129
                   , output automata0bitwiseS1_w_out_223,
                  	output HBM_CATTRIP
                  );






Automata_Stage0 automata_stage0(.clk(clock),
                                             .run(run),
                                             .reset(reset),
                                             .top_symbols( symbols ),
                                              .automata0bitwiseS1_w_out_129(automata0bitwiseS1_w_out_129),
                                              .automata0bitwiseS1_w_out_223(automata0bitwiseS1_w_out_223),
                                             
                                             .out_symbols(),
                                             .out_reset()
                                             );



assign HBM_CATTRIP = 1'b0;
endmodule