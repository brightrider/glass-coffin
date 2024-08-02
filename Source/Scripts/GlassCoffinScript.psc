Scriptname GlassCoffinScript extends ObjectReference

Event OnInit()
    RegisterForModEvent("BRFF_Add", "OnAdd")
    RegisterForModEvent("BRFF_Remove", "OnRemove")
EndEvent

Event OnAdd(Form ref, Form furn)
    If furn != Self
        Return
    EndIf

    PlayGamebryoAnimation("close", True, 3.0)
EndEvent

Event OnRemove(Form ref, Form furn)
    If furn != Self
        Return
    EndIf

    PlayGamebryoAnimation("open", True, 1.0)
EndEvent
