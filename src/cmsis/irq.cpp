#include <cmsis/irq++.h>
#include <cmsis/irq.h>

IrqCriticalSection::IrqCriticalSection()
{
	cpu_irq_enter_critical() ;
}

IrqCriticalSection::~IrqCriticalSection()
{
	cpu_irq_leave_critical() ;
}
