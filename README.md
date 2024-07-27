# Fibonacci LED Blink

This an example project that counts fibonacci numbers and dsiplays them on led indicator of arduino nano with n number of blinks. Each number is represented by number of blinks.

## Requirements

To build and upload this project to an Arduino Nano, you need the following:

1. **Hardware:**
   - Arduino Nano
   - LED connected to digital pin 13 (on-board LED in this case)
   - USB cable to connect Arduino Nano to your computer

2. **Software:**
   - **Fedora Linux** (or other Linux distributions with similar tools)
   - **AVR Toolchain** (including `avr-gcc` and `avrdude`):
     - Install using the following command:
       ```bash
       sudo dnf install avr-gcc avr-binutils avr-libc avrdude
       ```
   - **Make**: A build automation tool (usually pre-installed on Linux systems).

## Building and Uploading

1. **Clone or Download the Repository:**
   - If using Git:
     ```bash
     git clone https://github.com/St3plox/c_arduino_fibonacci.git
     cd https://github.com/St3plox/c_arduino_fibonacci.git
     ```

2. **Compile and run the Program:**
   - Ensure your Arduino Nano is connected to `/dev/ttyUSB0`. Adjust the port in the Makefile if necessary.
     ```bash
     make run
     ```


## Notes for Non-Linux Users

Some things may vary on different platforms, expecially output port and installing process of avr tools.