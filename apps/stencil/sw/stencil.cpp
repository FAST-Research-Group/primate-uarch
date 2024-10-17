#include "stencil.h"
#include "../../common/primate-hardware.hpp"

__attribute__((always_inline))
void stencil (TYPE orig[row_size * col_size], TYPE sol[row_size * col_size], TYPE filter[f_size]){
    int r, c, k1, k2;
    TYPE temp, mul;

    stencil_label1:for (r=0; r<row_size-2; r++) {
        stencil_label2:for (c=0; c<col_size-2; c++) {
            temp = (TYPE)0;
            stencil_label3:for (k1=0;k1<3;k1++){
                stencil_label4:for (k2=0;k2<3;k2++){
                    mul = filter[k1*3 + k2] * orig[(r+k1)*col_size + c+k2];
                    temp += mul;
                }
            }
            sol[(r*col_size) + c] = temp;
        }
    }
}

void primate_main() {
  bench_args_t args = PRIMATE::input<bench_args_t>();
  PRIMATE::input_done();
  stencil(args.orig, args.sol, args.filter);
  PRIMATE::output(args.sol);
  PRIMATE::output_done();
}
