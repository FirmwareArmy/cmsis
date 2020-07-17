message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "armv8mbl")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMv8MBL")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Source/startup_ARMv8MBL.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Source/system_ARMv8MBL.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Include/
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MBL/Source/GCC/gcc_arm.ld")

