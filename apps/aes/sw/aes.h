/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/

typedef unsigned _ExtInt(8) uint8_t;

typedef struct {
  uint8_t buffer[16];
} outBuffer_output_t;

typedef struct {
  uint8_t key[32];
  uint8_t enckey[32];
  uint8_t deckey[32];
} aes256_context_input_t;

__attribute__((always_inline)) void aes256_encrypt_ecb(aes256_context_input_t *ctx, uint8_t k[32], uint8_t buf[16]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  aes256_context_input_t ctx;
  uint8_t k[32];
  uint8_t buf[16];
};
