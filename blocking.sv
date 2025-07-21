module blocking;
	int a,b,c;

	initial begin
		a=0;
		b=0;
		c=0;
		#1;
	$display("Display before blocking assignment-> a=%0d,b=%0d,c=%0d",a,b,c);
		a=10;
		b=a;
		c=b;
		#1;
	$display("Display after blocking assignment->  a=%0d,b=%0d,c=%0d",a,b,c);
	end
endmodule
