DragonRuby DVD Bounce challenge
===

**[Fuze4NintendoSwitch](https://www.nintendo.co.uk/Games/Nintendo-Switch-download-software/FUZE4-Nintendo-Switch-1626336.html) download ID: NVD9XMNDXE**

**NB: This is just a bit of fun really.** This doesn't meet all of the challenge criteria mostly due to Fuze for Nintendo Switch (more accurately the Switch itself) being a closed ecosystem. I just thought it would be trivial to do in Fuze, so I sat down and did it. I also already have a Pro DragonRuby subscription. For this year at least. So it's really a "Why? Because I could" type thing.

Links:
-
[Fuze4 Nintendo Switch](https://www.nintendo.co.uk/Games/Nintendo-Switch-download-software/FUZE4-Nintendo-Switch-1626336.html)

[Fuze Arena](https://fuzearena.com) - Hosts the Fuze Community and the product help pages amoung other things.

Requirements
---

SO, here are the original requirements from Discord:

1. When the game starts up, show a sprite - that’s 50x50 pixels in size - at the center of the screen that has a resolution of 1280x720.
2. The box should start moving in a random x and y direction at a rate of 1 pixel per simulation tick (the x and y directions should be either 1.0, -1.0 chosen randomly at start). The speed of your box simulation should be 60 hertz (60 "ticks" per second).
3. The box should bounce around within the bounds of the 1280x720 canvas.
4. When the box hits the edge, it should change to a different random color (the box should not be the same color after hitting an edge).
5. If you press the space key, the box should stop moving. When you press the space key again, the box should resume moving in the direction it was going.
6. Your game should support PC, Mac, Linux, Web at least (iOS, and Android for extra credit).
7. The exe/binary icon for the game should be a square with the color of your choosing.
8. Release your game to Itch.io (PC, Mac, Linux, Web); and for extra credit Test Flight (iOS); and Google Play Beta Testing (Android). If you can't deploy to all platforms, make note of that in the readme.

Clearly we cannot support items 6, 7 or 8 but as a Brucy Bonus, if you own [Fuze4NS](https://www.nintendo.co.uk/Games/Nintendo-Switch-download-software/FUZE4-Nintendo-Switch-1626336.html) use the download code above and you can download the project and play about with it, modify it, frankly, do what you want with it!

Item 5 has been implemented as pressing 'A' on the right JoyCon of player 1. A lot of Fuze users WILL have a keyboard but it's far from guaranteed. Also when FuzePlayer comes out, those people will be even less likely to have a keyboard hooked up and yet could still use the download code above.

We then get onto the items that were to be included into the README:

How many proud lines of code did you have to write?
----
Originally I think it's in the low 70's including comments, but the version here on GitHub has a tonne of added comment so people can see how it was done.

How many different game engine concepts (eg: physics bodies, matrices, events, transforms, camera) did you have to be knowledgeable of before you could build your implementation?
----
Not many really. It helps that I was already intimate with Fuze but I guess if you were completely new then you would need to know about the main game loop, sprites, controls and draw targets (to do it the way I did). You'd get all of that, except maybe the draw targets, just from a quick run through the Tutorials on [FuzeArena](https://fuzearena.com) however.

Did you have to use classes, inheritance, structs or any other overly complex data structures? Why does the engine you are using require these complexities for such a trivial game?
----
No. Fuze supports structs but I didn't use them. I could have done to keep all my variable together but it would have been overkill here.

How many times did you have to start and stop execution? What was the feedback loop like when you were developing?
----
2 or 3 just to see make sure I'd made no typos along the way. I could have done it without but your average user will want to see feedback as they go. This is built right into Fuze. There's no compiling or tooling, just hit '+' on the Joycon (F5 if you have a USB kayboard) and your game runs.

Were you required to use a dedicated IDE? How long did it take you to get familiar with the IDE when you first started off?
----
Yes, for obvious reasons on the Switch this has to all be done inside the program. It's pretty easy to get to grips with however.

Is the source code for the game easily sharable? If you have to share more than just one file and some sprites, what else did you have to provide? What do these ancillary files represent?
----
Absolutely! Sharing is at the core of Fuze. Share your project, due to Nintendo requirements it has to be approved by Team Fuze but this typically takes no more than an hour or so, then you get a share code (above) which anyone that owns Fuze can enter to download your code. When they do, it's fully editable. Think of it like sending your game into a magazine for publication like we used to back in the early 80's (yes, I'm that old!)

How difficult was it to set up a 720p canvas?
----
Trivial. One command. This is fully documented in the code.

How difficult was it to export to "all the platforms"?
----
N/A - Please see above. One note, to get it onto here (GitHub) I re-typed it. Not ideal, but again, that's Nintendo's walled ecosystem for you.

What was the output binary size?
----
N/A - Please see above.

Be sensitive to what pains the engine of your choice puts you through to build the simplest of 2D game and ask yourself if it's acceptable. What could the engine have done better?
----
I honestly don't think anything really pains me on 2D game creation using Fuze, except for the aforementioned Nintendo Walled Ecosystem. This means you need to create all your assets inside Fuze, but there is an image editor and thousands of included assets ready to go so it's not all bad.

On the face of it, clearly if you're looking for a true game framework that will allow you to create commercial games then this isn't for you. **However, that's not actually true!** Should you create something that you wish to release commercially on the Switch, reach out to the good people at Fuze (link above) and talk to them. There are ways and means and they will help you acheive that.
