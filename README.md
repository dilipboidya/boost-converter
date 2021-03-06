
# Mixed Signal Circuit Design and Simulation Marathon
## Boost Converter or stepup converter

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Analog version of stepup converter in eSim](#analog-version-of-stepup-converter-in-eSim)
  * [Schematic Diagram](#Schematic-diagram)
  * [Netlists](#etlists)
  * [NgSpice Plot](#ngspice-plot)
 
- [Mixed Signal based stepup converter](#mixed-signal-based-stepup-converter)
  * [Circuit Diagram in eSim](#circuit-diagram-in-esim)
  * [Verilog Code](#verilog-code)
  * [Makerchip](#makerchip)
  * [Makerchip Plots](#makerchip-plots)
  * [Netlists](#netlists)
  * [NgSpice Plots](#ngspice-plots)
  * [GAW Plots](#gaw-plots) 

- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

## Abstract
This paper presents a design of mixed signal on step-up converter to boost the input voltage. The step-up converter presented here offers a good efficiency performance. The proposed converter is designed in eSim tool, makerchip and Verilator.

## Reference Circuit Diagram
![New Doc 02-28-2022 19 02](https://user-images.githubusercontent.com/43288153/156871589-75ae5d7d-4fbd-4467-a820-e64217985ea2.jpg)
fig1: schematic diagram of boost converter

![New Doc 02-28-2022 22 02_1](https://user-images.githubusercontent.com/43288153/156871644-ca072e83-03f1-4d62-9ae0-27080c7595e8.jpg)
fig2: circuit diagram of boost converter

## Reference Waveform
![WhatsApp Image 2022-02-28 at 11 25 00 PM](https://user-images.githubusercontent.com/43288153/156871763-776cfdf1-fbde-406c-9a15-04a88ec3c403.jpeg)
fig3: waveform
## Circuit Details
A step-up converter is also known as boost
converter, as the name suggests it steps up the input voltage to higher voltage, since the power is always conserved therefore the current in the output is lower than the input current and thus power is conserved. A typical step-up converter consists of a switch (transistor) and a diode as a semiconductor device, and storing element: inductor and a capacitor, the former is to store electrical energy in the form of magnetic energy and the later is to smooth the output voltage i.e., to filter out the ripple.
The working principle of the step-up converter can
be explained as follows
1) When the transistor is ON state, current starts
flowing through the inductor stores electric energy by generating magnetic field around it. 
2) When the transistor is turned OFF, inductor will
pump out its stored energy through the diode and current will start flowing through it[2]. At higher switching speed inductor will not be able
to discharge fully in between charging stages which as a result, a voltage higher than the input voltage will be developed at its output. Using Verilog the PWM signal can be generated to drive the gate of the transistor, thus a mixed signal design.

# Software Used
## eSim
It is an open source Electronics Design Automation by FOSSEE, IIT Bombay. It is made using NgSpice and Kicad.
More at:
</br>
https://esim.fossee.in/home

## NgSpice
It is used for spice simulations, it is an Open Source Software.
For more details visit:
</br>
http://ngspice.sourceforge.net/docs.html

## Makerchip
It is an Online Web Browser IDE for Verilog/System-Verilog/TL-Verilog Simulation.
More details here 
</br> https://www.makerchip.com/
## Verilator
It is a tool used to convert Verilog code to C++ objects.
Visit: 
https://www.veripool.org/verilator/

# Analog version of stepup converter in eSim

## Schematic Diagram 
NOTE: For switching purpose a BJT is used, however a power n-channel MOSFET can also be used for that a model file must be created in eSim beforehand


![analog schematic diagram of sc](https://user-images.githubusercontent.com/43288153/157669728-ca62d6e3-4640-4d27-83ae-712b604af607.jpg)

fig4: schematic diagram of stepup converter

## Netlists

![netlists of analog sc](https://user-images.githubusercontent.com/43288153/157676669-dbc47ade-28f6-4121-b2b2-f040410aeb6e.jpg)

fig5: netlists

## NgSpice Plot
![analog sc waveform](https://user-images.githubusercontent.com/43288153/157670957-ebefb7b5-2044-4ad9-8fcc-c5ce2466d3a1.jpg)
fig6: waveform of stepup converter

# Mixed Signal based stepup converter

## Circuit Diagram in eSim
![sc_test schematic diagram](https://user-images.githubusercontent.com/43288153/157671378-5e195dab-eff9-4975-92c4-b032d48cb705.jpg)
fig7: circuit diagram of stepup converter
## Verilog Code
![verilog code](https://user-images.githubusercontent.com/43288153/157676196-54c1dbf3-7a58-4311-b8fa-3750b56d2950.jpg)
fig8: verilog code

## Makerchip
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
  `timescale 1ns / 1ps

module yt_pwm(
	input clk,
	output led
	);
// Create a simple counter

reg [7:0] counter =0;
always @ (posedge clk) begin
	if (counter < 5000) counter<= counter +1; // count until 5000
	else counter <=0;// reset counter
end

// create 80% duty cycle

assign led = (counter<80) ? 1:0; // assign LED to 1 if counter value is less than 80
endmodule

//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  led;//output
//The $random() can be replaced if user wants to assign values
		yt_pwm yt_pwm(.clk(clk), .led(led));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```
## Makerchip Plots
![makerchip plot](https://user-images.githubusercontent.com/43288153/157675141-15fbd795-b4ac-49f7-aff4-80c1f454fc0c.jpg)
fig9: makerchip plot

## Netlists
![mixed signal netlists](https://user-images.githubusercontent.com/43288153/157677916-e29f6a6b-2971-45b7-a70b-c8fa5b9caea2.jpg)
fig10: netlists

## NgSpice Plots
![Vin](https://user-images.githubusercontent.com/43288153/157678106-845a1bfc-7473-4942-b1da-57ea92a8cd80.jpg)
fig11: input voltage

![Vout](https://user-images.githubusercontent.com/43288153/157678268-646f999d-6118-4dc1-bb18-9ccea4df3586.jpg)
fig12: output voltage

## GAW Plots
![GAW output](https://user-images.githubusercontent.com/43288153/157678382-5974b37d-45bc-4bee-b269-0f2b562c8ba0.jpg)
fig13: GAW plots

## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

## Steps to run this project
1. Open a new terminal 
2. Clone this project using the following command:</br>
```git clone https:///github.com/dilipboidya/boost-converter.git ```</br>
3. Change directory:</br>
```cd eSim_project_files/sc_test```</br>
4. Run NgSpice:</br>
```ngspice sc_test.cir.out```</br>
5.  To run this project in eSim:
-  Run  eSim</br>
-  Load the project</br>
-  Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
1. Jaber Abu-Qahouq and Issa Batarseh, "Generalized Analysis of Soft-Switching DC-DC Converters", ISCAS 2000 - IEEE International Symposium on Circuits and Systems, May 2831, 2000, Geneva, Switzerland, pp. 507-510.
2. M. Ghanbari and S. M. Hosseini, "DC/DC boost converter design and development based on asynchronously paralleled switches," 2008 IEEE International Conference on Industrial Technology, 2008, pp. 1-5, doi: 10.1109/ICIT.2008.4608713.
3. Eric Coates, "Boost Converter,Boost converter Operation" https://learnabout-electronics.org/PSU/psu32.php [accessed Feb. 28 2022]
