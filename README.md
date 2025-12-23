# **Digital Clock on FPGA (HH:MM with 7-Segment Display)**

### **Overview**



This project implements a digital clock on an FPGA using Verilog HDL. The clock displays hours and minutes (HH:MM) on a 4-digit 7-segment display and shows seconds on LEDs. User inputs via switches and push buttons allow clock enable, reset, and manual time adjustment.



The design is intended to be synthesized and implemented using **Xilinx Vivado.**



### **Features**

* Real-time digital clock
* Displays HH:MM on 7-segment display
* Displays seconds on LEDs
* Clock enable/disable using switch
* Reset functionality
* Manual hour and minute increment using push buttons
* Button debouncing implemented in hardware



### **Top Module**



Module Name: Top\_Module



#### **Inputs**

**Signal	Description**

clk	FPGA system clock

sw	Clock enable switch

btnC	Reset button

btnU	Hour increment button

btnR	Minute increment button



#### **Outputs**

**Signal	Description**

led\[7:0]	Displays seconds

seg\[6:0]	Seven-segment segment control

an\[3:0]		Seven-segment anode control

### 

### **Internal Modules Used**



###### **digital\_clock**

Handles timekeeping logic (seconds, minutes, hours)



###### **sevenseg\_driver**

Drives the 4-digit 7-segment display (HH:MM format)



###### **debounce**

Debounces mechanical push buttons to ensure clean transitions



### **Button Functionality**

### 

**btnC** → Resets the clock



**btnU** → Increments hours



**btnR** → Increments minutes



Edge detection is used to ensure a single increment per button press.



#### **Project Structure**

Decoder\_7segment/

│

├── Decoder\_7segment.srcs/   # Verilog source files

├── Decoder\_7segment.xpr     # Vivado project file

├── .gitignore               # Git ignore rules

└── README.md                # Project documentation



#### **Tools Used**



**HDL:** Verilog



**FPGA Tool:** Xilinx Vivado



**Simulation/Synthesis:** Vivado Simulator





#### **How to Use**



1. Open the project in Vivado
2. Synthesize and implement the design
3. Generate bitstream
4. Program FPGA
5. Use buttons and switch to control the clock



#### **Author**



Aditi Singh

B.Tech – Electronics and Communication Engineering

NIT Sikkim



