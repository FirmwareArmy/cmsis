message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "sc300")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMSC300")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC300/Source/startup_ARMSC300.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC300/Source/system_ARMSC300.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC300/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC300/Source/GCC/gcc_arm.ld")

