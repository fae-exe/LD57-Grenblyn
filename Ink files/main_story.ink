
INCLUDE logic\functions.ink

INCLUDE logic\variables.ink

/*
Available character variables:
hope, fierce, despair, old
*/

INCLUDE beginning.ink


INCLUDE story\endings.ink
INCLUDE story\elevator.ink



// <br> = line break
// &nbsp; = non-breaking space

// # IMAGE: Images/Grandma1.PNG
// # AUDIOLOOP: Sounds/loop2.mp3

# THEME: light

// SET TO FALSE WHEN MAKING THE WEB EXPORT

VAR debug = false

{debug: -> Debug}

* [🪶 Start writing →]

- -> Elevator_Arrival

=== Debug

* [Go to "Elevator"]
    -> Elevator_Arrival
* [Go to "Chrys_Test"]
    -> Chrys_Test

=== Intro

-> Outside_World