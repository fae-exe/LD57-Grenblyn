=== Colony ===

- I remember the dread. The pain. How blood was running down my face - how my head spun. 
* [{r_on}]
- My heart was beating so hard, I felt it within my teeth. # AUDIOLOOP: Sounds/loop2.mp3 # IMAGE: Images/cavemouth_lights.PNG

LIST KS_Survivors = Slaughtered, Dismembered, BonesEaten // this is to track the player knowledge of the other survivors' fate
LIST KS_Tunnels = LeadsToCity, Familiar, DugThemMyself, CorewardsRealms, PathCarver, CityInRuins, UnchartedTerritory
LIST PlayerStates = (BloodiedFace), HopesSomeoneSurvived, VomitOnFace, KnowsSomeoneEscaped, EscapeAtAnyCost, HurtHand, GoddessesAngry, Pious, KilledHorrors

* [I was shaken.]
    They had been slaughtered - never had a chance. My hands shook uncontrollably. {alter(fear, 1)} {alter(nauseous, 1)} {alter (despair, 1)}
    ~ KS_Survivors = Slaughtered
* [I was exhausted.]
    Exhausted as I was, every step was more difficult than the last. {alter(old, 1)}
* (colony_nails_in_palm) [I was determined.]
    My hand curled into a fist as my nails dug into my palm. {alter(fierce, 1)}

-
* [{w_on}]

- Dark stone bowels surrounded me, lit by the orange glow of forgelamps; the comforting chirps of cricket-beacons every thirty meters or just about.

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
    ** [{w_on}]
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
        ** [{w_on}] -> colony_life_id_chosen
* (horrible_sight) [I could not shake the horrible sights.]
    {
        - KS_Survivors ? Slaughtered: The dismembered, disfigured bodies. The sea of blood. I could not escape the sight of my dead comrades. Nor the memories of the smell. {alter(fear, 1)} {alter(nauseous, 1)}
            ~ KS_Survivors += Dismembered
        - KS_Survivors !? Slaughtered: I could not shake the sight of how my comrades had been slaughtered in the {KS_Tunnels !? CorewardsRealms:corewards realms{learn(KS_Tunnels, CorewardsRealms)}|abyss} - it made me lightheaded. {learn(KS_Survivors, Slaughtered)} {alter(fear, 1)} {alter(nauseous, 1)}
    }
* [I dreaded to come back.]
    {
        - KS_Tunnels !? LeadsToCity: These tunnels lead to what we once called the city - now reduced to rubbles and memories. {learn (KS_Tunnels, LeadsToCity)} {learn(KS_Tunnels, CityInRuins)}
        - KS_Tunnels ? LeadsToCity: Seeing what had become of the once vibrant city always broke my heart. Greatness reduced to rubbles.
    }
    
    {alter (despair, 1)} {alter (hope, -1)}
- 

* [{w_on}]

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
* [{w_on}]

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
* [{w_on}]

- The ground was covered in cracks, gears, chain belts, tools and spilled lubricant. It was so easy to lose your footing, every step of the way.
*[{w_on_dark}]
    Thoughts kept leaking from my head - my skull an old sieve; straining the water, retaining only silt. Anxiety sprayed the city walls with long-gone shadows. {alter (despair, 2)}
    ** [{w_on}]
    -- My breathing grew labored as they circled around me, closing in - suffocating.
    ** [{w_on}]
    -- Every shadow a corpse, in the theater of my mind. Everything, in that haze, was a source of apprehension.
    ** [The horror hunting me.]
        I thought, at the time, that one of the horrors was on my trail - hungry for my blood, specifically.
        *** [I had killed their own.]
        I was not a lamb to be slaughtered. And when the rocks gave way to flesh - I had no qualms to keep carving. 
        **** [{w_on}]
        ---- (colony_killed_their_own) Of the horrors we had slain - many died by my hand. {alter (fierce, 2)} {alter (despair, -1)} {alter (fear, -2)}
            ~ PlayerStates += KilledHorrors
        *** [I had escaped their grasp.]
            I had been away from my team when they murdered them. They are smart creatures, and I still believe they knew that I was missing. {alter (guilt, 1)} {alter (fear, 1)}
            **** [{w_on}]
                And that they were looking for me.
        *** [They bore a grudge.]
            I had been a leader to my people. I was one of the elder of the city, and I had trained most of our path carvers myself.
            **** [{w_on}]
            -> colony_killed_their_own
        --- 
        *** [{w_on}]
        --- Being personally hunted, by a creature capable of boundless cruelty.
        
    ** [My own death.]
        Scenes of my own death, of my parents' death, echoed on the stone walls as if to torment me. {alter (fear, 2)}
