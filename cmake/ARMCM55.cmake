message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m55")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM55")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM55/Source/startup_ARMCM55.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM55/Source/system_ARMCM55.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM55/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM55/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM55/Source/GCC/gcc_arm.ld")

