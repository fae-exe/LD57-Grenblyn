=== Lost_Child
#AUDIO

- (opts)

{stopping:
- As I made my way through a coarse, cramped tunnel, I thought I sensed a presence.
- I approached slowly as I was trying to learn more about what was lurking there.
- Whatever was at the bottom of this cave was around the corner.
- I froze in place, suddenly wondering if I was about to fall into the trap of a unknown monstrosity and if I should run for my life.
}

+ {opts<4} [I listened carefully.]
   {stopping:
   - {
   -opts>=3: I could swear it was a voice of some sort.
   -opts>=2: Something was making noise back there.
   -else: I thought I was hearing what sounded like faint squeals
   }
   - {
   -opts>=3: Something was making noise back there.
   -else: The faint squeals became muffled cries.
   }
   - I was then clearly hearing was a child's voice, crying.
   }
   ++[{w_on}]
   -> opts
    
+ {opts<4} [I looked thoroughly.]
    {stopping:
    - {
    -opts>=3: A humanoïd shadow was dancing on the cave wall.
    -opts>=2: A disorted shadow was dancing on the cave wall.
    -else: I had the impression that a dim shadow was moving on the wall.
    }
    - {
    -opts>=3: The shadow had something of a humanoïd shape.
    -else: The hazy shadow then grew bigger and bigger and started twitching.
    }
    - It was the shadow of a curled-up child without a doubt.
    }
    ++[{w_on}]
    -> opts
    
+ {opts<4} [I followed a scent.]
    {stopping:
    - {
    -opts>=3: A strong odor with a metallic impulse to it filled my nose.
    -opts>=2: I was smelling something pungent in the air.
    -else: I seemed to catch the smell of something pungent in the air.
    }
    - {
    -opts>=3: The smell was becoming clearer to my nose, it was quite strong with hints of metal.
    -else: The disgusting odor that filled my nose had a metallic impulse to it.
    }
    - I was smelling blood. Something was bleeding or dead in that cave.
    }
    ++[{w_on}]
    -> opts
   
    
* (encountering_gwen) {opts>=3} [I went towards it.]
The grisly scene of a kid kneeling next to a dying atrocity appeared before my eyes.
# IMAGE: Images/gwen_encounter.PNG


* {opts>=4} [I left for my safety.]
As I turned to leave, a kid's voice echoed to me: "Is anybody here?", it said. 
**[{w_on}]
-- Something felt off, I thought I shouldn't trust the voice.
** [I took the risk to check on it anyway.]
I answered the voice's question by entering the cave. -> encountering_gwen
** [I resisted and fled for my life.]
I did not let the temptation stop me, and went back the way I came.

-
*[{w_on}]
- Her tear-drenched face was frozen in shock as she slowly turned it to me.

+ [I stayed cautious.]
I deconstructed what I was seeing, trying to put the picture back together.
+ [I smiled to her.]
My eyes filled with pity in spite of myself, while a benevolent smile spread across my lips.
+ [I went to her.]
I draw myself closer to her and got down on my knees so as not to intimidate her.

- 
*[{w_on}]
- The kid was not moving by an inch except for her hand clutching the sharp flint with which she had had to kill the dreadful creature.

+[I sat down with her.]
I calmly put my old body next to her because I didn't want to rush her.
+[I tried to snap her out of it.]
I softly called to her : "Hey, kiddo! You're fine now.".
+(gwen_drank)[I lend her water.]
I gently handed her my gourd.
++[{w_on}]
The water had become rare and our water sources were infested with beasts.

-
*[{w_on}]
- I understood that she accepted my concern {gwen_drank: as she drank up my gourd | as she let her guard down } and dropped her flint knife.

- (talking_to_gwen)
* [I needed to know who she was.]
I asked her: "How about telling me who you are, kiddo?"
**[She gave me her name]
She traced her name with her finger, in a mix of dust and blood the word GWEN appeared before me.
**[She showed me how she escaped]
She started to mimic what I recognized being the earthquake of a few days ago, somebody strong giving her orders, she ran, arrived here and hid, the strong woman is not here, dead?
**[She drew me her tale]
She frowned as she started drawing herself with angry eyes, big arms and a sword killing the creature laying dead next to us, and another, and a couple more, until she would paint herself killing dozen of atrocities (she even used the creature blood to illustrate better), on the ground of the cave with the tip of her flint.
--
**[{w_on}]
-- She burst into silent tears. <>
# IMAGE: Images/gwen_headpat.PNG
-> Talking_To_Gwen

* [I wanted to comfort her.]
I stammered: "It's okay now... we're together. We'll make it out."
**[She stayed muted.]
She looked at me funny, before nodding unconvincingly at what I said.
**[She trusted me.]
She lend me her hand, as I shook it I knew I made her a promise.
**[She regained faith.]
She's put herself back together and smiled fiercly at me.
--
**[{w_on}]
-- (flint_knife) She grabbed her flint knife and put it in her pocket. <>
-> Talking_To_Gwen

*(leaving_gwen_cave) [We had no time to lose.]
~ childState += Present
The longer we stood at the same place, the greater the danger.
**[I told her to follow me.]
She followed in my footsteps, pacing her walking rhythm on mine.
**[She led the way.]
She looked meanly at the corpse, jumped on her feet, and disapeared in the tunnel.
**[I let her take her time anyway.]
I went back through the tunnel first and waited for her. She came out a few minutes later.



- 
* [{w_on}]

-> Elevator_Arrival

=== Talking_To_Gwen 
{ -> Lost_Child.talking_to_gwen|-> Lost_Child.leaving_gwen_cave}


