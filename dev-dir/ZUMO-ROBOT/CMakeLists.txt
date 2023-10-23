cmake_minimum_required(VERSION 3.10)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

project(ZUMO-ROBOT)

enable_language(C ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

set(CMAKE_SYSTEM_NAME Windows)
set(STM32CUBEMX_GENERATED_FILES

        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_tim_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_uart.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_spi.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_uart_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_rcc_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ramfunc.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_cortex.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_exti.c

        ../ZUMO-ROBOT/Core/Inc/main.h
        ../ZUMO-ROBOT/Core/Inc/stm32g4xx_hal_conf.h
        ../ZUMO-ROBOT/Core/Inc/stm32g4xx_it.h

        ../ZUMO-ROBOT/Core/Src/main.c
        ../ZUMO-ROBOT/Core/Src/stm32g4xx_hal_msp.c
        ../ZUMO-ROBOT/Core/Src/stm32g4xx_it.c
        ../ZUMO-ROBOT/Core/Src/system_stm32g4xx.c
        ../ZUMO-ROBOT/Application/Src/zumoApplication.c

        ../ZUMO-ROBOT/startup_stm32g474xx.s)

set(EXECUTABLE ${PROJECT_NAME}.out)

add_executable(${EXECUTABLE} ${STM32CUBEMX_GENERATED_FILES})

target_compile_definitions(${EXECUTABLE} PRIVATE
        -DUSE_HAL_DRIVER
        -DSTM32G474xx
        )

target_include_directories(${EXECUTABLE} PRIVATE
        ../ZUMO-ROBOT/Core/Inc
        ../ZUMO-ROBOT/Drivers/STM32G4xx_HAL_Driver/Inc
        ../ZUMO-ROBOT/Drivers/CMSIS/Device/ST/STM32G4xx/Include
        ../ZUMO-ROBOT/Drivers/CMSIS/Include
        ../ZUMO-ROBOT/Application/Inc
        )

target_compile_options(${EXECUTABLE} PRIVATE
        -mcpu=cortex-m4
        -mthumb
        -mfpu=fpv4-sp-d16
        -mfloat-abi=hard

        -fdata-sections
        -ffunction-sections

        -Wall

        $<$<CONFIG:Debug>:-Og>
        )

target_link_options(${EXECUTABLE} PRIVATE
        -T${CMAKE_SOURCE_DIR}/STM32G474VETx_FLASH.ld
        -mcpu=cortex-m4
        -mthumb
        -mfpu=fpv4-sp-d16
        -mfloat-abi=hard
        -lc
        -lm
        -lnosys
        -Wl,-Map=${PROJECT_NAME}.map,--cref
        -Wl,--gc-sections
        )

# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND arm-none-eabi-size ${EXECUTABLE})

# Create hex file
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND arm-none-eabi-objcopy -O ihex ${EXECUTABLE} ${PROJECT_NAME}.hex
        COMMAND arm-none-eabi-objcopy -O binary ${EXECUTABLE} ${PROJECT_NAME}.bin)