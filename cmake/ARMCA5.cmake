message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a5")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA5")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Source/GCC/startup_ARMCA5.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Source/system_ARMCA5.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Source/mmu_ARMCA5.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Include/
)


