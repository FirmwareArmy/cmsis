message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "sc000")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMSC000")

list(APPEND sources
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC000/Source/startup_ARMSC000.c
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC000/Source/system_ARMSC000.c
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC000/Include
)

set(LINKER_FLAGS "${LINKER_FLAGS} -D$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMSC000/Source/GCC/gcc_arm.ld")

