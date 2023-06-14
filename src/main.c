#include "common.h"

void main(void) {

    DISPLAY_ON;
    
    while(1) {
        delay(100);
        wait_vbl_done();
    }
}