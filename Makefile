# Makefile for compiling and uploading a blink program to Arduino Nano

# Name of the source file
TARGET = blink

# AVR parameters
MCU = atmega328p
F_CPU = 16000000UL

# Programmer settings
PROGRAMMER = arduino
PORT = /dev/ttyUSB0
BAUD = 115200

# Compiler settings
CC = avr-gcc
CFLAGS = -mmcu=$(MCU) -DF_CPU=$(F_CPU) -Os -Wall
OBJ2HEX = avr-objcopy

# Rules
all: $(TARGET).hex

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET).elf: $(TARGET).o
	$(CC) $(CFLAGS) $< -o $@

$(TARGET).hex: $(TARGET).elf
	$(OBJ2HEX) -O ihex -R .eeprom $< $@

upload: $(TARGET).hex
	avrdude -v -patmega328p -carduino -P$(PORT) -b$(BAUD) -D -Uflash:w:$(TARGET).hex:i

clean:
	rm -f *.o *.elf *.hex

run:
	make clean
	make
	sudo make upload	

.PHONY: all upload clean
