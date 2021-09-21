////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
module BRAM 
   #(	
		parameter 	MEMWIDTH 	= 20,		//1024 * data 
		parameter	DATAWIDTH 	= 1
   )               
   (
   input wire          	 			clk, 
   input wire          	 			wr_en,		//写有效信号
   input wire	[MEMWIDTH-1:0]		waddr,		//写地址
   input wire	[MEMWIDTH-1:0]		raddr,		//读地址
   input wire	[DATAWIDTH-1:0] 	data_in,	//写入的数据
   output reg	[DATAWIDTH-1:0] 	data_out	//读出的数据
   );


// Memory Array
reg  [DATAWIDTH-1:0] memory[0:(2**MEMWIDTH-1)];

initial
begin
	//$readmemh("C:/Users/Dell/Desktop/my_char_display/char_display/数字ICer.txt",memory);
    $readmemh("C:/Users/Dell/Desktop/my_char_display/char_display/中秋节快乐.txt",memory);
end      

always@(posedge clk)
begin
	if( wr_en )
		memory[waddr]	<=	data_in;
	data_out	<=	memory[raddr];
end   

endmodule


















