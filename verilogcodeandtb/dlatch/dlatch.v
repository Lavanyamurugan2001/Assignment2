module dlatch(d,en,rstn,q);

         input d,en,rstn;
         output reg q;
        always@(en,d,rstn)
	 begin
                          if(!rstn)
q<=0;
	         else 
		if(en)
			q<=d;

	 end
         endmodule
