=== Colony ===

- Blood was running down my face and my head spun, as my heart beat so hard I felt it within my teeth. # Sounds/loop2.mp3 # Images/cavemouth_dark.PNG

LIST KS_Survivors = Slaughtered, Dismembered, BonesEaten // this is to track the player knowledge of the other survivors' fate
LIST KS_Tunnels = LeadsToCity, Familiar, DugThemMyself, CorewardsRealms, PathCarver, CityInRuins
LIST PlayerStates = (BloodiedFace), HopesSomeoneSurvived, VomitOnFace, KnowsSomeoneEscaped

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


+ [{l_on}]
{stopping:
    - These were familiar tunnels - rising towards the city from the corewards realms. What we'd call the city, anyways; our haven, our refuge. {alter (hope, 2)}
        ~ KS_Tunnels += Familiar
        ~ KS_Tunnels += CorewardsRealms
        ~ KS_Tunnels += LeadsToCity
        -> top
    - These names that we used not to call it a survivor camp. -> top
    - Or a tomb. {alter (despair, 1)} {alter (hope, -1)} -> top
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
        Digger, carver, path-maker; so that others could follow in my footsteps. 
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

- I emerged from the maw of the deep; the cavern was immense, tens of meters high, metal towers grafted to the walls, rows of pipes and purifiers, and at the center of it all - the quarry.

* [This was still my home.]
    {KS_Tunnels ? CityInRuins:Even in its current state, abandonned, broken - all I could see was my home.|I stared at the ruins, the broken husk of the city - and I still saw my home. {learn(KS_Tunnels, CityInRuins)}} {alter (nostalgia, 1)} {alter (hope, 1)} {alter (fear, -1)}
    ** [A place that I loved.]
        A place that we used to love with all our hearts. Where we felt safe. Happy, even, sometimes. {alter (nostalgia,1)} {alter (hope, 1)}
    ** [A place I'd have given everything to protect.]
        A place we'd have given everything to protect. A place they gave everything to protect, while I am here and I still breathe. {alter (fierce, 1)} {alter (despair, 1)} {alter (guilt, 1)}
    ** [A place they'd never see again.]
        -- (colony_never_see_again)
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

- I looked around at the empty habitations, at the bloodstains and the torn metal sheets, trying to imagine that there was a next step.

* [No more residential districts.]
    The residential districts had been emptied of their inhabitants. Whether it was the result of an evacuation plan or they had been taken by the fiends, I could not say.
    ** {despair >= 3} [But little doubt subsisted.]
        Little doubt subsisted in my mind that they had been taken by the beasts and met a fate worse than death. {alter (despair, 1)} {alter (cold, 2)}
    ** {hope < 3} [There had to be a chance.]
        There had to be a chance that some of them could escape. We had trained too much, worked too hard. Survival was drilled into our souls. {alter (hope, 1)} {alter (fierce, 1)} {alter (despair, -1)}
        ~ PlayerStates += HopesSomeoneSurvived
    ** {hope >= 3} [I knew some of them escaped.]
        I knew some of them escaped. I looked up, at one of our secret hatches - and sure enough. The ladder had been jetisonned, but I could see the hatch had been opened recently.
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
    ** [Time was running out.]
    ** [My thoughts turned to Mariana.]
        Before I could stop myself, my thoughts turned to Mariana.
* [I had to keep moving.]
    I had to keep going forward, until making it out of the colony ruins. 

LIST KS_Mariana = ExWife
LIST KS_Childhood = FirstExode

-
* [{w_on}]

- I was loosing my footing so easily in this place.
*[a little bit of poetry]
Ideas were escaping from my head as easily as if my skull were an old sieve that lets the water out but keeps the silt in, the suffocating thoughts that blocked my breathing.
*[I was feeling demined]
This ominous feeling that going out won't be my salvation haunted me.
** [{w_on}]
But I knew no other way.{alter(despair, 1)}
*[my fate]
As a path carver it was my duty to open the ways to safety, to possibles future.
** [{w_on}]
I had to stop fleeing my destiny.

-
* [{w_on}]

-These thoughts were echoeing in a loop on the stone walls around me. To undermine my morale.

-
* [{w_on}]

- My weary mind was drifting away again.
+[the fear of what is following me]
Knowing the creature's unquenchable thirst keept me moving forward.
+[the fear of what's ahead of me]
I have heard and learnt the stories of the great drowning, yet I was going to it.
++ [{w_on}]
Or I would end up drained by that monster.
+[how was life here before]
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

=== Dead_Friends

VAR dead_friends_content_done = false
VAR vomited = 0
- (top) 
+ [{l_on}]
    {stopping:
        - Their skin had been flayed, pierced, plastered over the rocks. It was burnt from the acid sprays; and emitted an acrid smell that had brought tears to my eyes and stung my throat. {alter (nauseous, 2)} {alter (fear, 1)} -> top
        - Their entrails had been laid in a mound in the center of the small cave where I discovered them, in a crude pit dug by the creatures. There was so much intentionality to the act, so much cruelty. {alter (nauseous, 2)} {alter (fear, 1)} -> top
        - At this moment, I doubled over, retching, wracked with full body spasms. Vomit spewed forth violently, burning the inside of my mouth, spilling on the rocks at my feet and flowing onto my chin. {alter (nauseous, -4)} {alter (vomited, 1)}
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
        *** [But I could not get a grip.]
            But I could not get a grip. I was trembling. Tears started flowing uncontrollably. I don't know how long I spent there. I curled myself into a ball, and wept. {alter (despair, 3)} {alter (hope, -3)} {alter (fierce, -3)}
            **** [{w_on}]
            When I finally managed to stand up, I felt exhausted. My entire body was hurting. I had never felt so old and broken. {alter (old, 2)}
    --
    ** [{w_on}]
+ [Stop. I needed to stop thinking about it.]
    I needed to perish this line of thought now. Now was not the time to break down.
    * [{w_on}]

- ->->

=== Workplace

- (top)
+ [{d_on}]
{stopping:
    - The large storefront smoothed out of a flawless granite proudly displayed “a quareer within the quarry” as an invitation to visit it one last time. -> top
    - Guided by my memories, I crossed the parking lot where the derelict dredgers were laying dormant. -> top
    - Wandering around the now-empty offices that used to be busy at all hours of the day and night troubed me more than I thought it would. -> top
    - It was in this very hall that I took my vows to serve in the community as a carver of ways, a seeker of trajectories. -> top
    - (pickaxe) As I was passing by the service exit, I came across a pickaxe with a lightweight carbon handle, thought it might come in handy and picked it up. -> Exiting_Colony
}
* [{m_on}]

- -> Exiting_Colony

=== City_Ruins

- (top)

+ [{d_on}]
{stopping:
    - I used to sleep in those simple yet charming accomodities when I was too tired to get home after my shift. -> top
    - Further on, the half-face of a gem goddess stared at me with pity and it was I who decomposed before her. -> top
    - I felt the pieces of myself crack and fall at her carefully crafted clay feet. -> top
    - As I was leaving, I contemplated the crumbs of the bench on which I had kissed my first lover, Mariana. -> top
    - (trench) Burried under the rubbbles, I dung up Mariana's trench! Could she have made it out? -> Exiting_Colony
}
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
    - (rope) Even though I knew it was best to leave the past in the past, I couldn't resist grabbing the skipping rope that was lying around, and took it with me. -> Exiting_Colony
}
* [{m_on}]

- -> Exiting_Colony

=== Exiting_Colony ===
-
* [{w_on}]

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


-> Echoing_Caves

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