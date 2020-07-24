#include <main.h>

// see https://m0agx.eu/2018/08/14/reducing-firmware-size-by-removing-libc/

__attribute__((weak))
int main(void)
{
	setup() ;

	while(1)
		loop() ;
}

///// provide this when use -nostdlib linker option
//__attribute__((weak))
//void _start(void)
//{
//	main() ;
//}

// needed by linker nano.specs
//__attribute__((weak, noreturn))
//void _exit(int a __attribute__((unused)))
//{
//	__builtin_unreachable() ;
//}

//__attribute__((weak))
//void __libc_init_array(void)
//{
//}
