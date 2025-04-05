=== function alter ( ref _variable, value )
    ~ _variable += value
    
=== function We_I (n)
    {
        - n >= 2:
            ~ return "{childState ? Present:We|I}"
        - else:
            ~ return "{childState ? Present:we|I}"
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