*[{d_on_surroundings}]
    I had played, decades ago, in these streets. It was surprisingly warm down here, with all the dredgers, the smelters, the furnaces. {alter(nostalgia, 1)} {alter (despair, -1)}
    ** [A peaceful life.]
    ** [A time long gone.]
    ** [I would rather forget.]
    In that moment, as thoughts of my childhood, of simpler times before the crawling horrors would come 
    --
    ** [{w_on}]
    -- I was descending, towards the city center. I needed to make my way to the condemned tunnels. {alter (hope, 1)}
    ** [Towards the surface.]
        The ones that lead up - to the surface world. <> -> no_one_knew
    ** [Towards the unknown.]
        After sixty years, they might as well be uncharted territory. <>
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
        *** [{w_on}]
            Maybe the horrors wouldn't have found us. {KS_Survivors !? Slaughtered: Maybe my comrades wouldn't have been slaughtered as they were. {learn (KS_Survivors, Slaughtered)}} {alter (guilt, 2)} {alter (despair, 1)}
        *** [{m_on}]
            No matter. What is done is done, and there is no way to know for certain. {alter (guilt, -1)} {alter (cold, 2)}
    ** [Maybe this was the next step.]
    Maybe going back to the surface was actually the next logical step - the continuation of my duties, of my role, of everything I stood for.
    *** [{w_on}]
        And if that was the case - I was not going to run from it. {alter (fierce, 2)} {alter (despair, -1)} {alter (guilt, -1)}
-
* [{w_on}]

- My weary mind drifted away as I walked; my legs tired, my feet in pain. 

* [The life we used to live here.]
Before the crawling horror came, when the water was still flowing through the cracks of our caves, life was pretty peacefull.{alter (nostalgia, 1)}

-
* [{w_on}]

- The creeping thought of that beast never-ending hunt for me just wouldn't leave my head.

-> Colony_Scary_Thought ->

- To add insult to injury, my body was in terrible pain.
*[my back]
The small amount of provisions I managed to pack for this last minute trip was enough to tire my old frame out.
*[my legs]
I was hoping that the varicose veins in my right leg and my swollen feet wouldn't force me to take breaks.
*[my heart]
I was worried this used heart of mine would have trouble keeping up the pace.

-
* [{w_on}]

- I concentrated on lifting my head up and looking at my surroundings.
*[my workplace]
The main building was still standing, but the usual racket around it had died down. -> Workplace
*[the ruins]
The ancillary dwelling, public conveniences, and municipal sculptures that had been erected here by skilled craftswomen were all reduced to dust, eroded, trampled down. -> City_Ruins
*[the playground]
Seeing the empty, dilapidated children's playground chilled my blood whilst it drew me to it. -> Playground

=== Hard_Having_Faith

It was hard to have faith - to truly believe that going outside would save us now. Weren't we only delaying the inevitable?

* [Perhaps the goddesses were angry.]
    Perhaps the goddesses were angry at us. Perhaps the sky-flood had been the result of their ire.
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
        *** [{w_on}]
        --- Would our sins be so terrible that we should be extinguished?
        *** [I could not accept it.]
            I could not accept it. If this was truly what they wanted, I would fight against it until the earth itself split open and devoured me. {alter (fierce, 2)}
        *** [Perhaps - if that was their will.]
            Perhaps. If that was the will of the goddesses, so it would be. But that was out of my hands entirely.
            **** [{w_on}]
            ---- So I would do the only thing I could - and fight for my survival. 
            **** [{w_on}]
            ---- And that meant trying my luck with the surface world. In a way, I thought there still was a chance for us. For me.
            -> curiosity_still_was_a_chance
        *** [No matter.]
            I determined that in fact - it did not matter. Faith or not, hope or not, all I could do was keep moving forward. {alter (fierce, 1)} {alter (despair, -2)} {alter (hope, -1)}
    ** [I had been pious.]
        I had been pious - I thought. If my fate was in their divine hands, what could I do but follow my path, as I'd always done? {alter (hope, 2)} {alter (despair, -2)}
        ~ PlayerStates += Pious
        *** [{w_on}]
        --- It was hard to have faith - but I still found the strength within myself to believe.
        *** [{w_on}]
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
            **** [{w_on}]
                I leaned on a giant machine for a moment, catching my breath, looking in the distance, at the quarry and the houses. {alter (despair, -1)}
                ***** [{w_on}]
                    -> Heard_Screams
        *** {fierce > 4} [I fought the tears.]
            I fought the tears with all I had. I refused to give up, I refused to cry, I refused. I refused these thoughts.
            **** [{w_on}]
                We were not doomed, and as long as I breathed, it would not be the end.
                ***** [I punched the cave wall.]
                    I punched the cave wall. Very hard. I injured my hand - scraped my knuckles, maybe even cracked my wrist.
                    {alter (despair, -2)} {alter (fierce, 1)} {alter (old, 2)}
                    ~ PlayerStates += HurtHand
                ***** [I bit my sleeve.]
                    I bit on my sleeve as hard as I could just to relieve some tension. I let out a muffled scream. It felt good. {alter (despair, -3)} {alter (fierce, 2)}
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

That was when I heard the screams.

/*
* [These monstrous screams.]
* [These terrifying screams.]
* [These unholy screams.]
*/

