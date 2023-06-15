#include "common.h"
#include <inttypes.h>

void main(void) {

    DISPLAY_ON;
    
    while(1) {
        wait_vbl_done();
    }
}