# xdevstm01

STM32F405 based devboard

## Boot Mode

| BOOT1 | BOOT0 | Boot Mode     |
| ----- | ----- | ---------     |
|   x   |   0   | Main Flash    |
|   0   |   1   | System Memory |
|   1   |   1   | Embedded SRAM |

## Pin Mapping

Explicitly selecting TIM pins for testing with PWM but they can be used as general IO as well.

| Function | MCU Pin  | Peripheral | Feather Pin |
| -------- | -------- | ---------- | ----------- |
| USB DM   | PA11     | OTG_FS     |    USB-C    |
| USB DP   | PA12     | OTG_FS     |    USB-C    |
| UART TX  | PA9      | USART 2    |    D1       |
| UART RX  | PA10     | USART 2    |    D0       |
| I2C SCL  | PB6      | I2C2       |    SDA      |
| I2C SDA  | PB7      | I2C2       |    SCL      |
| SCK      | PB10     | SPI2       |    SCK      |
| MISO     | PB14     | SPI2       |    MISO     |
| MOSI     | PB15     | SPI2       |    MOSI     |
| PWM 1    | PA0      | TIM2       |    D9       |
| PWM 2    | PA1      | TIM2       |    D10      |
| PWM 3    | PA2      | TIM2       |    D11      |
| PWM 4    | PA3      | TIM2       |    D12      |

{{#find xdevstm01-3d}}

## Schematic

{{#find xdevstm01-schematic}}

{{#find xdevstm01-schematic-svg}}

## PCB Layout

{{#find xdevstm01-top}}

{{#find xdevstm01-bottom}}

## Bill of Materials

{{#find xdevstm01-ibom}}
