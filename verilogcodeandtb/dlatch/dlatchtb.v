module dlatchtb;
reg d,en,rstn;
wire q;
integer i;
dlatch uut(.d(d),
	   .en(en),
	   .rstn(rstn),
	   .q(q));
   initial
   begin
	   $dumpfile("dump.vcd");
	   $dumpvars(0,dlatchtb);
	   d<=0;
	   en<=0;
	   rstn<=0;
	   for (i=0;i<5;i=i+1)
	   begin
		   #2 en<=~en;
		   #2 d<=i;
	   end
   end
   endmodule
