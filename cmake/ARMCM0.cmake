message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m0")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM0")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0/Source/startup_ARMCM0.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0/Source/system_ARMCM0.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0/Source/GCC/gcc_arm.ld")

