=== Echoing_Caves
~ childState = Present
-
*[{w_on}]

- Suddently, a familiar voice caught my attention.
*[It was ex-lover's voice.]
My heart missed a beat when I heard Mariana's voice calling my name.
*[It was my sisters-in-arms's voice.]
Yadviga, Eun-Jo, Najla, Onyx, I could hear them speaking all as one.
*[It was my childhood friend's voice.]
Kidada. I can't believe she made it out{childState ? Present: too.|.}
*{childState ? Present} [It was Gwen mother's voice.]
Gwen reacted to the voice immediately, planting her pleading gaze in mine before signing frantically what I understood to be 'Mom'.

-
*[{w_on}]
- The voice seemed so close, {We_I(1)} pratically started running towards it.
*[The voice was screaming in pain.]
Some kind of creatures were after her, {We_I(1)} had to act fast.
*[The voice was asking for help.]
The voice said she was thirsty, she begged {us_me()} to bring her water forthwith.
*[The voice was calling out to {us_me()}.]
She said she has been waiting for {us_me()} but now that we were here we could join her.

-
*[{w_on}] {We_I(2)} decided to follow her voice and find its source.
-
*[{We_I(2)} took left]
It led {us_me()} to another tunnel.
*[{We_I(2)} took right]
It led {us_me()} to another tunnel.
*[{We_I(2)} went straight ahead]
It led {us_me()} to another tunnel.

-
*[{w_on}]
- It was hard to define where it came from.
*[{We_I(2)} took left]
{We_I(2)} faced a bunch of tunnels difficult to negotiate.
*[{We_I(2)} took right]
{We_I(2)} faced a bunch of tunnels difficult to negotiate.
*[{We_I(2)} went straight ahead]
{We_I(2)} faced a bunch of tunnels difficult to negotiate.

-
*[{w_on}]
- The voice kept escaping relentlessly as {We_I(1)} tried to track it.
*[{We_I(2)} took left]
Yet another tunnel mouth but narrower.
*[{We_I(2)} took right]
Yet another tunnel mouth but narrower.
*[{We_I(2)} went straight ahead]
Yet another tunnel mouth but narrower.

-
*[{w_on}]
- {We_I(2)} were hearing the voice echoing on the walls uninterruptly.
*[{We_I(2)} took left]
{We_I(2)} arrived at an empty cave hall.
*[{We_I(2)} took right]
{We_I(2)} arrived at an empty cave hall.
*[{We_I(2)} went straight ahead]
{We_I(2)} arrived at an empty cave hall.

-
*[{w_on}]
- {We_I(2)} had the heavy feeling {childState ? Present: we were|I was} going deeper an deeper into the unknown.
*[{We_I(2)} took left]
It was connected to a three ways crossroad.
*[{We_I(2)} took right]
It was connected to a three ways crossroad.
*[{We_I(2)} went straight ahead]
It was connected to a three ways crossroad.

-
*[{w_on}]
- Without thinking about how we would find {our_my(1)} way back in this maze {We_I(1)} let the voice guide {us_me()} to her.
*[{We_I(2)} took left]
A dead end.
*[{We_I(2)} took right]
A dead end.
*[{We_I(2)} took straight ahead]
A dead end.

- 
*[{w_on}]
- <br>
<br>
<br>
<br>
It was a mistake.
- 
*[{w_on}]
- {We_I(2)} should never have had come down there, there was nobody here.
- 
*[{w_on}]
- 
Nobody human.
#IMAGE: 
# AUDIOLOOP: Sounds/sad1.mp3
- (echoing_cave_description)
*[Describe the voice.]
The din of voice echoes was deafening in this place as if it was trapped in these mezmerising crystal.
**[Describe the crystal's aspect.] The crystals took weird humanoïde shapes, the bigger ones had the most defined contours, whereas the smallest were more deformed as if they melted over time.
**[Describe the cavern's floor.] From the crystals was oozing a strange dark sticky oil, dripping and spreading on the cavern's floor.
-> echoing_cave_description
*[Describe the place.]
Every surface of this cavern were covered with eerie mushrooms-like plants growing from the cavern's ground to the ceiling into the cracks.
**[Describe the mushrooms's aspect.] Clusters of small bluish beigns filled the cave, they were slowly moving as if dancing or pumping. It could have been vegetal or animal or mushroom or something else.
**[Describe the ambiant light.] These mushrooms gave off a soft blue-violet light that soothed the room.
*[Describe the vibe.]
While logic screamed at {us_me()} to flee, something made {us_me()} want to stay here. This was it, {We_I(1)} had reached the voice, {We_I(1)} could be satisfied with {childState ? Present:ourselves|myself} and rest.
**[Describe the voice's aspect.] The echoes whispering alltogether at the same time were creating an hypnotic background buzz.
**[Describe the mist.] Gradually released into the air, a cloud of spores settled over the room, and its distinctive scent of fresh dirt calmed {our_my(1)} nerves and minds.
-> echoing_cave_description
*{childState ? Present} [Let Gwen describe.]
The voice turned into a whisper, then multiple whispers, they wanted {us_me()} to stay forever, it got very scary and was very dangerous as in life-threatening.
**[Gwen's description of each scary thing in there.] Scary rocks, scary sound, scary liquid.
**[Gwen's description of each dangerous thing in there.] Dangerous scent, dangerous light, dangerous peacefullness, dangerous plants.
-> echoing_cave_description
*[Describing this won't help anyone, {We_I(1)} should better write about how to get out.]
We leave.

- 
*[{w_on}]
- 

-> Picking_Direction






=== Defend_With_Flint_Knife
-> DONE
=== Defend_With_Pickaxe
-> DONE
=== Defend_With_Weapons
-> DONE
=== Struggle_Blindly
-> DONE



-> DONE

VAR creatureDistance = 8



LIST Directions = Left, Right, Ahead
LIST ExitTypes = Good, Bad1, Bad2

=== function pop_random (ref _list)
    ~ temp _tmp_element = LIST_RANDOM (_list)
    ~ _list -= _tmp_element
    ~ return _tmp_element

=== Picking_Direction

~ ExitTypes = LIST_ALL (ExitTypes)
~ Directions = LIST_ALL (Directions) // Remplit les deux listes

<- Exit (pop_random (ExitTypes), pop_random (Directions))
<- Exit (pop_random (ExitTypes), pop_random (Directions))
<- Exit (pop_random (ExitTypes), pop_random (Directions))

-> DONE

=== Exit (type, direction)
{
   - type == Good:
    <- Good_Exit (direction)
   - type == Bad1:
    <- Bad_Exit1 (direction)
   - type == Bad2:
    <- Bad_Exit2 (direction)
}

-> DONE

=== Good_Exit (direction)
{shuffle: 
  - {_DF_to_direction (direction)}, {We_I(1)} saw a strange door inscribed with glyphs. <>
  - {_DF_to_direction (direction)}, a bone arch made entirely of human femurs. <>
  - {_DF_to_direction (direction)}, there was a dark, circular hole, dripping with blood. <>
  - {_DF_to_direction (direction)} was a dried out ford passage. <>
  - {_DF_to_direction (direction)}, the remains of what was once a monkey bridge ran down a steep cliff. <>
  - {_DF_to_direction (direction)}, cave paintings of terrifying monsters adorned the rocks. <>
  - {_DF_to_direction (direction)}, the roots of an underground tree supported the walls, preventing them from collapsing. <>
  - {_DF_to_direction (direction)}, there was a perfectly dark corridor. <>
  - {_DF_to_direction (direction)}, some sort of sign standing there was written in a runic language. <>
  
}

+ [{We_I(2)} {~decided to go|went|chose to go} {_DF_direction_name (direction)}.]
-> Picked_Good_Exit

=== Bad_Exit1 (direction)

{shuffle: 
  - {_DF_to_direction (direction)}, a puddle of goo sat in the middle of the road. <>
  - {_DF_to_direction (direction)}, from the ceiling stalactites were dripping droplets of a thick fluid. <>
  - {_DF_to_direction (direction)}, along the staircase was running a dark liquid. <>
  - {_DF_to_direction (direction)}, rays of light diffracted in a human sized gem pillar. <>
  - {_DF_to_direction (direction)}, crystal vein starts were visible here and there on the stone's surface. <>
  - {_DF_to_direction (direction)}, lanterns of some sort wedged into the walls illuminated the path. <>
  - {_DF_to_direction (direction)}, the tunnel exuded a soothing atmosphere. <>
  - {_DF_to_direction (direction)}, a forged metal gateway was left ajar, its curious hospitality inviting us to use it. <>
}

+ [{We_I(2)} {~decided to go|went|chose to go} {_DF_direction_name (direction)}.]
-> Picked_Bad_Exit

=== Bad_Exit2 (direction)

{shuffle: 
  - {_DF_to_direction (direction)} a distant purple light escaped from the tunnel's end. <>
  - {_DF_to_direction (direction)} a milky fog filled completely the room. <>
  - {_DF_to_direction (direction)}, small blue spots were floating in all directions. <>
  - {_DF_to_direction (direction)}, an half-buried antique machine was producing a neverfading buzzing. <>
  - {_DF_to_direction (direction)}, the smell of the soil once it had been dug tingled my nostrils, moles must have been nesting there. <>
  - {_DF_to_direction (direction)}, a great crack inside of which a sweet voice was humming a nursery rhyme. <>
  - {_DF_to_direction (direction)}, patches of strange plants were waving quietly in unison. <>
  - {_DF_to_direction (direction)}, a bed of wild indigo purslane-like seedlings was covering animal carcasses. <>
  - {_DF_to_direction (direction)}, upon an old rugged barrier were growing a bunch of mushrooms. <>
}

+ [{We_I(2)} {~decided to go|went|chose to go} {_DF_direction_name (direction)}.]
-> Picked_Bad_Exit

=== function _DF_to_direction (direction)
  {
    - direction == Right:
      ~ return "To the right"
    - direction == Left:
      ~ return "To the left"
    - direction == Ahead:
      ~ return "Ahead of {us_me()}"
  } // on peut mettre de l'aléatoire entre les guillemets pour varier les choses

=== function _DF_direction_name (direction) 
{
    - direction == Right:
      ~ return "right"
    - direction == Left:
      ~ return "left"
    - direction == Ahead:
      ~ return "ahead"
  } // on peut mettre de l'aléatoire entre les guillemets pour varier les choses
  
  VAR distanceToExit = 3

=== Picked_Good_Exit

~ distanceToExit -= 1
~ creatureDistance -= 1

-> Check_Exit -> // Même structure que pour check creature
-> Check_Creature ->

-> Picking_Direction

=== Picked_Bad_Exit

~ creatureDistance -= 1// La diff principal avec au dessus c'est que tu réduits pas la distance à la sortie

// pas besoin de check si on se rapproche de la sortie, mais tu peux rajouter du fluff pour montrer qu'on est en train de se perdre
- {stopping: 
- You're doomed.
- A dark, disturbing wind was blowing from the depths. {We_I(2)} felt as if the earth was going to crush {us_me()}, as if the darkness was pulling on {our_my(1)} bones.
- Last phrase {~ zaigudkaz | "zfzz | zfefze }
}
-
*[{w_on}]
-

-> Check_Creature -> 

-> Picking_Direction

=== Check_Exit

{
   - distanceToExit <= 0: -> Exit_Echoing_Caves
   - distanceToExit <= 1 && not Getting_Closer1: -> Getting_Closer1-> 
   - distanceToExit <= 2 && not Getting_Closer2: -> Getting_Closer2-> // faut créer les noeuds pour ça mais t'as compris l'idée
}

->->

= Getting_Closer1

->->

= Getting_Closer2
I could tell 
*[{w_on}]
->->

=== Check_Creature

{
  // - creatureDistance <= 0 && not Caught_Us: -> Caught_Us
   - creatureDistance <= 1 && not Very_Close: -> Very_Close ->
   - creatureDistance <= 3 && Close : -> Close ->
   - creatureDistance <= 5 && not Screams_In_Distance : -> Screams_In_Distance ->
   - creatureDistance <= 7 && not Beast_Tracks: -> Beast_Tracks ->
}

->->

//= Caught_Us

The creature had caught {us_me()}. {We_I(2)} had no choice but to try and defend {childState ? Present:ourselves|myself}.
{
   - i_has (FlintKnife): -> Defend_With_Flint_Knife
   - i_has (Pickaxe) : -> Defend_With_Pickaxe
   - i_has (FlintKnife) && (Pickaxe) : -> Defend_With_Weapons
   - else: -> Struggle_Blindly
} 

= Very_Close

The creature was right behind {us_me()}. {We_I(2)} could hear its bated breath echoing against the stones.
+ [{w_on}]
- ->->

= Close

The rumble of its body digging its way to {us_me()} through the narrow tunnels reach {our_my(1)} ears. It was getting closer.
+ [{w_on}]
- ->->

= Screams_In_Distance

{We_I(2)} could hear the fiend's screams in the distance. It was hunting {us_me()}.

+ [{w_on}]
- ->->

= Beast_Tracks

A fine stone dust was still hanging in the air where the sides of the cavern were scraped and eroded. The ghastly stalker was there.

+ [{w_on}]
- ->->

=== Exit_Echoing_Caves

{We_I(2)} finally managed to exit this labyrinth.
* [{w_on}]

-> Elevator_Arrival