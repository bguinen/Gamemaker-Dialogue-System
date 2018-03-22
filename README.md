# Dialog System for Gamemaker Studio 2

## Description

A dialog system that uses JSON objects and Gamemaker data structures to map out dialog trees. Also features dynamic textbox creations and a simple support structure for character/interaction animations.

It is also set up in a way to allow for further customization. 
Before doing so, check out the diagrams and ![Further Reading](notes/Further%20Reading.txt) note to make sense of the JSON file structure and how this system uses it:

### Object Structure
> Outlines the structure of one character's JSON object 
> and details how data is stored in each of the child objects. 
> Also covers what data structures are used in the Gamemaker 
> Project to store respective data. They are referenced by 
> their in-engine variable names.  
![Object Structure](Diagrams/Object_Diagram.png?raw=true "Object Structure Diagram")


### Dialog Tree Structure
> A macro view of how the dialog and response objects are used
> to navigate a "Dialog Tree". Also included some examples on 
> how to augment this system for additional functionality.
> Hopefully this will help you conceptually follow how this system functions.
![Dialog Tree Structure](Diagrams/Tree_Diagram.png?raw=true "Dialog Tree Diagram")


## Installation

### Prerequisites
* Gamemaker Studio 2

To open this in Gamemaker Studio, clone or download this repository, then open the "Dialog System.yyp" inside Gamemaker Studio 2.
Once you have the project loaded, run the game once. This will create the directory in the default "working_directory" that Gamemaker uses to read **and** write.
Your new directory can be found here:
> "%LOCALAPPDATA%/gamedir/"
Where "gamedir" is the name of the project.

Once this directory is created, copy the [character's json files](Dialog%20JSON%20Files/) to it. 
As this is where the system will load character files from, use this directory to store any future character.json / .ini / .dat / .bin files.

## Contact

Email me if you have questions, comments, or suggestions
Bguinen@gmail.com 
