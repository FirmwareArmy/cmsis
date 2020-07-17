message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a9")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA9")

list(APPEND sources
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA9/Include
)


