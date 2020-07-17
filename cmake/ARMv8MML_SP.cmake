message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "armv8mml")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMv8MML_SP")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Source/startup_ARMv8MML.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Source/system_ARMv8MML.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Include/
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv8MML/Source/GCC/gcc_arm.ld")

