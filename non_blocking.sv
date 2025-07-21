module non_blocking;
	int a,b,c;

	initial begin
		a=0; b=0; c=0;
		#1;
		$display("Display before non_blocking assignment-> a=%0d,b=%0d,c=%0d",a,b,c);

		a<=12;
		b<=a;
		c<=b;
		#1;
		$display("Display after non_blocking assignment->  a=%0d,b=%0d,c=%0d",a,b,c);
	end
endmodule
