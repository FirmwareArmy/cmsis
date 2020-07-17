message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m7")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM7_DP")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM7/Source/startup_ARMCM7.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM7/Source/system_ARMCM7.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM7/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM7/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM7/Source/GCC/gcc_arm.ld")

