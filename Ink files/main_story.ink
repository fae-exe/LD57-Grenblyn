
INCLUDE logic\functions.ink

INCLUDE logic\variables.ink

/*
Available character variables:
hope, fierce, despair, old
*/

INCLUDE story\colony.ink
INCLUDE story\endings.ink
INCLUDE story\elevator.ink
INCLUDE story\echoing_cave.ink
INCLUDE story\lost_child.ink

INCLUDE chrys_debug.ink

// <br> = line break
// &nbsp; = non-breaking space

// # IMAGE: Images/Grandma1.PNG
// # AUDIOLOOP: Sounds/loop2.mp3

# THEME: light

// SET TO FALSE WHEN MAKING THE WEB EXPORT

VAR debug = false

{debug: -> Debug}

An interactive fiction, by the alphabetical grenblyns alyyyd asmar, fae.exe, Grizembrrr and Nuelijarma. # CLASS: end

* [🪶 Start writing →] # CLEAR

- -> Colony

=== Debug

* [Go to "Elevator"]
    -> Elevator_Arrival
* [Go to "Chrys_Test"]
    -> Chrys_Test

=== Intro

-> Outside_World