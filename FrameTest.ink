

// list of script-files to be included in this script

INCLUDE GreenRoom.ink



// variables go here

// KITCHEN

VAR cookietrayK = true
VAR coffeeK = true


// GARDEN

VAR coffeeG = false


// GREENROOM

VAR cookietrayGR = false



// Start here

-> MainHall


=== MainHall

It's the main hall. Not much to do here.

    + [Go to the Kitchen]
        You step into the Kitchen.
        -> Kitchen
    
    + [Go out in the Garden]
        You take the back door out to the garden.
        -> Garden
    
    + [Go to the Green Room]
        The Green Room it is.
        -> GreenRoom
        
        
=== Kitchen

{The smell of fresh cookies welcomes you. There is also a pot of coffee standing next to the machine (which is a sin in my eyes, but well, be my guest, it's your fantasy ...).| It's a kitchen alright. | Yeah, still a kitchen. | Some coffee maybe? | Kitchen, mate. Only so much to tell. | Why are you still here?}

    {cookietrayK:
    +  [Take a cookie.]
        They're a delicious mix of semi-sweet lemon and honey. MORE!
        -> Kitchen
        
    -   else:
    +   [The cookies are gone!]
        There are no cookies here! Sacrilege!
        -> Kitchen
    }
        
    {cookietrayK:
    + [Take the cookie tray]
        You take the cookie tray and therefore ultimate power.
        ~ cookietrayK = false
        -> Kitchen
    }
        
    {coffeeK:
    + [Take some coffee.]
        You made the right choice. And also the wrong one! Damn, life is hard. But now you got a cup of coffee. Little steps, right?
        ~ coffeeK = false
        -> Kitchen
        
    -   else:
    +   [Make some more coffee.]
        One can never have enough.
        ~ coffeeK = true
        -> Kitchen
    }
    
    + [Smell the air.]
        Smells good.
        -> Kitchen
    
        
    + [Go back to the main hall.]
        You head back to the main hall.
        -> MainHall


=== Garden

Here be the garden.

    + [Go back inside.]
    You head back inside.
    -> MainHall



-> END