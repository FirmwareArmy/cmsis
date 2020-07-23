message("cmsis library path ${LIBRARY_PATH}")

set(CMSIS_LIBRARY_PATH "${LIBRARY_PATH}/cmsis")

include_directories(
	${LIBRARY_PATH}/src
	
	${LIBRARY_PATH}/cmsis/CMSIS/Core/Include
)

list(APPEND sources
	${LIBRARY_PATH}/src/main.c
	${LIBRARY_PATH}/src/cppdefs.cpp
	
	${LIBRARY_PATH}/src/cmsis/irq.c
	${LIBRARY_PATH}/src/cmsis/irq.cpp
	${LIBRARY_PATH}/src/cmsis/assert.c
)