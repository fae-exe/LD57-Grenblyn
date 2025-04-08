// CHARACTER VARIABLES

VAR hope = 0
VAR fierce = 0
VAR despair = 0
VAR old = 0
VAR nostalgia = 0
VAR cold = 0
VAR fear = 0
VAR nauseous = 0
VAR guilt = 0
VAR melancholy = 0

VAR child_scared_of_me = 0
VAR child_trusts_me = 0

VAR start = "Start writing →"

VAR w_on = "Write on →"
VAR w_on_thoughts = "Write of my thoughts →"
VAR w_on_dark = "Write of dark thoughts →"

VAR m_on_past = "Muse about the past →"

VAR d_on = "Describe further →"
VAR d_on_surroundings = "Describe the surroundings →"

VAR m_on = "Move on →"

VAR l_on_thought = "Linger on this thought →"
VAR l_on_feeling = "Linger on this feeling →" 

VAR r_on = "Remember →"

VAR c_on = "Collect yourself →"
VAR c_on_again = "Just a moment →"

VAR dots_on = "... →"

VAR end_on = "Put down the quill →"

LIST Items = Trenchcoat, Rope, Pickaxe, FlintKnife
LIST CharacterStates = NotFound, Absent, Present, Dead

VAR childState = (NotFound)

VAR inventory = ()