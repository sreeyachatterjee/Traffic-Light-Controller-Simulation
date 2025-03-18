module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0] NS_light, // North-South traffic lights
    output reg [2:0] EW_light  // East-West traffic lights
);

// State encoding
parameter RED = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN = 3'b001;

// State machine states
parameter NS_GREEN = 2'b00;
parameter NS_YELLOW = 2'b01;
parameter EW_GREEN = 2'b10;
parameter EW_YELLOW = 2'b11;

reg [1:0] state;
reg [31:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= NS_GREEN;
        counter <= 0;
    end else begin
        counter <= counter + 1;

        case (state)
            NS_GREEN: begin
                NS_light <= GREEN;
                EW_light <= RED;
                if (counter == 50) begin
                    state <= NS_YELLOW;
                    counter <= 0;
                end
            end
            NS_YELLOW: begin
                NS_light <= YELLOW;
                EW_light <= RED;
                if (counter == 10) begin
                    state <= EW_GREEN;
                    counter <= 0;
                end
            end
            EW_GREEN: begin
                NS_light <= RED;
                EW_light <= GREEN;
                if (counter == 50) begin
                    state <= EW_YELLOW;
      
