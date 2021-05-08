set(CMSIS_PACKAGE_PATH "${PACKAGE_PATH}/cmsis")

include_directories(
	${PACKAGE_PATH}/src
	
	${PACKAGE_PATH}/cmsis/CMSIS/Core/Include
)

list(APPEND sources
	${PACKAGE_PATH}/src/main.c
	${PACKAGE_PATH}/src/cppdefs.cpp
	${PACKAGE_PATH}/src/assert.c
	
	${PACKAGE_PATH}/src/cmsis/irq.c
	${PACKAGE_PATH}/src/cmsis/irq.cpp

 	${PACKAGE_PATH}/src/rtt/SEGGER_RTT.c
 	${PACKAGE_PATH}/src/rtt/SEGGER_RTT_printf.c
)