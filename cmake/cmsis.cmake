message("cmsis library path ${LIBRARY_PATH}")

set(CMSIS_LIBRARY_PATH "${LIBRARY_PATH}/cmsis")

include_directories(
	${LIBRARY_PATH}/src
	
	${LIBRARY_PATH}/cmsis/CMSIS/Core/Include
)

list(APPEND sources
	${LIBRARY_PATH}/src/core.c
)