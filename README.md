# boost-converter
A boost converter is  designed and simulated  using eSim and maker chip tools.

# Mixed Signal Circuit Design and Simulation Marathon
## Boost Converter

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Makerchip](#makerchip-1)
- [Makerchip Plots](#makerchip-plots)
- [Netlists](#netlists)



- [Acknowlegdements](#acknowlegdements)
- [References](#acknowlegdements)

## Abstract
This paper presents a design of mixed signal on step-up converter to boost the input voltage. The step-up converter presented here offers a good efficiency performance. The proposed converter is designed in eSim tool, makerchip and Verilator.

## Reference Circuit Diagram
![New Doc 02-28-2022 19 02](https://user-images.githubusercontent.com/43288153/156871589-75ae5d7d-4fbd-4467-a820-e64217985ea2.jpg)
fig1: schematic diagram of boost converter

![New Doc 02-28-2022 22 02_1](https://user-images.githubusercontent.com/43288153/156871644-ca072e83-03f1-4d62-9ae0-27080c7595e8.jpg)
fig2: circuit diagram of boost converter

## Reference Waveform
![WhatsApp Image 2022-02-28 at 11 25 00 PM](https://user-images.githubusercontent.com/43288153/156871763-776cfdf1-fbde-406c-9a15-04a88ec3c403.jpeg)

## Circuit Details
A step-up converter is also known as boost
converter, as the name suggests it steps up the input voltage to higher voltage, since the power is always conserved therefore the current in the output is lower than the input current and thus power is conserved. A typical step-up converter consists of a switch (transistor) and a diode as a semiconductor device, and storing element: inductor and a capacitor, the former is to store electrical energy in the form of magnetic energy and the later is to smooth the output voltage i.e., to filter out the ripple.
The working principle of the step-up converter can
be explained as follows
1) When the transistor is ON state, current starts
flowing through the inductor stores electric energy by generating magnetic field around it. 
2) When the transistor is turned OFF, inductor will
pump out its stored energy through the diode and current will start flowing through it[2]. At higher switching speed inductor will not be able
to discharge fully in between charging stages which as a result, a voltage higher than the input voltage will be developed at its output. Using Verilog the PWM signal can be generated to drive the gate of the transistor.

##

## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
1. Jaber Abu-Qahouq and Issa Batarseh, "Generalized Analysis of Soft-Switching DC-DC Converters", ISCAS 2000 - IEEE International Symposium on Circuits and Systems, May 2831, 2000, Geneva, Switzerland, pp. 507-510.
2. M. Ghanbari and S. M. Hosseini, "DC/DC boost converter design and development based on asynchronously paralleled switches," 2008 IEEE International Conference on Industrial Technology, 2008, pp. 1-5, doi: 10.1109/ICIT.2008.4608713.
3. Eric Coates, "Boost Converter,Boost converter Operation" https://learnabout-electronics.org/PSU/psu32.php [accessed Feb. 28 2022]