* [{w_on}]

- I hurried my step - speeding through the ruins, past the old playground.

* [{w_on}]

- Past the honored quarry, where I used to work, and the now desert town center.

* [{w_on}]

- Until I reached the town's exit, towards the echoing caverns and the old galleries.

* [{w_on}]

- The barricades had been dismantled, the big metal bulkhead forced open; it was the way back to the surface.

* [{w_on}]

- It was also uncharted territory for me. Not since the first exode.

- -> Lost_Child

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
    ** [{w_on}]
    I took a moment, falling to my knees, to breathe deeply and center myself as much as I could.
        *** {hope >= 1} [I would not meet the same fate.]
            I would not meet the same fate. And I knew others had survived as well - I knew it, I hoped, I longed for it. {alter (hope, 3)} {alter (fear, -1)} {alter (despair, -3)}
            ~ PlayerStates += HopesSomeoneSurvived
        *** {fierce >= 2} [I would no longer fear.]
            I steeled myself, clenched my jaw, ground my teeth, my fingernails {Colony.colony_nails_in_palm: digging into my palms once again|digging into my palm} - leaving deep, red marks and a lingering pain. {alter (fierce, 3)} {alter (fear, -3)} {alter (despair, -3)}
            **** [{w_on}]
                Fear would not govern me. The creatures would not make me cower. If I died, I would die standing - and so I stood.
        *** [I shut my heart close.]
            Something broke inside of me. My ears started ringing, my vision went blurry for a moment; then I felt far away from my own self, from my own mind.
            **** [{w_on}]
                When I stood back up, I felt an eery sense of calm. I did not care anymore. {alter(cold, 3)} {alter (guilt, -2)}
        *** (could_not_get_grip) [But I could not get a grip.]
            But I could not get a grip. I was trembling. Tears started flowing uncontrollably. I don't know how long I spent there. I curled myself into a ball, and wept. {alter (despair, 3)} {alter (hope, -3)} {alter (fierce, -3)}
            **** [{w_on}]
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
    - The large storefront smoothed out of a flawless granite proudly displayed “a quareer within the quarry” as an invitation to visit it one last time. -> top
    - Guided by my memories, I crossed the parking lot where the derelict dredgers were laying dormant. -> top
    - Wandering around the now-empty offices that used to be busy at all hours of the day and night troubed me more than I thought it would. -> top
    - It was in this very hall that I took my vows to serve in the community as a carver of ways, a seeker of trajectories. -> top
    - As I was passing by the service exit, I came across a pickaxe with a lightweight carbon handle, thought it might come in handy and picked it up. {i_get (Pickaxe)}
}
    ** [{w_on}] -> Exiting_Colony
* [{m_on}]

- -> Exiting_Colony

=== City_Ruins

- (top)

+ [{d_on}]
{stopping:
    - I used to sleep in those simple yet charming habitations when I was too tired to get home after my shift. -> top
    - Further on, the half-face of a gem goddess stared at me with pity and it was I who decomposed before her. -> top
    - I felt the pieces of myself crack and fall at her carefully crafted clay feet. -> top
    - As I was leaving, I contemplated the crumbs of the bench on which I had kissed my first lover, Mariana. -> top
    - {i_get (Trenchcoat)}  Burried under the rubbbles, I dug up Mariana's trenchcoat! Could she have made it out?
}
    ** [{w_on}] -> Exiting_Colony
* [{m_on}]

- -> Exiting_Colony

=== Playground

- (top)

+ [{d_on}]
{stopping:
    - I used to play there when we first arrived seventy years ago. -> top
    - I remember the 6 years-old me waiting for the work to be finished, standing in the legs of the craftswomen who were running out of patience. -> top
    - Later, the teenager I was smoked calming herbs high up the kids' castle roof. -> top
    - As wise adults, my digging team and I liked eating out here during lunchbreaks, just outside the mainquarters. -> top
    - {i_get (Rope)}  Even though I knew it was best to leave the past in the past, I couldn't resist grabbing the skipping rope that was lying around, and took it with me.
}
    ** [{w_on}] -> Exiting_Colony

* [{m_on}]

- -> Exiting_Colony

=== Exiting_Colony ===

- Actually, being here meant I had reached the end of the colony.
+[into the depths]
By the next tunnels I'd be in uncharted territory.
+[ending a chapter]
It was more than time to bid farewell to my past life.
+[I did it]
It made me regain a little hope and faith in my body's abilities.
++ [{w_on}]
Since it had carried me this far, I could go all the way. {alter (hope, 1)}

-
* [{w_on}]


-> Lost_Child

=== Colony_Scary_Thought

- (top)
+ [{d_on}]
{stopping:
    - I just wanted to stop thinking about it. -> top
    - In fact, I better had to, or else it would hurt my psyche. -> top
    - Too late, I was picturing that thing feasting on my loved ones over and over again. {alter(despair, 3)}
}
* [{m_on}]
    ->->
-
* [{w_on}]

->->