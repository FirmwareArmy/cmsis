#pragma once

#include <stdbool.h>


#ifdef __cplusplus
extern "C" {
#endif

extern volatile bool g_interrupt_enabled ;

#  define cpu_irq_enable()                     \
	do {                                       \
		g_interrupt_enabled = true;            \
		__DMB();                               \
		__enable_irq();                        \
	} while (0)
#  define cpu_irq_disable()                    \
	do {                                       \
		__disable_irq();                       \
		__DMB();                               \
		g_interrupt_enabled = false;           \
	} while (0)

#define cpu_irq_is_enabled()    (__get_PRIMASK() == 0)

void cpu_irq_enter_critical(void) ;
void cpu_irq_leave_critical(void) ;

#ifdef __cplusplus
}
#endif
