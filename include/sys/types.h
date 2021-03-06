#ifndef TYPES_H
#define TYPES_H

#include <limits.h>
#include <stdint.h>
#include <stddef.h>

#ifndef _SIZE_T
#define _SIZE_T
typedef unsigned int size_t;
#endif

#ifndef _SSIZE_T
#define _SSIZE_T
typedef int ssize_t;
#endif

typedef long long off_t;

typedef uintptr_t addr_t;
typedef uintptr_t vaddr_t;
typedef uintptr_t paddr_t;


enum handler_return {
    INT_NO_RESCHEDULE = 0,
    INT_RESCHEDULE,
};

typedef uint64_t time_t;
#define INFINIT_TIME (0xFFFFFFFF)

#define TIME_GTE(a, b) ((a) >= (b))
#define TIME_LTE(a, b) ((a) <= (b))
#define TIME_GT(a, b) ((a) > (b))
#define TIME_LT(a, b) ((a) < (b))

#endif // TYPES_H

