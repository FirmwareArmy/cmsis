message("cmsis library path ${LIBRARY_PATH}")

set(CMSIS_LIBRARY_PATH "${LIBRARY_PATH}/cmsis")

include_directories(
	${CMSIS_LIBRARY_PATH}/cmsis/CMSIS/Core/include
)