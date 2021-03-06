// asm file name: lb.o
module instr_rom(
    input  logic clk, rst_n,
    input  logic [13:0] i_addr,
    output logic [31:0] o_data
);
    localparam  INSTR_CNT = 12'd157;
    
    wire [0:INSTR_CNT-1] [31:0] instr_rom_cell = {
        32'h00001097,    //0x00000000
        32'h26c08093,    //0x00000004
        32'h00008f03,    //0x00000008
        32'hfff00e93,    //0x0000000c
        32'h00200193,    //0x00000010
        32'h23df1c63,    //0x00000014
        32'h00001097,    //0x00000018
        32'h25408093,    //0x0000001c
        32'h00108f03,    //0x00000020
        32'h00000e93,    //0x00000024
        32'h00300193,    //0x00000028
        32'h23df1063,    //0x0000002c
        32'h00001097,    //0x00000030
        32'h23c08093,    //0x00000034
        32'h00208f03,    //0x00000038
        32'hff000e93,    //0x0000003c
        32'h00400193,    //0x00000040
        32'h21df1463,    //0x00000044
        32'h00001097,    //0x00000048
        32'h22408093,    //0x0000004c
        32'h00308f03,    //0x00000050
        32'h00f00e93,    //0x00000054
        32'h00500193,    //0x00000058
        32'h1fdf1863,    //0x0000005c
        32'h00001097,    //0x00000060
        32'h20f08093,    //0x00000064
        32'hffd08f03,    //0x00000068
        32'hfff00e93,    //0x0000006c
        32'h00600193,    //0x00000070
        32'h1ddf1c63,    //0x00000074
        32'h00001097,    //0x00000078
        32'h1f708093,    //0x0000007c
        32'hffe08f03,    //0x00000080
        32'h00000e93,    //0x00000084
        32'h00700193,    //0x00000088
        32'h1ddf1063,    //0x0000008c
        32'h00001097,    //0x00000090
        32'h1df08093,    //0x00000094
        32'hfff08f03,    //0x00000098
        32'hff000e93,    //0x0000009c
        32'h00800193,    //0x000000a0
        32'h1bdf1463,    //0x000000a4
        32'h00001097,    //0x000000a8
        32'h1c708093,    //0x000000ac
        32'h00008f03,    //0x000000b0
        32'h00f00e93,    //0x000000b4
        32'h00900193,    //0x000000b8
        32'h19df1863,    //0x000000bc
        32'h00001097,    //0x000000c0
        32'h1ac08093,    //0x000000c4
        32'hfe008093,    //0x000000c8
        32'h02008283,    //0x000000cc
        32'hfff00e93,    //0x000000d0
        32'h00a00193,    //0x000000d4
        32'h17d29a63,    //0x000000d8
        32'h00001097,    //0x000000dc
        32'h19008093,    //0x000000e0
        32'hffa08093,    //0x000000e4
        32'h00708283,    //0x000000e8
        32'h00000e93,    //0x000000ec
        32'h00b00193,    //0x000000f0
        32'h15d29c63,    //0x000000f4
        32'h00c00193,    //0x000000f8
        32'h00000213,    //0x000000fc
        32'h00001097,    //0x00000100
        32'h16d08093,    //0x00000104
        32'h00108f03,    //0x00000108
        32'h000f0313,    //0x0000010c
        32'hff000e93,    //0x00000110
        32'h13d31c63,    //0x00000114
        32'h00120213,    //0x00000118
        32'h00200293,    //0x0000011c
        32'hfe5210e3,    //0x00000120
        32'h00d00193,    //0x00000124
        32'h00000213,    //0x00000128
        32'h00001097,    //0x0000012c
        32'h14208093,    //0x00000130
        32'h00108f03,    //0x00000134
        32'h00000013,    //0x00000138
        32'h000f0313,    //0x0000013c
        32'h00f00e93,    //0x00000140
        32'h11d31463,    //0x00000144
        32'h00120213,    //0x00000148
        32'h00200293,    //0x0000014c
        32'hfc521ee3,    //0x00000150
        32'h00e00193,    //0x00000154
        32'h00000213,    //0x00000158
        32'h00001097,    //0x0000015c
        32'h11008093,    //0x00000160
        32'h00108f03,    //0x00000164
        32'h00000013,    //0x00000168
        32'h00000013,    //0x0000016c
        32'h000f0313,    //0x00000170
        32'h00000e93,    //0x00000174
        32'h0dd31a63,    //0x00000178
        32'h00120213,    //0x0000017c
        32'h00200293,    //0x00000180
        32'hfc521ce3,    //0x00000184
        32'h00f00193,    //0x00000188
        32'h00000213,    //0x0000018c
        32'h00001097,    //0x00000190
        32'h0dd08093,    //0x00000194
        32'h00108f03,    //0x00000198
        32'hff000e93,    //0x0000019c
        32'h0bdf1663,    //0x000001a0
        32'h00120213,    //0x000001a4
        32'h00200293,    //0x000001a8
        32'hfe5212e3,    //0x000001ac
        32'h01000193,    //0x000001b0
        32'h00000213,    //0x000001b4
        32'h00001097,    //0x000001b8
        32'h0b608093,    //0x000001bc
        32'h00000013,    //0x000001c0
        32'h00108f03,    //0x000001c4
        32'h00f00e93,    //0x000001c8
        32'h09df1063,    //0x000001cc
        32'h00120213,    //0x000001d0
        32'h00200293,    //0x000001d4
        32'hfe5210e3,    //0x000001d8
        32'h01100193,    //0x000001dc
        32'h00000213,    //0x000001e0
        32'h00001097,    //0x000001e4
        32'h08808093,    //0x000001e8
        32'h00000013,    //0x000001ec
        32'h00000013,    //0x000001f0
        32'h00108f03,    //0x000001f4
        32'h00000e93,    //0x000001f8
        32'h05df1863,    //0x000001fc
        32'h00120213,    //0x00000200
        32'h00200293,    //0x00000204
        32'hfc521ee3,    //0x00000208
        32'h00001297,    //0x0000020c
        32'h06028293,    //0x00000210
        32'h00028103,    //0x00000214
        32'h00200113,    //0x00000218
        32'h00200e93,    //0x0000021c
        32'h01200193,    //0x00000220
        32'h03d11463,    //0x00000224
        32'h00001297,    //0x00000228
        32'h04428293,    //0x0000022c
        32'h00028103,    //0x00000230
        32'h00000013,    //0x00000234
        32'h00200113,    //0x00000238
        32'h00200e93,    //0x0000023c
        32'h01300193,    //0x00000240
        32'h01d11463,    //0x00000244
        32'h00301863,    //0x00000248
        32'h00100793,    //0x0000024c
        32'h00000213,    //0x00000250
        32'h00320233,    //0x00000254
        32'h00100193,    //0x00000258
        32'h40f181b3,    //0x0000025c
        32'hc0001073,    //0x00000260
        32'h00000000,    //0x00000264
        32'h00000000,    //0x00000268
        32'h00000000,    //0x0000026c
        32'h00000000    //0x00000270
        
    };
    
    logic [11:0] instr_index;
    logic [31:0] data;
    
    assign instr_index = i_addr[13:2];
    assign data = (instr_index>=INSTR_CNT) ? 0 : instr_rom_cell[instr_index];
    
    always @ (posedge clk or negedge rst_n)
        if(~rst_n)
            o_data <= 0;
        else
            o_data <= data;

endmodule
