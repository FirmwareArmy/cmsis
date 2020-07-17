message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a9")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA9")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Source/GCC/startup_ARMCA9.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Source/system_ARMCA9.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Source/mmu_ARMCA9.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Include/
)


