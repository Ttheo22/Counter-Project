
## People Counter System using 8051 Microcontroller

### Overview

This project implements a people counter system using an 8051 microcontroller. The system counts the number of people entering and exiting a given area, such as a library, in real-time. When the count reaches zero, indicating no one is present, the system automatically shuts down electrical appliances like lights and air conditioners to conserve energy.

### Features

- **Real-Time Counting**: Increments the count when a person enters and decrements it when a person exits.
- **Hexadecimal to BCD Conversion**: Converts the hexadecimal count to BCD format for easy display on a 7-segment display or LCD.
- **Energy Management**: Automatically turns off electrical appliances when the area is unoccupied and turns them back on when occupancy is detected.
- **Display**: Shows the current count of people inside the area on a display unit connected to the microcontroller.

### Components

- **8051 Microcontroller**: The core of the system that handles counting, conversion, and control logic.
- **Sensors**: Infrared or other types of sensors placed at entry and exit points to detect movement.
- **Display Unit**: 7-segment display or LCD to show the current count of people.
- **Electrical Appliances**: Lights, air conditioners, or other appliances controlled based on the count.

### Code Description

The assembly code includes the following key parts:

- **Initialization**: Sets up the program and clears the accumulator.
- **Main Loop**: Continuously checks for entry and exit signals, updates the count, and calls the subroutine for conversion and display.
- **Hex to BCD Conversion Subroutine**: Converts the hexadecimal count to BCD format for display purposes.
- **Energy Management Logic**: Controls the electrical appliances based on the current count.

### How It Works

1. **Detection**: Sensors at the entry and exit points detect when someone enters or exits the area.
2. **Counting**: The microcontroller updates the count based on sensor signals.
3. **Conversion**: The count is converted from hexadecimal to BCD format.
4. **Display**: The BCD count is displayed on the display unit.
5. **Energy Management**: The system turns off electrical appliances when the count is zero and turns them back on when the count is greater than zero.

### Practical Applications

- **Libraries**: Automate control of lighting and air conditioning based on occupancy.
- **Conference Rooms**: Ensure energy efficiency by controlling appliances based on room usage.
- **Offices**: Manage energy consumption effectively in office spaces.

### Conclusion

This people counter system demonstrates the practical use of an 8051 microcontroller for real-time counting and energy management. It highlights the integration of sensor technology, microcontroller programming, and automation to create efficient and smart solutions for various applications.


