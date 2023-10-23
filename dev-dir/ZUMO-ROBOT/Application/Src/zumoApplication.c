// Include Section

#include "zumoApplication.h"
#include <stdint.h>

// static vars
static uint8_t arr[] = {'d', 'u', 'p', 'a'};
// external modules
extern UART_HandleTypeDef huart1;
extern SPI_HandleTypeDef hspi1;
// static functions declarations
static void init(void);
// static functions definitions

static void init(void)
{
    uint8_t arrLen = sizeof(arr) / sizeof(arr[0]);
    HAL_UART_Transmit(&huart1, (uint8_t *)&arr, arrLen, 100);
    HAL_SPI_Transmit(&hspi1, (uint8_t *)&arr, arrLen, 100);
    return;
}

// function definitions
void task_zumoInit(void* params)
{
    init();
    while (1)
    {
        // toggle the LED
        HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_13);
        vTaskDelay(500);
    } 
}