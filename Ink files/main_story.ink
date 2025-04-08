
INCLUDE logic\functions.ink

INCLUDE logic\variables.ink

INCLUDE logic\parchment_button.ink

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

// SET TO FALSE WHEN MAKING THE WEB EXPORT

VAR debug = false

{debug: -> Debug}

An interactive fiction scroll, quilled by these alphabetical grenblyns: # CLASS: end
alyyyd, fae.exe, Grizembrrr and Nuelijarma. # CLASS: end

-> Parchment_Button (start) ->
# CLEAR
- -> Colony

=== Debug

* [Go to "Elevator"]
    -> Elevator_Arrival
* [Go to "Chrys_Test"]
    -> Chrys_Test

=== Intro

-> Outside_World