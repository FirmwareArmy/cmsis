message("cmsis-samd21 library path $ENV{LIBRARY_PATH}")

set(CPU "cortex-a5")

set(COMMON_FLAGS "${COMMON_FLAGS} -DARMCA5")

list(APPEND sources
)

include_directories(
	$ENV{LIBRARY_PATH}/cmsis/Device/ARM/ARMCA5/Include
)


