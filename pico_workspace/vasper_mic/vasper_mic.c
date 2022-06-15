/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pll.h"
#include "hardware/clocks.h"
#include "hardware/structs/pll.h"
#include "hardware/structs/clocks.h"
#include "pico/sleep.h"
#include "hardware/structs/scb.h"
#include "hardware/rosc.h"

void measure_freqs(void) {
    uint f_clk_sys = frequency_count_khz(CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS);


    printf("clk_sys  = %dkHz\n", f_clk_sys);
    uart_default_tx_wait_blocking();

    // Can't measure clk_ref / xosc as it is the ref
}


void recover_from_sleep(uint scb_orig, uint clock0_orig, uint clock1_orig){

    //Re-enable ring Oscillator control
    rosc_write(&rosc_hw->ctrl, ROSC_CTRL_ENABLE_BITS);

    //reset procs back to default
    scb_hw->scr = scb_orig;
    clocks_hw->sleep_en0 = clock0_orig;
    clocks_hw->sleep_en1 = clock1_orig;

    //reset clocks
    clocks_init();
    stdio_init_all();

    return;
}

int main() {

    uint scb_orig = scb_hw->scr;
    uint clock0_orig = clocks_hw->sleep_en0;
    uint clock1_orig = clocks_hw->sleep_en1;

    stdio_init_all();
    gpio_init(20);
    clocks_init();


    bool trigger = false;
    clock_configure(clk_sys,
                    CLOCKS_CLK_SYS_CTRL_SRC_VALUE_CLKSRC_CLK_SYS_AUX,
                    CLOCKS_CLK_SYS_CTRL_AUXSRC_VALUE_CLKSRC_PLL_USB,
                    48 * MHZ,
                    48 * MHZ);
    gpio_pull_down(20);                
    gpio_set_input_enabled(20, true);


    

    clock_gpio_init(21, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS , 100);


    sleep_run_from_xosc();

    // printf("Running from XOSC\n");
    // uart_default_tx_wait_blocking();

    // printf("XOSC going dormant\n");
    // uart_default_tx_wait_blocking();

    // Go to sleep until we see a high edge on GPIO 20
    sleep_goto_dormant_until_edge_high(20);


    recover_from_sleep(scb_orig, clock0_orig, clock1_orig);

    clock_configure(clk_sys,
                    CLOCKS_CLK_SYS_CTRL_SRC_VALUE_CLKSRC_CLK_SYS_AUX,
                    CLOCKS_CLK_SYS_CTRL_AUXSRC_VALUE_CLKSRC_PLL_USB,
                    48 * MHZ,
                    48 * MHZ);

    // LOW POWER MODE 480kHz
    clock_gpio_init(21, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS, 100);
    
    // stdio_init_all();
    // gpio_init(20);
    // clocks_init();

    // clock_configure(clk_sys,
    //                 CLOCKS_CLK_SYS_CTRL_SRC_VALUE_CLKSRC_CLK_SYS_AUX,
    //                 CLOCKS_CLK_SYS_CTRL_AUXSRC_VALUE_CLKSRC_PLL_USB,
    //                 48 * MHZ,
    //                 48 * MHZ);
    
    //clock_gpio_init(21, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS, 100);
      
    // while (true)
    // {
    //     measure_freqs();
    
    

    //     // Change clk_sys to be 48MHz. The simplest way is to take this from PLL_USB
    //     // which has a source frequency of 48MHz



    //     trigger = gpio_get(20);
    //     printf("trigger  = %d\n", trigger);
    //     uart_default_tx_wait_blocking();



    //     if (trigger){
    //         // LOW POWER MODE 480kHz
    //         clock_gpio_init(21, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS, 100);
    //     } else {
    //         //clock_stop(clk_sys);
    //         clock_gpio_init(21, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_RESET , 1);
    //     }

    // }
    

    return 0;
}
