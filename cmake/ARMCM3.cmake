message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m3")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM3")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM3/Source/startup_ARMCM3.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM3/Source/system_ARMCM3.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM3/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM3/Source/GCC/gcc_arm.ld")

