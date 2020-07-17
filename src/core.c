#include <core.h>

// see https://m0agx.eu/2018/08/14/reducing-firmware-size-by-removing-libc/

int main(void)
{
	setup() ;

	while(1)
		loop() ;
}

__attribute__((weak)) void _start(void)
{
	main() ;
}

// needed by linker nano.specs
__attribute__((weak, noreturn)) void _exit(int a __attribute__((unused)))
{
	__builtin_unreachable() ;
}
