message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m33")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM33_TZ")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM33/Source/startup_ARMCM33.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM33/Source/system_ARMCM33.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM33/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM33/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM33/Source/GCC/gcc_arm.ld")

