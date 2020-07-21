
extern "C" void __cxa_pure_virtual() ;

// Provide it to allow usage of virtual functions in c++
// Call of this function indicates an usage of a pure virtual function where it is not defined
extern "C" void __cxa_pure_virtual()
{
	while (1)
		;
}
