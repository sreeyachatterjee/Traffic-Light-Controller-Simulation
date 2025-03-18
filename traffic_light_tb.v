`timescale 1ns / 1ps

module traffic_light_tb;

reg clk;
reg reset;
wire [2:0] NS_light;
wire [2:0] EW_light;

// Instantiate the traffic light controller
traffic_light_controller uut (
    .clk(clk),
    .reset(reset),
    .NS_light(NS_light),
    .EW_light(EW_light)
);

initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
end

// Generate clock signal
always #5 clk = ~clk;

// Monitor output
initial begin
    $monitor("Time = %d, NS_Light = %b, EW_Light = %b", $time, NS_light, EW_light);
    #200 $finish;
end

endmodule
