module frequency_divider (
    input  wire clk_125MHz,
    input  wire reset,
    output reg [3:0] LED
);

    reg [25:0] count0;
    reg [26:0] count1;
    reg [29:0] count2;
    reg [30:0] count3; 

    always @(posedge clk_125MHz or posedge reset) 
    begin
        if (reset) 
        begin
            count0 <= 26'd0;
            count1 <= 27'd0;
            count2 <= 30'd0;
            count3 <= 31'd0;
            LED <= 4'b0000;
        end
        else 
        begin
        if (count0 == 26'd62_499_999) 
        begin
                count0 <= 26'd0;
                LED[0] <= ~LED[0];
        end
        else 
        begin
                count0 <= count0 + 1'b1;
        end
        
        if(count1 == 27'd124999999)
        begin
                count1 <= 27'd0;
                LED[1] <= ~LED[1];
        end
        else
        begin
                count1 <= count1 + 1'b1;
        end
        
         if(count2 == 30'd624999999)
        begin
                count2 <= 30'd0;
                LED[2] <= ~LED[2];
        end
        else
        begin
                count2 <= count2 + 1'b1;
        end
        
         if(count3 == 31'd1249999999)
        begin
                count3 <= 31'd0;
                LED[3] <= ~LED[3];
        end
        else
        begin
                count3 <= count3 + 1'b1;
        end

         end
    end

endmodule
