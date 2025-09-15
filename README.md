Reaction Timer

[This is the official report of this project.](https://github.com/tenzytaec26/Reaction-Timer/blob/main/Report_Reaction%20Timer.pdf)


This project designs, simulates and tests a simple programmable light display using a state machine. The programmable light system follows a predefined instruction set and operates using a read-only memory(ROM) component that stores a sequence of commands. This system consists of two primary VHDL files:
* Lights.vhd: implements the state machine that controls the execution of instructions
* Lightrom.vhd: defines the read-only memory that controls the execution of instructions.>


🚀 Features
The lightdisplay consists of a state machine and it contains the following main components: 
1. Program Counter
2. Instruction Register
3. Light Register
4. ROM

The Light ROM has two main states: sFetch and sExecute.

This LightROM can take in 6bit instructions and there is also a speed button where the first button makes the simulation two times faster and the second button makes it four times faster. The official report also contains a link to the video of the simulation. 

🛠️ Technologies Used

Language: VHDL
Tester: GTKWave
