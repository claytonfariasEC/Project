module iopads(pclk_i, pDataOrReg, paddress, pinstr_i, preset, pvout_addr, pvalue_o, pis_positive, peaster_egg);
  input pclk_i, pDataOrReg, preset;
  input [4:0] paddress;
  input [7:0] pinstr_i;
  input [1:0] pvout_addr;
  output [7:0] pvalue_o;
  output pis_positive;
  output [2:0] peaster_egg;

  wire clk_i, DataOrReg, reset;
  wire [4:0] address;
  wire [7:0] instr_i;
  wire [1:0] vout_addr;
  wire [7:0] value_o;
  wire is_positive;
  wire [2:0] easter_egg;

  CPU CPU_INST(.clk_i(clk_i), .DataOrReg(DataOrReg), .address(address),	.instr_i(instr_i), .reset(reset), .vout_addr(vout_addr), .value_o(value_o), .is_positive(is_positive), 
 .easter_egg(easter_egg));

  ICP pinst_clk_i(.Y(clk_i), .PAD(pclk_i));
  ICP pinst_address0(.Y(address[0]), .PAD(paddress[0]));
  ICP pinst_address1(.Y(address[1]), .PAD(paddress[1]));
  ICP pinst_address2(.Y(address[2]), .PAD(paddress[2]));
  ICP pinst_address3(.Y(address[3]), .PAD(paddress[3]));
  ICP pinst_address4(.Y(address[4]), .PAD(paddress[4]));
  ICP pinst_vout_addr0(.Y(vout_addr[0]), .PAD(pvout_addr[0]));
  ICP pinst_vout_addr1(.Y(vout_addr[1]), .PAD(pvout_addr[1]));
  ICP pinst_instr_i0(.Y(instr_i[0]), .PAD(pinstr_i[0]));
  ICP pinst_instr_i1(.Y(instr_i[1]), .PAD(pinstr_i[1]));
  ICP pinst_instr_i2(.Y(instr_i[2]), .PAD(pinstr_i[2]));
  ICP pinst_instr_i3(.Y(instr_i[3]), .PAD(pinstr_i[3]));
  ICP pinst_instr_i4(.Y(instr_i[4]), .PAD(pinstr_i[4]));
  ICP pinst_DataOrReg(.Y(DataOrReg), .PAD(pDataOrReg));
  ICP pinst_resetn(.Y(resetn), .PAD(presetn));
  ICP pinst_instr_i7(.Y(instr_i[7]), .PAD(pinstr_i[7]));
  ICP pinst_instr_i5(.Y(instr_i[5]), .PAD(pinstr_i[5]));
  ICP pinst_instr_i6(.Y(instr_i[6]), .PAD(pinstr_i[6]));

  VDDIPADP power_top();
  GNDOPADP ground_top();
  VDDIPADP power_left ();
  GNDOPADP ground_left();
  VDDIPADP power_rigth();
  GNDOPADP ground_right();
  VDDIPADP power_bottom ();
  GNDOPADP ground_bottom();

  BD8P pinst_is_positive(.A(is_positive), .PAD(pis_positive));
  BD8P pinst_easter_egg0(.A(easter_egg[0]), .PAD(peaster_egg[0]));
  BD8P pinst_easter_egg1(.A(easter_egg[1]), .PAD(peaster_egg[1]));
  BD8P pinst_easter_egg2(.A(easter_egg[2]), .PAD(peaster_egg[2]));
  BD8P pinst_value_o0(.A(value_o[0]), .PAD(pvalue_o[0]));
  BD8P pinst_value_o1(.A(value_o[1]), .PAD(pvalue_o[1]));
  BD8P pinst_value_o2(.A(value_o[2]), .PAD(pvalue_o[2]));
  BD8P pinst_value_o3(.A(value_o[3]), .PAD(pvalue_o[3]));
  BD8P pinst_value_o4(.A(value_o[4]), .PAD(pvalue_o[4]));
  BD8P pinst_value_o5(.A(value_o[5]), .PAD(pvalue_o[5]));
  BD8P pinst_value_o6(.A(value_o[6]), .PAD(pvalue_o[6]));
  BD8P pinst_value_o7(.A(value_o[7]), .PAD(pvalue_o[7]));

  CORNERP CornerTR();
  CORNERP CornerTL();
  CORNERP CornerBL();
  CORNERP CornerBR();

endmodule
