/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR health = 5
VAR pet_name = ""
VAR boots = 0
VAR torches = 0



-> memory

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pet's name?

* [Charlie] 
 ~ pet_name = "Charlie" 
-> cave_mouth

* [Balto] 
 ~ pet_name = "Balto" 
-> cave_mouth

* [Spot] 
 ~ pet_name = "Spot" 
-> cave_mouth


== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only { pet_name } could see you now!

You have {torches} torches. 
You have {boots} boots.

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [ Take south tunnel ] -> south_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
{ pet_name == "Charlie": Charlie would love it here in the east| }
You are in the east tunnel. It is very dark, you can't see anything.

* { torches > 0 } [Light Torch] -> east_tunnel_lit

+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==

{ pet_name == "Spot": Scout would love it here in the west| }

You are in the west
* { torches > 0 } [Light Torch] -> west_tunnel_lit

+ [Go Back] -> cave_mouth
-> END

== south_tunnel ==

{ pet_name == "Balto": Balto would love it here in the south| }

You are in the south

The cave continues on to the right, would you like to journey on? 

+ [ Journey on ] -> south_encounter
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

=== west_tunnel_lit ===
With the spark of the fire cracking at the end of your torch the room become alive. 
Wih glittering crystals and running water you find yourself in a glade of magical light.

+ [ Go Back ] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.

You walk on to find a small chest. You guide your hands across its carefull craftmenship as you push its lid back. 

Within you find a pair of sturdy looking boots. 

Do you take them with you? 
+ [ take the boots ] -> boot_pickup
+ [ leave the boots ] -> leave_boots
-> END

== boot_pickup ==
~ boots = boots + 1 
You lace up the boots from the chest, you feel more steady as you stand.
* [ Go back ] -> cave_mouth
-> END

== leave_boots ==
~ boots = boots + 0
You leave the boots in their wooden home, and walk back the way you came. 

What on eath would you need new boots for in a cave like this? 
+ [ Go back ] -> cave_mouth
-> END


=== south_encounter ===
You are deep within the winding paths of the South Tunnel, the air heavy with dampness. The walls are close, and the low light from your torch casts eerie shadows on the stone.

Suddenly, you hear it — the sound of heavy footsteps, and then the unmistakable growl of a bear. Your heart races.

{ boots == 0  : You know you can't outrun it, but you push yourself forward, feeling your legs burning with each step. The beast's growl grows louder behind you. It's closer.    } 
* { boots == 0 } [RUN!] -> grizzly_death

  
 
 
{ boots == 1 :  Your feet pound against the cold stone as you run, the adrenaline surging through your veins. Every breath feels like a struggle, but you keep moving. }
    
* { boots == 1 } [RUN!] -> balto_spirit

   -> END
    
    == balto_spirit ==

A rustle in the shadows ahead catches your eye — something is moving fast. You turn, expecting another danger, but instead, a figure materializes in front of you.

It's Balto. Your childhood dog.

But... how? Balto passed away years ago, and yet, there he is. His fur is glowing faintly with a celestial light, his eyes filled with wisdom and calm.

BALTO
<<Balto's voice is strong and reassuring, though his form flickers like a dream.>>

_Balto barks once, loudly, his tail wagging in a way that feels so real. You can feel the rush of warmth from his presence, the bond between you as if he never left. He looks at you, as if telling you to trust him. The growl of the bear is just a moment behind, but you know you're not alone anymore.

Without thinking, you follow Balto as he leads you forward with an unearthly speed, darting through the tunnel's twists and turns like a shadow. The bear's growls fade into the distance.

Eventually, the tunnel opens up, and you can no longer hear the bear. Balto stops at the mouth of the tunnel, his form flickering once more.

BALTO
 He looks at you one last time, his tail wagging gently. "You're safe now. But never forget — when the shadows grow long, and the beasts are close... remember, you're never truly alone."

And with that, he vanishes into the light.

-> END

== grizzly_death == 

You push yourself forward, your breath ragged, but no matter how hard you run, the sound of the bear’s heavy steps grows louder. It’s only a matter of time before it catches you.

You try to focus, your heart racing. The tunnel twists and turns, but your legs are growing weaker with every step. You hear the bear behind you, its growl echoing off the stone walls, closer, closer.

 The exhaustion is overwhelming. Every step feels like it’s dragging you down. The bear’s breath is hot on your neck now, and you know there’s no way you can escape.

Just as you turn a corner, your foot slips — a rock loose underfoot, and you stumble. Before you can recover, a massive paw strikes your back, sending you crashing into the cold stone ground. The air is knocked from your lungs, and before you can even cry out, the bear is on top of you.

It snarls and roars, its claws raking across your body. The pain is overwhelming. Your vision begins to blur, the world turning black around the edges.

As your life begins to slip away, your last thoughts drift to something — or someone — you loved more than anything. The image of Balto, your childhood dog, appears in the darkness. His eyes, filled with warmth and loyalty, shine brighter than anything around you. You feel a sense of calm in his presence, even as the world fades away.

BALTO
_He is there, in the light, standing by your side._ His fur glows softly, his tail wagging gently, just as it did when you were young. He nudges you with his snout, as if to say, _"It’s okay. You’re not alone."_

And in that moment, as the pain fades completely, you feel his comforting presence, and the light grows around you. Balto is there, waiting for you. The tunnel, the bear, the fear—all of it is gone. You are at peace.

With one final, soft breath, you let go.

-> END




