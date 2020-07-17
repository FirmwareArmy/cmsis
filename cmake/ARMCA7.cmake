message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a7")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA7")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Source/GCC/startup_ARMCA7.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Source/system_ARMCA7.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Source/mmu_ARMCA7.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Include/
)


