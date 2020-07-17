message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m4")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM4")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM4/Source/startup_ARMCM4.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM4/Source/system_ARMCM4.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM4/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM4/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM4/Source/GCC/gcc_arm.ld")

