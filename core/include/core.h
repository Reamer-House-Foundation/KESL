#ifndef __CORE_HEADER__
#define __CORE_HEADER__

#include <stdint.h>
#include <stdio.h>

typedef uint32_t status_t;

#define STATUS_SUCCESS 0
#define STATUS_ERROR 1
#define STATUS_RESOURCE_UNAVALIABLE 2

#define SUCCESS(st) (st == STATUS_SUCCESS)
#define FAIL(st) (st != STATUS_SUCCESS)

#define KHZ(val) (val * 1000)
#define MHZ(val) (val * 1000000)

#define DEBUG() do { printf("Error in %s\n", __func__); while(1); } while (0)

#endif
