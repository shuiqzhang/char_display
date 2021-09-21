
`timescale 1 ps/ 1 ps
module char_display_vlg_tst();
reg clk;
reg rst_n;
wire [15:0]  out;

char_display i1 (
	.clk(clk),
	.out(out),
	.rst_n(rst_n)
);
initial   begin                                                  
			clk		=	0;
			rst_n	=	0;
	#100	rst_n	=	1;
	
	#1000000	
	$stop(2);                   
  
  end       
                                        
always	#10	clk	=	~clk;                                                 
                                                   
endmodule

