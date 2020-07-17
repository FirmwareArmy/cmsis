message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a7")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA7")

list(APPEND sources
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA7/Include
)


