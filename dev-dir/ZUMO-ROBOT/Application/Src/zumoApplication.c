// Include Section

#include "zumoApplication.h"
#include <stdint.h>

// static vars
static uint8_t arr[] = {0x00, 0x00, 0x00};
// external modules
extern UART_HandleTypeDef huart1;
extern SPI_HandleTypeDef hspi1;
// static functions declarations
// static functions definitions
// function definitions

void init(void)
{
    HAL_UART_Transmit(&huart1, (uint8_t*)&arr, 3, 100);
    HAL_SPI_Transmit(&hspi1,(uint8_t*)&arr, 3, 100);
    return;
}