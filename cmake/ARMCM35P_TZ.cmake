message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-m35p")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCM35P_TZ")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM35P/Source/startup_ARMCM35P.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM35P/Source/system_ARMCM35P.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM35P/Include
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM35P/Include/
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCM35P/Source/GCC/gcc_arm.ld")

