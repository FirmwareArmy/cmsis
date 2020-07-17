message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m23")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM23_TZ")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Source/startup_ARMCM23.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Source/system_ARMCM23.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Include/
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM23/Source/GCC/gcc_arm.ld")

