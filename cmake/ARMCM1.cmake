message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m1")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM1")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM1/Source/startup_ARMCM1.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM1/Source/system_ARMCM1.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM1/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM1/Source/GCC/gcc_arm.ld")

