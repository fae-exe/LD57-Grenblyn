// --->>> BASIC OPERATIONS <<<---
//
//      - Easily called in-line
//      - Add logic here as needed
//      - Acts as a blackbox/abstraction
//

=== function alter ( ref _variable, value )
    ~ _variable += value

=== function i_get (item)
    ~ inventory += item
    
=== function i_lose (item)
    ~ inventory -= item

=== function i_has (item)
    ~ return (inventory ? item)

=== function learn ( ref _list, knowledge )
    ~ _list += knowledge

// --->>> GRAMMAR & FORMATING <<<---
//
//      ## Reactive text formating based on the game's state
//

=== function We_I (n)
    {
        - n >= 2:
            ~ return "{childState ? Present:We|I}"
        - else:
            ~ return "{childState ? Present:we|I}"
    }
    
=== function We_I_are (n)
    {
        - n >= 2:
            ~ return "{childState ? Present:We are|I am}"
        - else:
            ~ return "{childState ? Present:we are|I am}"
    }
    
=== function We_I_were (n)
    {
        - n >= 2:
            ~ return "{childState ? Present:We were|I was}"
        - else:
            ~ return "{childState ? Present:we were|I was}"
    }
    
=== function us_me ()
    ~ return "{childState ? Present:us|me}"
    
=== function our_my (n)
    {
        - n >= 2:
            ~ return "{childState ? Present:Our|My}"
        - else:
            ~ return "{childState ? Present:our|my}"
    }

// --->>> LIST MANAGEMENT <<<---
//
//      --->>> pop :
//      Gets the minimum element of a list, and removes it from that list
//

=== function pop(ref _list) 
    ~ temp el = LIST_MIN(_list) 
    ~ _list -= el
    ~ return el 

// --->>> DATA FUNCTIONS <<<---
//
//      ## Make the connexion between lists items and data we want to store "inside" of them
//      - We can add randomness in the return values as needed

=== function _DF_name (item)

    {item:
        - Pickaxe:
            ~ return "pickaxe"
        - Trenchcoat:
            ~ return "trenchcoat"
        - Rope:
            ~ return "rope"
        - FlintKnife:
            ~ return "flint knife"
    }
    
=== function _DF_Name (item)

    {item:
        - Pickaxe:
            ~ return "Pickaxe"
        - Trenchcoat:
            ~ return "Trenchcoat"
        - Rope:
            ~ return "Rope"
        - FlintKnife:
            ~ return "Flint knife"
    }
    
// --->>> FLOW CONTROL <<<---
//
//      --->>> came_from :
//      Tests whether the flow passed a specific gather point since the last choice by the player.
//
//      --->>> seen_very_recently :
//      Tests whether the flow passed a specific gather point within the last 3 turns
//      (i.e. choices by the player)

=== function came_from(-> x) 
    ~ return TURNS_SINCE(x) == 0

=== function seen_very_recently(-> x)
    ~ return TURNS_SINCE(x) >= 0 && TURNS_SINCE(x) <= 3

