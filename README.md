## Description
This is a 2D game developed as a Final Project for CS50’s Intro to Computer Science Course on HarvardX, using the open-source Godot 4.3 Game Engine.

In “Dumplings Big Poyo Adventure,” players take on the role of a brave little bird named Dumpling, who must navigate through a bustling city to reach the safety of the forest.

*The game features a Collecting / Survival Gameloop that relies on object-oriented programming, for-loops, conditionals, and dictionaries for its Functionality.

## Game Loop
Fly through the city and evade enemies while collecting seeds to beat a previous high score and make it to the forest.

Players can enjoy the charming sound effects and visuals inspired by Dumpling’s real-life pet canary namesake.

## Features
- 2D Sprite Art and Animations
- Controller Support 
- Cute sound effects 
- Simple gameplay
- Background bird sounds courtesy of real-life pet canary, named Dumpling

## Installation & Local Play in Godot
### Dependencies:
	1	Operating System: Godot 4.3 supports Windows, macOS, and Linux.
	2	Graphics Drivers: Updated graphics drivers are essential. For Linux, ensure you have the latest Mesa drivers.
	3	OpenGL/Vulkan: Godot 4.3 requires OpenGL 3.3 or Vulkan 1.1 compatible hardware.
	4	Libraries: Various libraries such as zlib, OpenSSL, and others are required. These are usually handled by package managers on Linux distributions or bundled w/ the Windows and Mac executables.

### Install Godot 4.3:
	•	Go to Godot Engine’s website and download the open-source executable file https://godotengine.org/download
( Godot is Self-Contained and does not require installation, simply run the executable. )
### Open the project in Godot:
	•	Open Godot, click on the “Import” button, and navigate to the project folder (“Dumplings Big Poyo Adventure”)
### Run the project:
	•	Click on the play button or press F5 to run the game.

## Usage
### Keyboard
- Use the arrow keys to move left and right
- Press [Space] to jump.
- Press [P] to pause the game or resume
- Press [Esc] to quit to title screen
### Controller
- Use the D-Pad to move left and right
- Press [Cross / A] to jump.
- Press [Start] to pause the game or resume
- Press [Select / Share] to quit to title screen

## Screenshots
![Screenshot1](./Screenshot%20-%20Title%20Screen.png)
Main Title scene that kickstarts Dumpling’s Adventure, showcasing the Weather2D tool’s parallax backgrounds and cloud effects.

![Screenshot2](./Screenshot%20-%20Gameplay.png)
Dumpling (player) flying through the city while evading Buzzing Bees & Sugar Gliders (enemies) and collecting seeds.
    •	The UI element (top left) displays the number of seeds collected.

![Screenshot3](./Screenshot%20-%20Game%20Over.png)
Game Over overlay displaying High Score of seeds collected that run and the Total seeds collected from all runs.

## Project Structure
- `Assets/`: Contains all the 2D assets used in the game. Includes:
	•	2D Sprite Art (jpegs, png) used in character animations and ui elements.
	•	Sound Effects and Music (mp3)

- `Scenes/`: Contains all the .tscn files. These are used by Godot to nest nodes together that contain all the animations, UI layers, and 2D Physics Collision objects. Nodes can emit signals as well on conditional and time-based requirements.

- `Scripts/`: Contains all the GDscript files. These provide the instructions and create interactive elements for the game by extending the physics, initialization, and node functionalities as well as connecting emitted signals between Scenes to other scripts via referencing.

- `Addon/`: Contains the Weather2D tool used for the Title and Main menus. This tool created by ………. combines parallax backgrounds w/ cloud and rain animations.  

- `Credits/`: Contains all the credits for art, music, and the Weather2D tool used within the game.

- ‘savefile.txt’ is used to store the total amount of seeds collected from all runs (Total, stored as 32byte) as well as the most seeds collected in a single run (High Score, stored as 16byte)

- ‘LICENSE.md’ and ‘README.md’ files

## Help
	•	If Godot fails to run the game, click on the edit button to open the project in editor and wait for a pop-up window showing the project’s GDscript dependencies list.
	•	Click on the ‘fix dependencies’ button to have Godot automatically search and update script file locations. 
	•	Reload the Project, and click Run or press F5.
	•	If the game does not run, then manually update the script dependencies by right-clicking on each of the .tscn files in the ‘Scenes/‘ folder and selecting ‘view dependencies’. 
( All base GDscript files are in the ‘Scripts/‘ folder, and the Weather2D tool scripts are located in the ‘Addons/Weather2D/Scripts/‘ folder. )

## Author
### Hesler Hernandez
[@a_cuban_kirby] https://www.instagram.com/a_cuban_kirby

Aspiring Game Developer native from Cuba - Studying at ACC College 

## Video Demonstration
### Youtube Link
https://www.youtube.com/watch?v=W8dZV4DPzVo

## License
This project is distributed under the terms of the MIT License. This permissive license allows you to use, copy, modify, merge, publish, distribute, sublicense, and sell copies of the software, provided that the original copyright notice and permission notice are included in all copies or substantial portions of the software. The software is provided “as is,” without any warranty of any kind.
For more details, please refer to the LICENSE.md file.

## Acknowledgments
- Thanks to my wonderful Fiancé 
Diana Martinez 
for her amazing sprite artwork used for all characters. 
[@theromangoddess] https://www.instagram.com/theromangoddess

- Thanks to the CS50 staff for their support.

- Thanks to YouTube channels Bitlytic and GDQuest for their tutorials and guides on learning to use Godot. https://youtube.com/@bitlytic?si=vEL9yLj1YPks-ICb
https://youtube.com/@gdquest?si=K-LEus4rbDKAIZgB

- More credits and acknowledgments can be found in the ‘Credits/‘ folder.

