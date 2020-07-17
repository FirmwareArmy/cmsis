message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "armv81mml")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMv81MML_DSP_DP_MVE_FP")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv81MML/Source/startup_ARMv81MML.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv81MML/Source/system_ARMv81MML.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv81MML/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv81MML/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -T $ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMv81MML/Source/GCC/gcc_arm.ld")

