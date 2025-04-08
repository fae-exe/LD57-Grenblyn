=== Outside_World

- I stepped outside - for the first time since I was a child. # AUDIOLOOP: # AUDIO: # IMAGE: Images/grandma_cliff_ending.PNG

- (feel_top)

* [{I felt relieved.|I also felt relieved.}]  #AUDIO: Sounds/ending1.mp3
    I felt a wave of relief. Maybe even something like happiness. {childState ? Present:I looked at Gwen, and she was smiling back at me.}
    ** {childState ? Present} [I wasn't alone.]
        I am not alone. Although there is still so much to do, I will not face it by myself. I must be there for Gwen - raise her, build a new world for her.
        -> Parchment_Button (w_on) ->
        The thought gives me endless strength and hope for the future.
    ** [{We_I_are(2)} out of the depths.] 
        The weight of the depths has been lifted from my shoulders. Although I had carried it for all my life without realizing, I think I feel better now.
        *** [Free.]
            I feel free at last, released from a cage I never thought existed. I wanted to scream, to fly, to run - no cave, no walls, no paths!
            -> Parchment_Button (w_on) ->
            -> Running_Outside ->
        *** [Safe.]
            I feel safe. I did not think the core-fiend nor the stompers would risk venturing so close to the surface.
            **** [I am not yet wrong.]
                And I have not yet been proven wrong. I take solace in that thought. The beasts are still underground - no matter how close on our heel they had been.
            **** [And {We_I(1)} still live.]
                And {We_I(1)} still live. {We_I(2)} still breath. {We_I(2)} can seek the others, {We_I(1)} can build, {We_I(1)} can start over. {We_I(2)} did it once, and {We_I(1)} will do it again.
            **** [But for how long?]
                But how long will this last? What horror awaits us next?
        *** [Filled with purpose.]
            {We_I_are(2)} still alive. 
    ** {PlayerStates ? KnowsSomeoneEscaped} [I wonder about the survivors.]
        I know someone made it out of the city, using the emergency hatch. I know {We_I_are (1)} not alone. Who are they?
        {PlayerStates ? MarianaHope: -> Could_Mariana_Still_Live -> }
* [{I felt overwhelmed.|I felt overwhelmed as well.}]
    I felt overwhelmed. Seeing this world again, so different from my now distant memories.
    ** {hope >= 3} [It is so vast.]
    ** {cold >= 3 && hope <= 3} [I feel nothing.]
        It's almost like - it is hard to feel anything anymore. I feel disconnected from this world, not a part of it.
    ** [It is so strange.]
* [{I felt sad.|Still, I felt terribly sad.}] #AUDIO: Sounds/sad1.mp3
    I felt a deep melancholy - abandonning what had become my new home, to find a broken world that was no longer mine.
    ** [My sisters-in-arms are dead.]
        {PlayerStates ? GoddessesAngry:Rest in Adnyenka's embrace, sisters - if she does not hate us all.|Rest in Adnyenka's embrace, sisters.}
        *** [You wonderful bastards.]
            You wonderful bastards - <>
        *** [You fearsome warriors.]
            You fearsome warriors - <>
        *** [You gorgeous explorers.]
            You gorgeous explorers - <>
        *** [You intrepid trailblazers.]
            You intrepid trailblazers - <>
        --- you had been my friends for seven decades, and maybe that's what used all of my luck.
        *** {Reminisce || Playground >= 5 || Dead_Friends} [I write to honor each of you.]
            I write to honor each of you, and the many others I might forget.
            -> Honor_Each_Of_You ->
        *** [I think you deserve to rest.]
            If anyone deserves to rest in peace - it is you, my sisters, my friends. Well-met, well-fought, well-dug.
            **** ["Until the core, to the end."]
                "Until the core, to the end." <>
            **** ["One layer lower."]
                "One layer lower." <>
            **** ["To carve unto the future."]
                "To carve unto the future." <>
            ---- Our motto. It was so pompous, we'd always chuckle when we talked about it.
            **** [I still love it.]
                I still love it, I think. Even if it's corny. Even if it's old and pompous - it was... Us.
            **** {despair >= 4} [I don't know...]
                I don't know if it still means anything to me. It feels so empty, so wrong. Not now that you're dead. Not after what happened to you.
            **** [But the children would repeat it.]
                But the children would repeat it while they played; and didn't that bring out our smiles.
        *** [I will soon follow you.]
            I will soon follow you. My time is coming, although I do not know when. But the days, months, years I have left - I will take them.
    ** [My life's work, turned to dust.]
        Old and broken as I am - it is difficult, unfathomable even, to face the annihilation of everything I'd fought for.
        *** {despair >= 6} [My name lost its meaning.]
            Even my own name means nothing anymore. Pathcarver. For whom? For what? Carving paths in the outside world?
        *** [This is why I write.]
            This is why I write, in part. So that everything I fought for, everything I built, something - anything of it will remain.
            -> Parchment_Button (w_on) ->
            ---- (someday_someone) Perhaps someone might, one day, find my records of the world below. Our people, our customs, our technology.
            -> Parchment_Button (w_on) ->
            And the way we met our end.
            **** [This is a legacy.]
                This is our legacy - what we leave behind. We did not know who remained outside or underground. Most likely - I will never know myself.
                -> Parchment_Button (w_on) ->
                We fled from the flood. We built a new realm underground - on the remains of what we used to be.
                -> Parchment_Button (w_on) ->
                And now - this might be the last trace of an passage on this earth.
                -> Parchment_Button (w_on) ->
                The final ramblings of an old woman, barely fit enough to lift a pickaxe.
            **** [This is a guide.]
                May you find insights in my writings - so that if you have to flee underground once more, you might meet a different fate.
            **** [This is a warning.]
                There are horrors sleeping in the depths. More dangerous than you could ever imagine.
                -> Parchment_Button (w_on) ->
                And they spelled our end.
                ***** [We were powerless.]
                    We had prepared as we could, we had studied what we could. We had been industrious and provident.
                    -> Parchment_Button (w_on) ->
                    It will never be enough.
                ***** [We were not ready.]
                    We were not ready. I will consign everything I know of these creatures - so you may not make the same mistake.
        *** {despair >= 6} [I don't know how to go on.]
            I have no idea how to go on. I feel broken, shattered, empty inside. I don't even know why I'm still writing this.
            -> Parchment_Button (w_on) ->
            I think I'm looking for meaning - the quill as a searchlight.
            -> Parchment_Button (w_on) ->
            I think I want something, anything to leave behind.
    ** {old >= 4} [I did not have much time.]
        I did not have much time left. Will I be able to rebuild anything at all? What can even an old woman do?
        *** [Write this, I guess.]
            Well - if there is something I can still do, and that might be useful - you are holding it in your hands.
            -> Parchment_Button (w_on) ->
            -> someday_someone
        *** [I will teach Gwen.]
            I have teached dozens of children - passing knowledge onwards is my calling, maybe.
        *** [The only thing I know to do.]
            The only thing I know to do. Keep moving forward. Keep carving a path to the future.
            -> Parchment_Button (w_on) ->
            Even sad as I feel - I will not wait for my final breath lying down.
- { -> feel_top |}
+ [{w_on}]

- {We_I(2)} took a few steps on the clifftops. Everywhere, you could see the traces of the great skyflood.
* (outside_buildings) [The buildings.]
    Like the buildings, elongated, grotesquely deformed, as if they had been clay in the hands of a child.
* [The vegetation.]
    Like the plants - overgrown, lignified, riddled with holes. I still hate how they writhe.
* [The animal remains.]
    Like the bones, everywhere, trapped in grey resin, half-melted and porous, with that telltale coral hue.
- 
+ [{w_on}]

- I made my way to the humble cabin{outside_buildings:, now three stories tall|, now grotesquely stretched towards the sky}, from which I now write.
-> Parchment_Button (w_on) ->

I hope someone, anyone finds this.
    * [I wanted to be heard.]
        -- (outside_wanted_heard) I think I needed to feel like someone, anyone might hear my story.
    * {childState !? Present} [I am terrified of being alone.]
        I am terrified of being the last of our kind. That we will be forgotten.
        ** [{w_on}]
        Whoever reads this - please, remember us.
    * {childState ? Present} [I am terrified of leaving Gwen alone.]
        I am terrified of leaving Gwen alone. To burden her with finality - that she would be the last of our kind.
        ** [{w_on}]
        Whoever reads this - please, remember her.
    * [I am not sure why.]
        I am not sure why. It seems strange and pointless, right?
        -> Parchment_Button (w_on) ->
        Still, I think I found some sort of closure in telling my story - our story.
-
* [I needed to write this down.]
    I know no one may find these scrolls. I know they might end up destroyed, scattered, lost. 
    -> Parchment_Button (w_on) ->
    I know the person finding it might not even speak the same tongue as I do.
    -> Parchment_Button (w_on) ->
    But this has been the story of an end. 
    -> Parchment_Button (w_on) ->
    The way we left the depths behind, and rose back to a world that - seventy years ago - had forsaken us.
    ** {hope >= 3} [I wish you happiness.]  
        I wish you happiness. {childState ? Present:I might still find some semblance of it, here - as I am not alone, and my companion is indeed very precious.}
    ** [I wish you luck.]
        I wish you luck. One can never have quite enough of it - and apparently, that of my people had run out.
    ** {fierce >= 3} [I wish you purpose.]
        I hope you will never feel empty or pointless. Not a moment in your life. As long as you breathe, as you keep moving forward: you are the link between present and future.
        -> Parchment_Button (w_on) ->
        Do not let fear, death or horror break your spirit.
- For now - I must stop writing. {childState: I hear Gwen is calling my name, and} I must find something to eat. 
-> Parchment_Button (w_on) ->
Farewell, and Adnyenka bless us.

-> Parchment_Button (end_on) ->

-> END

=== Running_Outside

->->

=== Could_Mariana_Still_Live

-> Parchment_Button (w_on) ->

Could Mariana still live? I think back to this piece of fabric I found in the rubble. {PlayerStates ? Pious:It might seem silly, but... I think the goddeses wanted me to find this.|It's stupid, it's superstitious.}

->->

=== Honor_Each_Of_You

->->

=== Mortal_Wound

- This is where I was mortally wounded, never to escape as I'd hoped.

+ [{w_on}]

- I leave these words, as I draw in my final breath.

+ [Please remember us.]
    I beg of you, whoever you are - to remember us and our story.
+ [May you learn from my mistakes.]
    May you learn from my mistakes and meet a less terrible fate.
+ [May the goddesses be kinder.]
    May the goddesses be kinder to you and your flock than they were to us.

- -> END