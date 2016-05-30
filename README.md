# Summative Task

## Overall goal

My summative task will be to create a playable simulation of the theory of endosymbiosis.

The player starts off as a prokaryotic cell, containing only a nucleus. You traverse the water of a bog containing aerobic proteobacterium and cyanobacterium, as well as harmful parasitic bacterium. The goal for the cell is to absorb multiple aerobic proteobacterium and cyanobacterium in the hopes of becoming a eukaryotic cell.

The cell will be guided using the mouse on the computer. The two non-agressive bacterium will move randomly, and the parasitic bacterium will travel towards the cell slowly.


## Sub-goals

* extend Mover class I made for Brick Breaker to create the controllable cell
* extend the Bouncer class to create all of the other bacterium, however, unlike the Bouncer they will not bounce off objects, they will be absorbed
* use vectors to move all of the different cells around the screen
* harmless bacteria move randomly
* harmful bacteria move slowly towards the main cell

## Game Information

This game is based off the theory of endosymbiosis, which describe how the first eukaryotic cells came to be. It is theorized that a prokaryotic cell would have engulfed cyanobacterium and proteobacterium due to the prokaryote trying to prey on the bacterium, or the bacterium being parasitic. Once absorbed the bacterium manage to avoid digestion and survuve within the cytoplasm. The new bacterium then carrys out its normal functions. Cyanobacterium go through photosynthesis to create energy. Proteobacterium use air to create energy. The cell then uses the energy created by the bacterium for its processes. Eventually the bacterium become part of the cell and are considered to be organelles, and the cell is considered to be a eukaryotic cell.

# Reflection


## 1. What (if anything – although there is probably at least something) does the user need to know about what your program does?

        The program is a simulation of endosymbiosis. It shows how a prokaryotic cell could have become a eukaryotic cell. As the user you control a cell trying to avoid red parasitic bacterium, and absorb green cyanobacterium and orange proteobacterium.

## 2. What (if anything) does the user need to know to operate your program (keystrokes, et cetera)?

        Use your mouse to guide the cell around the swamp. The cell will follow the mouse, always changing its direction.

## 3. How does your program show evidence of your understanding of object-oriented programming concepts like encapsulation and inheritance?

        I have used multiple classes. I have used global variables that work between classes. I have created multiple get functions to return local variables from a class. I have passed intances of a class as a parameter in certain functions, so the other class can access the passed class' values.

* Multiple classes
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Simulation.pde#L2-L5
* Global variables
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Simulation.pde#L7-L12
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Cyano.pde#L50-L52
* Get functions
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Cell.pde#L39-L46
* Passed instances
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Simulation.pde#L31-L36
** https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Cyano.pde#L23

## 4. What evidence can you provide that your program is human-readable?
        
        Heavy amounts of commenting plus clearly named function names allows my code to be human readable
* https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Parasite.pde#L22-L23
* https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Parasite.pde#L3-L10
* https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Parasite.pde#L46
        
## 5. What is the most important algorithm, or algorithm(s), in your program?
        
        The cell collision algorithm is the most important algorithm in my code. It works by checking all of the points around the edge of the cell and seeing whether any of them share the same location with the edge of a bacterium. 

* https://github.com/rsgc-linsdell-j/summative-task/blob/master/Simulation/Parasite.pde#L46-L65


## 6. How have you made your program easy to use?
    
    The only controls the program requires is the use of the mouse. It is also very clear how the game is played, as the second the game begins, the cell starts absorbing bacterium. Also the player will learn quickly that the red bacterium cause instant death.
    

## 7. How have you made correct use of source control?
        
I have made frequent commits that are small and have detailed names. Here are some examples:

* https://github.com/rsgc-linsdell-j/summative-task/commit/bf814c89fe5f34c95b6b71143ea0c0e96bd83a68
* https://github.com/rsgc-linsdell-j/summative-task/commit/29e199cb4cecab3a15cd0e89154b2d6e285d633b
* https://github.com/rsgc-linsdell-j/summative-task/commit/a9f82b537d2a6d28b9189b788c3f20252a930851
* https://github.com/rsgc-linsdell-j/summative-task/commit/2e62e7aaee8a2d96f2f9ff601868189db84ba72e
* https://github.com/rsgc-linsdell-j/summative-task/commit/067fc4fbc5001e027d0dbf9323080e2b30be2b44
* https://github.com/rsgc-linsdell-j/summative-task/commit/9cdc9b03c4aaeb45aa6bedfef195de98c32a2db3





