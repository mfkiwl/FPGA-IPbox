///////////////////////////////////////////////////////////////
//
// Generated by Simple CSR Generator
//
// Name: audio_controller_csr.v
// Date: Date: 10/28/2020 - 0:22
//
// Description:
//  CSR module for audio_controller
//
///////////////////////////////////////////////////////////////


module audio_controller_csr
(
  input            clk,
  input            reset,
  input  [4:0]     i_sw_address,
  input            i_sw_read,
  input            i_sw_write,
  input            i_sw_select,
  input  [31:0]    i_sw_wrdata,
  output [31:0]    o_sw_rddata,
  input            i_hw_status_i2c_idle,
  input            i_hw_status_dac_fifo_full,
  input            i_hw_status_adc_fifo_empty,
  output           o_hw_ctrl_dac_sel,
  output           o_hw_ctrl_adc_sel,
  output [23:0]    o_hw_i2c_ctrl_data,
  output           o_hw_i2c_ctrl_write,
  output           o_hw_adc_data_data_fifo_read,
  input  [31:0]    i_hw_adc_data_data_fifo_read_data,
  output           o_hw_dac_data_data_fifo_write,
  output [31:0]    o_hw_dac_data_data_fifo_write_data
);


  // register definition
  reg    [31:0]    o_sw_rddata_q;
  reg              i_hw_status_i2c_idle_q;
  reg              i_hw_status_dac_fifo_full_q;
  reg              i_hw_status_adc_fifo_empty_q;
  reg              o_hw_ctrl_dac_sel_q;
  reg              o_hw_ctrl_adc_sel_q;
  reg    [23:0]    o_hw_i2c_ctrl_data_q;
  reg              o_hw_i2c_ctrl_write_q;

  // reg type variable definition
  reg    [31:0]    o_sw_rddata_next;
  reg              o_hw_ctrl_dac_sel_q_wen;
  reg              o_hw_ctrl_adc_sel_q_wen;
  reg              o_hw_i2c_ctrl_data_q_wen;
  reg              o_hw_i2c_ctrl_write_q_wen;


  //==============================
  // HW Read output
  //==============================

  assign o_sw_rddata = o_sw_rddata_q;
  assign o_hw_ctrl_dac_sel = o_hw_ctrl_dac_sel_q;
  assign o_hw_ctrl_adc_sel = o_hw_ctrl_adc_sel_q;
  assign o_hw_i2c_ctrl_data = o_hw_i2c_ctrl_data_q;
  assign o_hw_i2c_ctrl_write = o_hw_i2c_ctrl_write_q;


  //==============================
  // Software Read Logic
  //==============================

  always @(posedge clk) begin
    if (i_sw_read) o_sw_rddata_q <= o_sw_rddata_next;
  end

  // read decode logic
  always @(*) begin
    case(i_sw_address)
      5'h0:  o_sw_rddata_next = {29'b0, i_hw_status_adc_fifo_empty_q, i_hw_status_dac_fifo_full_q, 
                                 i_hw_status_i2c_idle_q};
      5'h4:  o_sw_rddata_next = {30'b0, o_hw_ctrl_adc_sel_q, o_hw_ctrl_dac_sel_q};
      5'h8:  o_sw_rddata_next = {i_hw_adc_data_data_fifo_read_data};
      5'hc:  o_sw_rddata_next = {32'h0};
      5'h10:  o_sw_rddata_next = {7'b0, o_hw_i2c_ctrl_write_q, o_hw_i2c_ctrl_data_q};
      default:  o_sw_rddata_next = o_sw_rddata;
    endcase
  end



  //==============================
  // Software/Hardware Write Logic
  //==============================

  // software write decode Logic
  always @(*) begin
    case(i_sw_address)
      5'h4: begin
        o_hw_ctrl_dac_sel_q_wen = i_sw_write & i_sw_select;
        o_hw_ctrl_adc_sel_q_wen = i_sw_write & i_sw_select;
      end
      5'h10: begin
        o_hw_i2c_ctrl_data_q_wen = i_sw_write & i_sw_select;
        o_hw_i2c_ctrl_write_q_wen = i_sw_write & i_sw_select;
      end
      default: begin;
        o_hw_ctrl_dac_sel_q_wen = 1'b0;
        o_hw_ctrl_adc_sel_q_wen = 1'b0;
        o_hw_i2c_ctrl_data_q_wen = 1'b0;
        o_hw_i2c_ctrl_write_q_wen = 1'b0;
      end
    endcase
  end


  // write sequential Logic
  // Software/Hardware Write Logic
  always @(posedge clk) begin
    if (reset) begin
      i_hw_status_i2c_idle_q <= 1'h1;
      i_hw_status_dac_fifo_full_q <= 1'h0;
      i_hw_status_adc_fifo_empty_q <= 1'h1;
      o_hw_ctrl_dac_sel_q <= 1'h1;
      o_hw_ctrl_adc_sel_q <= 1'h1;
      o_hw_i2c_ctrl_data_q <= 24'h0;
      o_hw_i2c_ctrl_write_q <= 1'h0;
    end
    else begin
      // Register: status | Field: i_hw_status_i2c_idle
      i_hw_status_i2c_idle_q <= i_hw_status_i2c_idle;

      // Register: status | Field: i_hw_status_dac_fifo_full
      i_hw_status_dac_fifo_full_q <= i_hw_status_dac_fifo_full;

      // Register: status | Field: i_hw_status_adc_fifo_empty
      i_hw_status_adc_fifo_empty_q <= i_hw_status_adc_fifo_empty;

      // Register: ctrl | Field: o_hw_ctrl_dac_sel
      if (o_hw_ctrl_dac_sel_q_wen) o_hw_ctrl_dac_sel_q <= i_sw_wrdata[0:0];

      // Register: ctrl | Field: o_hw_ctrl_adc_sel
      if (o_hw_ctrl_adc_sel_q_wen) o_hw_ctrl_adc_sel_q <= i_sw_wrdata[1:1];

      // Register: i2c_ctrl | Field: o_hw_i2c_ctrl_data
      if (o_hw_i2c_ctrl_data_q_wen) o_hw_i2c_ctrl_data_q <= i_sw_wrdata[23:0];

      // Register: i2c_ctrl | Field: o_hw_i2c_ctrl_write
      if (o_hw_i2c_ctrl_write_q_wen) o_hw_i2c_ctrl_write_q <= i_sw_wrdata[24:24];

    end
  end

  //==============================
  // FIFO control
  //==============================

  // FIFO Read logic
  assign o_hw_adc_data_data_fifo_read = i_sw_select & i_sw_read & (i_sw_address == 5'h8);

  // FIFO Write logic
  assign o_hw_dac_data_data_fifo_write = i_sw_select & i_sw_write & (i_sw_address == 5'hc);
  assign o_hw_dac_data_data_fifo_write_data = i_sw_wrdata[31:0];


endmodule