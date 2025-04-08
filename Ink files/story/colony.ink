=== Colony ===

- I remember the dread. The pain. How blood was running down my face - how my head spun. # AUDIOLOOP: Sounds/loop2.mp3
-> Parchment_Button (r_on) ->
- My heart was beating so hard, I felt it within my teeth. 

LIST KS_Survivors = Slaughtered, Dismembered, BonesEaten // this is to track the player knowledge of the other survivors' fate
LIST KS_Tunnels = LeadsToCity, Familiar, DugThemMyself, CorewardsRealms, PathCarver, CityInRuins, UnchartedTerritory
LIST PlayerStates = (BloodiedFace), HopesSomeoneSurvived, VomitOnFace, KnowsSomeoneEscaped, EscapeAtAnyCost, HurtHand, GoddessesAngry, Pious, KilledHorrors, MarianaHope

* [I was shaken.]
    They had been slaughtered - never had a chance. My hands shook uncontrollably. {alter(fear, 1)} {alter(nauseous, 1)} {alter (despair, 1)}
    ~ KS_Survivors = Slaughtered
* [I was exhausted.]
    Exhausted as I was, every step was more difficult than the last. {alter(old, 1)}
* (colony_nails_in_palm) [I was determined.]
    My hand curled into a fist as my nails dug into my palm. {alter(fierce, 1)}

-
-> Parchment_Button (w_on) ->

- Dark stone bowels surrounded me, lit by the orange glow of forgelamps; the comforting chirps of cricket-beacons every thirty meters or just about. # IMAGE: Images/cavemouth_lights.PNG

- (top)


+ [{{l_on_feeling}|{l_on_thought}}]
{stopping:
    - These were familiar tunnels - rising towards the city from the corewards realms. What we'd call the city, anyways; our haven, our refuge. {alter (hope, 2)}
        ~ KS_Tunnels += Familiar
        ~ KS_Tunnels += CorewardsRealms
        ~ KS_Tunnels += LeadsToCity
        -> top
    - These names that we used not to call it a survivor camp. -> top
    - Or a tomb. {alter (despair, 1)} {alter (cold, 1)} {alter (hope, -1)} -> top
    - I had to cross through the ruins, no matter what - this was the only way out. {alter (fierce, 1)}
        ~ KS_Tunnels += CityInRuins
}
    -> Parchment_Button (w_on) ->
* [{m_on}]

