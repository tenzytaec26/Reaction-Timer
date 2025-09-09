Reaction Timer

[This is the official report of this project:](https://github.com/tenzytaec26/Reaction-Timer/blob/main/Report_Reaction%20Timer.pdf)


This report documents the design, simulation and testing of a simple programmable light display using a state machine. The programmable light system follows a predefined instruction set and operates using a read-only memory(ROM) component that stores a sequence of commands. This system consists of two primary VHDL files:
* Lights.vhd: implements the state machine that controls the execution of instructions
* Lightrom.vhd: defines the read-only memory that controls the execution of instructions.>


📜 Description
1. Designing LightsRom and Lights For the Lights Display>
The goal of this section of the project is to use VHDL to design a simple read-only
memory(ROM) that holds a program and a state machine that executes stored instructions.
a. VHDL Design:
The lights display consists of a state machine that can execute eight different instructions over
a 16-line instruction program. The main components include:
1. Program Counter: keeps track of the current instruction.
2. Instruction Register: holds the current instruction
3. Light Register: An 8-bit register that modifies the display state.
4. ROM: Stores a predefined instruction set to be executed.
The following is an image of the Lights.vhd that was implemented:

![Figure 1. Image of the first part of lights.vhd.]()

##🚀 Features
List the main features of your project using a bulleted list.
Example:User authentication (sign up, log in)
Real-time data synchronization
Responsive design for mobile and desktop

🛠️ Technologies Used
<List the key technologies, libraries, and frameworks you used to build the project.>
Frontend: React, Tailwind CSS, Vite
Backend: Node.js, Express.js
Database: MongoDBOther: Git, REST APIs

⚙️ Installation & Usage
<Provide clear, step-by-step instructions on how to set up and run the project locally.>
Prerequisites
<List any dependencies required to run the project.>
Node.js (version <your-version>)npm or yarn

Steps
Clone the repository:git clone [https://github.com/](https://github.com/)<your-username>/<your-repo>.git
Navigate to the project directory:cd <your-repo>
Install the dependencies:npm install
Run the application:npm start


📄 License
<Specify the license under which your project is distributed. The MIT License is a popular choice for open-source projects.>
This project is licensed under the <License Name> - see the <LICENSE> file for details.

🤝 Contributing
<Explain how others can contribute to your project. Mention if you're open to pull requests, bug reports, or feature suggestions.>
Fork the repository.
Create your feature branch (git checkout -b feature/AmazingFeature).
Commit your changes (git commit -m 'Add some AmazingFeature').
Push to the branch (git push origin feature/AmazingFeature).
Open a Pull Request.
