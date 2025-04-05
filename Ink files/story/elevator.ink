=== Elevator_Arrival

//~ childState = Present

In front of {us_me()}, finally - a dark metal box. Seven meters tall, barely a meter wide. A slit to the right reveals it harbors, in fact, a door. # AUDIOLOOP: Sounds/liminal1.mp3

{childState ? Present: -> Elevator_Child.React1 ->}

- (top)
+ [{d_on}]
{stopping:
    - Purple gel marbled its surface; it reeked of death, damp stones, tree sap, iron and rust. -> top
    - I remembered how bloody handprints had stained the doors, a long time ago. We had wiped them clean. -> top 
    - We did this to honor the dead - so they would not be remembered for these final moments of terror, trying to flee what had greeted us as we descended. {alter (hope, 1)} -> top
    - Certainly, a futile endeavour - it would not bring them back. {alter (cold, 1)} {alter (hope, -1)}
}
    ** [{w_on}]
* [{m_on}]

- I pressed a hand against the cold metal of the machine, my heartrate elevated, sweat within my palm.

* [My goal all along.]
    This was precisely what I had been looking for. {alter (hope, 1)}
* [I had almost forgotten it existed.]
    I had almost forgotten its very existence. {alter (old, 1)}
* [I did not think it would still stand.]
    I did not think it would still stand, after all these years. {alter (hope, 1)}

- 
* [A way out of here.]
    I had been in the depths long enough - and I knew only one way out. {alter (fierce, 1)}
* [The key to the old world.]
    I longed to see the old world once more - even though I knew it would be nothing like I remembered. {alter (nostalgia, 1)}
* [Hope and survival.]
    Hope. Survival. After all this time, I still could not give up. {alter(fierce, 1)}

- -> Boarding_Elevator

=== Boarding_Elevator

-
* [{w_on}]

- A silent prayer to the goddesses - that the door would open, that {We_I(1)} could escape, was running through my mind.

* [I hit the button.]
    Nothing would stop me now. The button resisted, then yielded with a satisfying click. {alter (fierce, 1)}
* [I pressed the button shakily.]
    My hand was shaking as I pressed the button. Fear, apprehension, anticipation all swirled around me. {alter (fear, 1)}
* {child_trusts_me >= 3} [The child pressed the button before I did.]
    But it was Gwen that pressed the button, even before I could. {alter (hope, 1)}
    ** [{w_on}]
        They looked at me, their eyes completely hidden by their messy bangs. I smiled warmly.
-

* [{w_on}]

- {
    - childState ? Present && ( cold >= 3 || fierce >= 3): The child was startled
    - childState ? Present:We were both startled
    - cold >= 3 || fierce >= 3: I remained unbothered
    - else: I was startled
} 

<> by the violent, howling noise of metal against the rocks.

* [{w_on}]

- Rhythmic thumping and clacking echoed on the dark walls of the cave from the antique machinery {We_I(1)} had awoken.

* {cold >= 3} [I was lost in my thoughts.]
    In that moment, I was lost in my thoughts - almost in a sort of trance. Nothing would have disturbed me. {alter (cold, 1)}
* {fierce >= 3} [I grinned wildly.]
    I grinned wildly, looking at {childState ? Present:Gwen|the light behind the door} - we had won. {alter (fierce, 1)}
* [I waited in silence.]
    I waited in silence.
* {child_scared_of_me <= 3 && childState ? Present} [I put a hand on the child's shoulder.]
    I put a reassuring hand on Gwen's shoulder. "Fear not." {alter (child_trusts_me, 1)}
    -- (elevator_exit_child_relaxes)
    ** [{w_on}]
        Their tension seemed to dissipate. Their presence by my side brought me comfort and hope. {alter (hope, 1)}
* {child_trusts_me >= 5 && childState ? Present} [Gwen huddled to me for comfort.]
    Gwen huddled to me for comfort, and I held them close. {alter (child_trusts_me, 1)}
    -> elevator_exit_child_relaxes

-
* [{w_on}]

The door ground open with a fearsome noise, the screams of a ghostly menagerie all at once.

- (top)
+ [{d_on}]
{stopping:
    - A dim, ugly, green light poured out from the metal cabin. -> top
    - It smelled like piss, shit, mold and sweat, even after all those years. {alter (hope, -1)} -> top
    - The inside was covered in deep scratches. Claws and the pincers. {alter (hope, -1)} {alter (fear, 1)} -> top
    - I could not resist glancing over my shoulder, into the darkness behind {us_me()}. {alter (fear, 1)}
}
    ** [{w_on}]
* [{m_on}]

- {We_I(2)} climbed into the elevator, and the door shut tight on {our_my(1)} heels.

* [{w_on}]

<br>
<br>
<br>
<br>
<br>
<br>

{We_I(2)} waited.

-

* [{w_on}]

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

The climb must have lasted ten minutes.

-

* [{w_on}]

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

It felt like hours.

-

* [{w_on}]

-> Exiting_Elevator

=== Exiting_Elevator

<br>
<br>
<br>

When the doors opened, a violent, exulting light brought {us_me()} to {our_my(1)} knees.

-

* [{w_on}]

- -> Outside_World


=== Elevator_Child

= React1

+ [{w_on}]

- Gwen was looking at it with a solemn look on their face. They seemed to know on instinct that it was something important.

->->