- Walking through these {KS_Tunnels ? Familiar:paths, that I'd dug with my own two hands,{learn(KS_Tunnels, DugThemMyself)}|familiar tunnels {learn(KS_Tunnels, Familiar)}} helped me collect my thoughts.

* {KS_Tunnels !? DugThemMyself} [I rubbed the calluses on my hand.]
    I rubbed the calluses on my hands, absentmindedly, thinking back to how I had opened these tunnels myself, so many years ago. {alter (hope, 1)}
    ~ KS_Tunnels += DugThemMyself
    ** [{w_on}]
    This was the life I'd chosen. <>
    -- (colony_life_id_chosen)
        Digger, explorer, sworn path-carver; so that others could follow in my footsteps. {alter (fierce, 1)} 
        ~ KS_Tunnels += PathCarver
* {KS_Tunnels ? DugThemMyself} [That fire still burned within me.]
    That fire still burned within me. This was the life I'd chosen, so many years ago. {alter (fierce, 1)}
        -> Parchment_Button (w_on) -> 
        -> colony_life_id_chosen
* (horrible_sight) [I could not shake the horrible sights.]
    {
        - KS_Survivors ? Slaughtered: The dismembered, disfigured bodies. The sea of blood. I could not escape the sight of my dead comrades. Nor the memories of the smell. {alter(fear, 1)} {alter(nauseous, 1)}
            ~ KS_Survivors += Dismembered
        - KS_Survivors !? Slaughtered: I could not shake the sight of how my comrades had been slaughtered in the {KS_Tunnels !? CorewardsRealms:corewards realms{learn(KS_Tunnels, CorewardsRealms)}|abyss}. My ears were ringing and my vision went blurry for a brief moment. {learn(KS_Survivors, Slaughtered)} {alter(fear, 1)} {alter(nauseous, 1)}
    }
* [I dreaded to come back.]
    {
        - KS_Tunnels !? LeadsToCity: These tunnels lead to what we once called the city - now reduced to rubbles and memories. {learn (KS_Tunnels, LeadsToCity)} {learn(KS_Tunnels, CityInRuins)}
        - KS_Tunnels ? LeadsToCity: Seeing what had become of the once vibrant city always broke my heart. Greatness reduced to rubbles.
    }
    
    {alter (despair, 1)} {alter (hope, -1)}
- 

-> Parchment_Button (w_on) ->

- I emerged from the maw of the deep; the cavern was immense, tens of meters high, metal towers grafted to the walls, rows of pipes and purifiers, and at the center of it all - the quarry. # IMAGE: Images/quarry.PNG

* [This was still my home.]
    {KS_Tunnels ? CityInRuins:Even in its current state, abandonned, broken - all I could see was my home.|I stared at the ruins, the broken husk of the city - and I still saw my home. {learn(KS_Tunnels, CityInRuins)}} {alter (nostalgia, 1)} {alter (hope, 1)} {alter (fear, -1)}
    ** [A place that I loved.]
        A place that we used to love with all our hearts. Where we felt safe. Happy, even, sometimes. {alter (nostalgia,1)} {alter (hope, 1)}
    ** [A place I'd have given everything to protect.]
        A place we'd have given everything to protect. A place they gave everything to protect, while I am here and I still breathe. {alter (fierce, 1)} {alter (despair, 1)} {alter (guilt, 1)}
    ** [A place they'd never see again.]
        --- (colony_never_see_again)
        {
            - KS_Survivors !? Slaughtered: A place that my comrades, slaughtered as they were in the {KS_Tunnels !? CorewardsRealms:corewards realms{learn(KS_Tunnels, CorewardsRealms)}|uncaring depths}, would never see again. {alter (despair, 1)} {alter (hope, -1)} {learn (KS_Survivors, Slaughtered)}
            - KS_Survivors !? Dismembered && KS_Survivors ? Slaughtered: A place that my comrades' grossly mutilated corpses would never return to. The smell and the sight haunt me even now. {alter (nauseous, 1)} {alter (despair, 1)} {learn (KS_Survivors, Dismembered)}
            - KS_Survivors ? Dismembered: In the {KS_Tunnels !? CorewardsRealms:corewards realms{learn(KS_Tunnels, CorewardsRealms)}|distant abyss} - the fiends had broken their bones and sucked the marrow from them; torn their hearts out to be crushed underfoot. They'd never see their home again. {learn(KS_Survivors, BonesEaten)} {alter (nauseous, 2)} {alter (fierce, 1)}
            {dead_friends_content_done == false: -> Dead_Friends ->}
        }
* {despair >= 2} [I had lost everything.]
    I had lost my kin, my friends, my sisters-in-arms, my pupils. Everyone I'd sworn to serve and protect. {alter (despair, 1)} {alter (guilt, 2)}
* {KS_Tunnels ? LeadsToCity && seen_very_recently (-> horrible_sight)} [They'd never see the city again.]
    The city. <> -> colony_never_see_again

-
-> Parchment_Button (w_on) ->

- I looked around at the empty habitations, at the bloodstains and the torn metal sheets, trying to imagine that there was a next step.

* [No more residential districts.]
    The residential districts had been emptied of their inhabitants. Whether it was the result of an evacuation plan or they had been taken by the fiends, I could not say.
    ** {despair >= 3} [But little doubt subsisted.]
        Little doubt subsisted in my mind that they had been taken by the beasts and met a fate worse than death. {alter (despair, 1)} {alter (cold, 2)}
    ** {hope < 3} [There had to be a chance.]
        There had to be a chance that some of them could escape. We had trained too much, worked too hard. Survival was drilled into our souls. {alter (hope, 1)} {alter (fierce, 1)} {alter (despair, -1)}
        ~ PlayerStates += HopesSomeoneSurvived
    ** {hope >= 3} [I knew some of them escaped.]
        I knew some of them escaped. I looked up, at one of our secret hatches - and sure enough. The ladder had been jetisonned, but I could see the exit had been opened recently.
        ~ PlayerStates += KnowsSomeoneEscaped
        ~ PlayerStates += HopesSomeoneSurvived
        *** [I smiled with pride.]
            I smiled with pride. This gave me joy, and comfort. I had installed that hatch myself. Harder to kill than cockroaches, we were. {alter (hope, 2)} {alter (fear, -2)} {alter (guilt, -2)}
        *** [I sighed in relief.]
            I sighed in relief. Finally, life; hope; something to hang onto. If they were holding on, so would I. {alter (fierce, 2)} {alter (hope, 1)} {alter (despair, -2)}
        *** [I nodded in approval.]
            I nodded in approval. I had prepared them as much as I could. I would meet them on the other side. {alter (fierce, 1)} {alter (hope, 1)} {alter (fear, -2)} {alter (despair, -2)}
    ** [I dared not think about it for long.]
        I dared not think about it for too long. Time was short and I did not want my conclusions to drive me further from hope. What mattered right now was my own survival. {alter (cold, 2)}
* [The memories were too painful.]
    It was much too painful to linger here for long. Everywhere I looked were the traces of a life, forever gone.
    ** [Memories of my childhood bubbled up.]
        Memories of my childhood bubbled up - of how we fled from the sky-flood and abandonned the surface world. {alter (nostalgia, 1)} {alter (hope, 1)}
        ~ KS_Childhood += FirstExode
        *** [Strange to be going upwards now, wasn't it?]
            Wasn't it strange, to be going upwards now? Towards the sky that almost extinguished us? That it might be our chance for salvation? {alter (cold, 1)} {alter (hope, 1)} {alter (despair, -1)}
        *** {despair >= 3} [Little did we know, in those days...]
            Little did we know, in those days - that the depths we thought would shield us would hide such horrors. {alter (fear, 1)} {alter (despair, 1)} {alter (hope, -1)}
        *** {fierce >= 3} [We survived then, and we would again.]
            We had survived then. We would survive again, no matter the odds, no matter how monstrous the adversaries. The very skies could not strike us down! {alter (cold, 1)} {alter (fierce, 1)} {alter (fear, -1)}
        *** {fierce < 3 || hope < 3} [It was hard to have faith.]
            -> Hard_Having_Faith ->
    ** (time_was_running_out) [Time was running out.]
        Time was running out. Certainly, {KS_Survivors ? Slaughtered:the creatures were hot on my trail|the creatures that slaughtered my comrades were hot on my trail{learn(KS_Survivors, Slaughtered)}}. I had to keep moving. {alter (fierce, 1)} {alter (cold, 1)}
//    ** [My thoughts turned to Mariana.]
//        Before I could stop myself, my thoughts turned to Mariana.
* [I had to keep moving.]
    -> time_was_running_out

LIST KS_Mariana = ExWife
LIST KS_Childhood = FirstExode

-
-> Parchment_Button (w_on) ->

- The ground was covered in cracks, gears, chain belts, tools and spilled lubricant. It was so easy to lose your footing, every step of the way.
*[{w_on_dark}]
    Thoughts kept leaking from my head - my skull an old sieve; straining the water, retaining only silt. Anxiety sprayed the city walls with long-gone shadows. {alter (despair, 2)}
    -> Parchment_Button (w_on) ->
    -- My breathing grew labored as they circled around me, closing in - suffocating.
    -> Parchment_Button (w_on) ->
    -- Every shadow a corpse, in the theater of my mind. Everything, in that haze, was a source of apprehension.
    ** [The horror hunting me.]
        I thought, at the time, that one of the horrors was on my trail - hungry for my blood, specifically.
        *** [I had killed their own.]
            I was not a lamb to be slaughtered. And when the rocks gave way to flesh - I had no qualms to keep carving. 
            -> Parchment_Button (w_on) ->
            ---- (colony_killed_their_own) Of the horrors we had slain - many died by my hand. {alter (fierce, 2)} {alter (despair, -1)} {alter (fear, -2)}
            ~ PlayerStates += KilledHorrors
        *** [I had escaped their grasp.]
            I had been away from my team when they murdered them. They are smart creatures, and I still believe they knew that I was missing. {alter (guilt, 1)} {alter (fear, 1)}
            -> Parchment_Button (w_on) ->
            And that they were going to make this right.
        *** [They bore a grudge.]
            I had been a leader to my people. I was one of the elder of the city, and I had trained most of our path carvers myself.
            -> Parchment_Button (w_on) ->
            -> colony_killed_their_own
        --- 
        -> Parchment_Button (w_on) ->
        --- One of those core-fiend was looking for me. I licked my parched lips.
        -> Parchment_Button (w_on) ->
        {
            - KS_Survivors !? Dismembered: The dismembered, disfigured bodies of my sisters-in-arms. The sea of blood. I could not escape the sight - nor the memories of the smell. {alter (fear, 1)} {alter (nauseous, 1)} {learn (KS_Survivors, Dismembered)}
            - KS_Survivors !? BonesEaten && KS_Survivors ? Dismembered: The fiends had broken the bones of my sisters-in-arms; sucked the marrow from them, then torn their hearts out to be crushed underfoot. {alter (fear, 1)} {alter (nauseous, 1)} {learn (KS_Survivors, BonesEaten)}
            - KS_Survivors ? BonesEaten && not Dead_Friends: I had seen what it had done to my sisters-in-arms. I knew what would happen to me, if I was caught. {alter (fear, 1)} {alter (nauseous, 1)}
                -> Dead_Friends ->
            - else: I couldn't get Onyx, Yagvida, Najla and Eun-Jo out of my mind. They did not deserve such a fate. {vomited >= 1:My mouth, still full of the taste of stomach acid.} Felt like cotton was wrapped around my head.
//                -> Colony_Scary_Thought ->
        }
        
    ** [My own death.]
        Scenes of my own death, of my parents' death, echoed on the stone walls as if to torment me. {alter (fear, 2)}
*[{d_on_surroundings}]
    I had played, decades ago, in these streets. It had always been comfortingly warm down here, with all the dredgers, the smelters, the furnaces. {alter(nostalgia, 1)} {alter (despair, -1)}
    ** [A peaceful life.]
    Before the crawling horrors came - when the water still flowed through the cave. These were peaceful times. {alter (nostalgia, 2)} {alter (despair, -2)}
    -> Parchment_Button (w_on) ->
    ** {cold >= 2} [A time long gone.]
    These times were long gone. I remember catching and stopping myself. My first concern, of course, had to be my survival.
    -> Parchment_Button (w_on) ->
    And nostalgia would not get me moving. It could only slow me down. {alter (nostalgia, -3)} {alter (cold, 2)}
    ** [I would rather forget.]
    In that moment, as I was trying to leave - thoughts of my childhood came swarming to me - of simpler times before the crawling horrors.
    -> Reminisce ->
    -- I was descending, towards the city center. I needed to make my way to the condemned tunnels. {alter (hope, 1)}
    ** [Towards the surface.]
        The ones that lead up - to the surface world. <> -> no_one_knew
    ** [Into the unknown.]
        After seventy years, they might as well be uncharted territory. <>
        --- (no_one_knew) No one could say what we'd find up there - or how dangerous it would be.
    ** [I hoped the bulkhead still worked.]
        I could only hope the heavy bulkhead could still be opened, {PlayerStates ? HurtHand: especially with my hand in that state|even by someone my age}. {alter (old, 1)}
*[{m_on_past}]
{KS_Survivors !? PathCarver: Path carvers like me {learn (KS_Survivors, PathCarver)}|Path carvers} had a sworn duty to open the way, to new possibilities. {alter (fierce, 1)}
    ** [{w_on}]
    -- To new futures for the refugees - for everyone in the city. This was what I had done all my life - exploring, always farther down.
    ** [We had no choice.]
        We had no choice. Without the resources, without the materials, the space it afforded us, the food we discovered - we would have been long dead. {alter (guilt, -2)}
    ** [Was it our fault?]
        Maybe, if we hadn't dugged as far... If we hadn't used the dredgers and all the other machines...
        -> Parchment_Button (w_on) ->
            Maybe the horrors wouldn't have found us. {KS_Survivors !? Slaughtered: Maybe my comrades wouldn't have been slaughtered as they were. {learn (KS_Survivors, Slaughtered)}} {alter (guilt, 2)} {alter (despair, 1)}
        *** [{m_on}]
            No matter. What is done is done, and there is no way to know for certain. {alter (guilt, -1)} {alter (cold, 2)}
    ** [Maybe this was the next step.]
    Maybe going back to the surface was actually the next logical step - the continuation of my duties, of my role, of everything I stood for.
    *** [{w_on}]
        And if that was the case - I was not going to run from it. {alter (fierce, 2)} {alter (despair, -1)} {alter (guilt, -1)}
-
-> Parchment_Button (w_on) ->

- My weary mind drifted away as I walked. I had hoped to rest, I had hoped to recover.

LIST BodyPartsPain = Back, Legs, Heart

* [My back hurt the most.]
    Decades of carrying heavy equipment and large backpacks had taken a toll on my body. My back hurt me often, especially the lower back - near the kidneys.
    ~ BodyPartsPain += Back
* [My legs brought me pain.]
    I was hoping that the varicose veins in my right leg and my swollen feet wouldn't force me to take breaks.
    ~ BodyPartsPain += Legs
* [My heart was beating hard.]
    I was worried this old heart would simply give up. I breathed deeply.
    ~ BodyPartsPain += Heart

-
-> Parchment_Button (w_on) ->

- I did not have much time - but as I was crossing through, I could linger in one location for a moment - as I caught my breath. # IMAGE: Images/grandma_serious.PNG
*[I'd go to the headquarters.]
    The headquarters for the path carvers and the explorers was still standing - but the usual racket around it had died down. It had been so lively in the past. -> Workplace
*[I kept pace through the city center.]
    The ancillary dwellings, public convenience, and municipal sculptures that had been erected here by skilled craftswomen had been reduced to dust - eroded.
    -> Parchment_Button (w_on) ->
    Trampled into the ground by the stompers. -> City_Ruins
*[I visited the playground.]
    I decided to visit the playground one final time. Empty and destroyed as it was - it chilled my blood. But drew me in. -> Playground

=== Reminisce

- (reminisce_top)

+ [{r_on}]
{stopping:
    - I smile now, thinking of how we would take long walks on the banks of the inverted lake, with Onyx and Eun-Jo. -> reminisce_top
    - The others didn't really like going near the lake. It was too strange for them. The black water dripping from the floor, pooling on the ceiling. -> reminisce_top
    - One time, coming back - I'll never forget how we saw Yadviga, all the way up the great furnace, with her bare feet and her much too big miner's vest. -> reminisce_top
    - She'd always been like a sort of wild animal. Why was she scared of the lake, but not of a fifteen meter drop? -> reminisce_top
    - And, by the goddesses, the bright smile on Najla's face when she'd bring us jellyfish tarts. -> reminisce_top
    - She had those big incisives, with a gap between them; she looked a little like a rabbit. And she was always laughing harder than everyone else. -> reminisce_top
    - I thought, in that moment of strife, it was better to forget. -> reminisce_top
    - But the stupid songs we'd sing as children, in the light of the forgelamps still burned bright in my soul. -> reminisce_top
    - It was too painful - it still is. Those memories - when I'd seen them murdered, horribly mutilated, just a few hours earlier. {learn(KS_Survivors, Slaughtered)} -> Collect_Yourself
    - That's why I had pushed all these feelings to the depths of my core, my heart. I had no time for softness. Only survival. Only escape. -> reminisce_top 
    - Please forgive this long parenthesis. I think I needed to talk about them for a while. -> reminisce_top
    - I think I wanted their memory to survive, in a way.
}
    -> Parchment_Button (w_on) -> 
    Thank you for reading. Let me continue.
    -> Parchment_Button (w_on) -> 
    ->->
* [{m_on}]
{reminisce_top == 1:I thought - I'd have time later for memories. Once i was out of there, and safe.|But - that is quite enough for now.}
    -> Parchment_Button (w_on) ->
    ->->
    
= Collect_Yourself

* [{c_on}]
-
* [{c_on_again}] # IMAGE: Images/grandma_sad.PNG
- 
* [{dots_on}]
- -> reminisce_top

=== Hard_Having_Faith

It was hard to have faith - to truly believe that going outside would save us now. Weren't we only delaying the inevitable?

* [Perhaps the goddesses were angry.]
    Perhaps the goddesses were angry at us. Perhaps the sky-flood had been the result of their ire. # IMAGE: Images/goddess.PNG
    ~ PlayerStates += GoddessesAngry
    ** [{w_on}]
    --    And... perhaps the fiends and the creatures that hunted us were also their doing.
/*
        ** [I threw myself to my knees and prayed.]
        I threw myself to my knees and prayed with all I had.
        ~ PlayerStates += Pious
        -> Prayers_To_Goddesses -> 
*/

    ** [But what had we done?]
        But what had we done to deserve such a fate? What had the children done, what had the priestesses done?
        -> Parchment_Button (w_on) ->
        --- Would our sins be so terrible that we should be extinguished?
        *** [I could not accept it.]
            I could not accept it. If this was truly what they wanted, I would fight against it until the earth itself split open and devoured me. {alter (fierce, 2)}
        *** [Perhaps - if that was their will.]
            Perhaps. If that was the will of the goddesses, so it would be. But that was out of my hands entirely.
            -> Parchment_Button (w_on) ->
            ---- So I would do the only thing I could - and fight for my survival. 
            -> Parchment_Button (w_on) ->
            ---- And that meant trying my luck with the surface world. In a way, I thought there still was a chance for us. For me.
            -> curiosity_still_was_a_chance
        *** [No matter.]
            I determined that in fact - it did not matter. Faith or not, hope or not, all I could do was keep moving forward. {alter (fierce, 1)} {alter (despair, -2)} {alter (hope, -1)}
    ** [I had been pious.]
        I had been pious - I thought. If my fate was in their divine hands, what could I do but follow my path, as I'd always done? {alter (hope, 2)} {alter (despair, -2)}
        ~ PlayerStates += Pious
        -> Parchment_Button (w_on) ->
        --- It was hard to have faith - but I still found the strength within myself to believe.
        -> Parchment_Button (w_on) ->
        --- In that moment, I had nothing else to turn to - and these thoughts brought me relief amidst the darkness and the ruins.
* [What was I even thinking, "we"?]
    What was I even thinking, "we"? There was no "we" anymore - I was all alone. {PlayerStates ? KnowsSomeoneEscaped: At least, until I found one of the survivors.|{PlayerStates ? HopesSomeoneSurvived: I could only hoped someone had survived|And as far as I knew, I was the last}}.
* {despair >= 3} [Maybe it was our destiny, after all.]
    Maybe extinction was simply our destiny, after all - like a flame. We had burned the wick, the forest, the candle, all our chances, and if the time was not today... {alter (despair, 2)}
    ** [It would be tomorrow.]
        It would be tomorrow. {alter (despair, 1)} {alter (nauseous, 2)}
        *** {nauseous >= 5 && vomited == 0} [I vomited.]
            -> Player_Vomits -> 
        *** {nauseous >= 5 && vomited >= 1} [I vomited again.]
            -> Player_Vomits ->
            **** [{w_on}]
                It hurt so much.
        *** {nauseous < 4} [I felt incredibly overwhelmed.]
            At the time, I felt incredibly overwhelmed. My head was spinning, my whole entire body was trying to give up.
        ---
        *** {despair >= 7} [I broke down completely.]
            {Dead_Friends.could_not_get_grip:This time, I broke down completely.|I broke down completely.} I lost it. I was crying, sobbing - everything seemed entirely hopeless and pointless. {alter (despair, 3)} # IMAGE: Images/grandma_blood.PNG
            **** [{w_on}]
                -> Heard_Screams
        *** {despair < 7} [The tears started to flow.]
            The tears started to flow, and they just would not stop. # IMAGE: Images/grandma_sad.PNG
            -> Parchment_Button (w_on) ->
            I leaned on a giant machine for a moment, catching my breath, looking in the distance, at the quarry and the houses. {alter (despair, -1)}
            -> Parchment_Button (w_on) ->
            -> Heard_Screams
        *** {fierce > 4} [I fought the tears.]
            I fought the tears with all I had. I refused to give up, I refused to cry, I refused. I refused these thoughts.
            -> Parchment_Button (w_on) ->
            ---- We were not doomed, and as long as I breathed, it would not be the end.
            **** [I punched the cave wall.]
                    I punched the cave wall. Very hard. I injured my hand - scraped my knuckles, maybe even cracked my wrist.
                    {alter (despair, -2)} {alter (fierce, 1)} {alter (old, 2)}
                    ~ PlayerStates += HurtHand
            **** [I bit my sleeve.]
                    I bit on my sleeve as hard as I could just to relieve some tension. I let out a muffled scream. {alter (despair, -3)} {alter (fierce, 2)}
    ** [Damn it all.]
        Damn it all, I thought - we would still burn. If it was not today, it was NOT today. I refused fate. And I refused death. {alter (despair, -3)} {alter (fierce, 2)} {alter (cold, 2)}
        *** [{w_on}]
            No matter the cost - I would survive. <> -> Escape_At_Any_Cost -> 
* {despair < 3} [Still, there was a chance.]
    Still - there was a chance to escape these horrible creatures: the fate of the surface world was a mystery.
    -- (curiosity_still_was_a_chance)
    ** [Curiosity drove me.]
        I think some sense of curiosity drove me. {alter (hope, 1)} 
    ** {hope >= 2} [The unknown gave me hope.]
        There was hope to be found in the unknown. I would rather take a chance and risk failure, than lay down and await certain death. {alter (hope, 1)} {alter (despair, -1)}
    ** {fierce >= 2} [Maybe I'd be the first to know.]
        And maybe I would be the first to find out. {KS_Tunnels !? PathCarver: A trailblazer, digger, sworn path-carver - as I'd been all my life. {learn(KS_Tunnels, PathCarver)}|A trailblazer, as I'd been all my life.} {alter (fierce, 1)} {alter (despair, -1)} 
    ** {cold >= 1} [I'd find out - at any cost.]
        I would find out, at any cost. No matter what I had to sacrifice - <>  -> Escape_At_Any_Cost ->

- ->-> 

=== Escape_At_Any_Cost

{KS_Survivors !? Slaughtered:I would not share my comrades fate, and be slaughtered as they were. Not me. Not now. {alter (cold, 2)} {learn(KS_Survivors, Slaughtered)}|I would not die alone in the sunless depths. Not me. Not after everything. {alter (cold, 1)}}
~ PlayerStates += EscapeAtAnyCost

->->

=== Heard_Screams

That was when I heard the screams. Unmistakable. The core-fiend was closing in.

/*
* [These monstrous screams.]
* [These terrifying screams.]
* [These unholy screams.]
*/

-> Parchment_Button (w_on) ->

- {BodyPartsPain ? Legs:Although my leg hurt, |}I hurried my step - speeding through the ruins, past the old playground.

-> Parchment_Button (w_on) ->

- Past the honored quarry, where I used to work, and the now desert town center.

-> Parchment_Button (w_on) ->

- Until I reached the town's exit, towards the echoing halls and the ancient galleries.

-> Parchment_Button (w_on) ->

- (screams_exit_the_colony) The barricades had been dismantled, the big metal bulkhead forced open. It was the way back to the surface. # IMAGE: Images/cavemouth_dark.PNG

{
    - PlayerStates !? UnchartedTerritory:
        -> Parchment_Button (w_on) ->
        It was also uncharted territory for me. Not since the first exode had I been through these parts.
}

* {fierce >= 3} [My stride was fierce.]
    I was determined. {PlayerStates ? Pious:This was my mission, my fate, as the goddesses ordained.|This was my mission, maybe even my fate.} {alter (fierce, 1)}
* {hope >= 3} [Hope carried me forward.]
    Hope gave me the strength to step into the unknown. {PlayerStates ? HopesSomeoneSurvived:If anyone was still alive - I would find them. Save what was left.} {alter (hope, 1)}
* {old <= 4} [Even old as I was...]
    Even old as I was, my body had still carried me through. I was still alive. {PlayerStates ? Pious:The goddesses were, perhaps, still watching over me.} {alter (old, -1)}
* {cold >= 3} [Maybe it was time.]
    Maybe it was time to leave this all behind me - end this chapter of my life. {alter (cold, 1)}
* [I stepped hesitantly into the dark.]
    I stepped hesitantly into the darkness. {alter (hope, -1)}
-
-> Parchment_Button (w_on) ->

-> Lost_Child

=== Dead_Friends

VAR dead_friends_content_done = false
VAR vomited = 0
- (top) 
+ [{l_on_thought}]
    {stopping:
        - Their skin had been flayed, pierced, plastered over the rocks. It was burnt from the acid sprays; and emitted an acrid smell that had brought tears to my eyes and stung my throat. {alter (nauseous, 2)} {alter (fear, 1)} -> top
        - Their entrails had been laid in a mound in the center of the small cave where I discovered them, in a crude pit dug by the creatures. There was so much intentionality to the act, so much cruelty. {alter (nauseous, 2)} {alter (fear, 1)} -> top
        - At this moment, <> -> Player_Vomits ->
        ~ dead_friends_content_done = true
        ~ PlayerStates += VomitOnFace
    }
    -> Parchment_Button (w_on) ->
    I took a moment, falling to my knees, to breathe deeply and center myself as much as I could. 
    ** {hope >= 1} [I would not meet the same fate.]
            I would not meet the same fate. And I knew others had survived as well - I knew it, I hoped, I longed for it. {alter (hope, 3)} {alter (fear, -1)} {alter (despair, -3)}
            ~ PlayerStates += HopesSomeoneSurvived
    ** {fierce >= 2} [I would no longer fear.]
        I steeled myself, clenched my jaw, ground my teeth, my fingernails {Colony.colony_nails_in_palm: digging into my palms once again|digging into my palm} - leaving deep, red marks and a lingering pain. {alter (fierce, 3)} {alter (fear, -3)} {alter (despair, -3)}
        -> Parchment_Button (w_on) ->
        Fear would not govern me. The creatures would not make me cower. If I died, I would die standing - and so I stood.
    ** [I shut my heart close.]
        Something broke inside of me. My ears started ringing, my vision went blurry for a moment; then I felt far away from my own self, from my own mind.
        -> Parchment_Button (w_on) ->
        When I stood back up, I felt an eery sense of calm. I did not care anymore. {alter(cold, 3)} {alter (guilt, -2)}
    ** (could_not_get_grip) [But I could not get a grip.]  # IMAGE: Images/grandma_blood.PNG
        But I could not get a grip. I was trembling. Tears started flowing uncontrollably. I don't know how long I spent there. I curled myself into a ball, and wept. {alter (despair, 3)} {alter (hope, -3)} {alter (fierce, -3)}
        -> Parchment_Button (w_on) ->
        When I finally managed to stand up, I felt exhausted. My entire body was hurting. I had never felt so old and broken. {alter (old, 2)}
+ [Stop. I needed to stop thinking about it.]
    I needed to perish this line of thought now. Now was not the time to break down.

- ->->

=== Player_Vomits
{stopping:
    - I doubled over, retching, wracked with full body spasms. Vomit spewed forth violently, burning the inside of my mouth, spilling on the rocks at my feet and flowing onto my chin. {alter (nauseous, -4)} {alter (vomited, 1)}
    - I felt it coming once again, the tightness in my throat, the pain in my stomach, the tears in my eyes. I fell to my knees, hiccuping violently - silently - my stomach contracting until a pathetic jet of acid stained the floor. {alter (nauseous, -4)} {alter (vomited, 1)}
}

->->

=== Prayers_To_Goddesses

->->

=== Workplace

- (top)
+ [{d_on}]
{stopping:
    - To my left, I passed the miner's office. The imposing frontpiece, carved out of flawless granite, proudly claimed “a quareer in the quarry.” -> top
    - I'd always chuckle a little a the pun. It wasn't very funny, but it was exactly my ex-wife's humor. -> top
    - My steps were entirely automatic. No thoughts needed - I crossed the parking lot, where the dredgers were now laying dormant. -> top
    - I crossed through the halls of the path-carvers - seeing the machines, the desks, the changing rooms, the technical locale - where we'd inspect and refurbish the equipment. The lab, the planning and meeting room. 
    - It would be so busy, at all hours of the day and the night. It was so unnerving, so strange to see it all deserted. -> top
    - It was in this very building that I took my vows to serve in the community as a carver of ways. A seeker of trajectories. A link between present and future. -> top
    - As I was passing by the service exit, I came across a pickaxe - lightweight carbon handle model. I didn't even think before latching it onto my backpack, replacing the one I'd lost earlier. {i_get (Pickaxe)}
}
    ** [{w_on}] -> Exiting_Colony
* [{m_on}]

- -> Exiting_Colony

=== City_Ruins

# IMAGE: Images/goddess.PNG

- (top)

+ [{d_on}]
{stopping:
    - I used to sleep here, when I was too tired to get home after my shift. -> top
    - Further on was one an idol of Adnyenka, the gem-goddess. She'd bless us before our expeditions. -> top
    - I felt so small in front of her. {PlayerStates ? Pious: Even at a time like this, I took a moment to kneel in front of her, and pray.|In that moment - I felt myself crumble and fall to the ground before her. I prayed - desperately, I prayed. {learn (PlayerStates, Pious)}}
    - There was no answer. No sign, and no augury. I did not need one. -> top
    - As I was leaving, I contemplated the shattered pieces of the town-square's bench. -> top
    - For a brief moment, I was nineteen again, kissing Mariana, getting high on her scent, digging greedy fingers in her auburn hair. -> top
    - I remembered how bright she shined, in that trenchcoat she'd always wear. I closed my eyes, hard, trying to make the thoughts and the tears go away - as I am doing right now. -> top
    - In the rubbles - I found a strange, beige piece of waterproof fabric. Surely, I thought - this wasn't hers. I wondered - and still wonder. Could she have survived? {learn (PlayerStates, HopesSomeoneSurvived)} {learn (PlayerStates, MarianaHope)}
}
    ** [{w_on}] -> Exiting_Colony
* {top >= 2} [{m_on}]

- -> Exiting_Colony

=== Playground

- (top)

+ [{d_on}]
{stopping:
    - Seventy years ago, I'd play in that sandpit; I'd swing on that swing. They had been built for me and the other children my age. -> top
    - The swingset was just a repurposed harness - tied to crudely weld steel beams. But for a 6 year old exiled underground, it was everything. -> top
    - I remember waiting for the work to be finished, bothering the craftswomen, clinging to their legs. It's one of my oldest memories. -> top
    - Many years later, we would get together on top of the upcycled jungle gym, with Onyx and Najla, to smoke the mushroom pipes at night. -> top
    - Much later still - my team and I liked to eat here, during lunchbreaks. It wasn't far from the mainquarters, and we liked it. -> top
    - Loved being surrounded by the kids and the families coming to play here. It reminded us why we did what we did. -> top
    - Why we'd always go deeper, risk our lives in the depths. -> top
    - I couldn't resist grabbing a skipping rope that laid in the rubbles. Sentimental, I know. {i_get (Rope)}
}
    ** [{w_on}] -> Exiting_Colony

* {top >= 2} [{m_on}]

- -> Exiting_Colony

=== Exiting_Colony ===

- My steps had led me to the end of the city's territory, near the massive bulkhead leading to the ancient galleries and the echoing halls. # IMAGE: Images/cavemouth_dark.PNG

-> Parchment_Button (w_on) ->

-> Heard_Screams.screams_exit_the_colony

=== Colony_Scary_Thought

- (top)
+ [{l_on_thought}]
{stopping:
    - I knew I should have stopped thinking about this - that I was only hurting myself; but I felt  -> top
    - In fact, I better had to, or else it would hurt my psyche. -> top
    - Too late, I was picturing that thing feasting on my loved ones over and over again. {alter(despair, 3)}
}
* [{m_on}]
    ->->
-
* [{w_on}]

->->









