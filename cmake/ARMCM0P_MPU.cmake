message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m0plus")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM0P_MPU")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0plus/Source/startup_ARMCM0plus.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0plus/Source/system_ARMCM0plus.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0plus/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM0plus/Source/GCC/gcc_arm.ld")

