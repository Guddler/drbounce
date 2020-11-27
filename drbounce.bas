// First up, the filename is made up. Since the switch is a closed ecosystem you don't have filenames

// Setup - screen

// The switch will run docked or undocked. Ordinarily it is 1080p for docked and 720p handheld.
// Here we force 1280x720 regardless. It is possible that the user could dock or undock while the
// game is running and ideally to trap this you would test using the `docked()` command which
// returns true or false and either re-issue this command or use a scale factor for your display
// and update the scale factor when the docked state changes.
//
// To meet the criteria of the challenge we just need this one commnd:
setMode(1280, 720)

// Just for the "Press A to Pause text" (we cannot guarantee the switch user will have a keyboard
// so we use a button on the joycon instead of space. Seems reasonable to me?!)
textSize(18)

// Setup - General

isPaused = false
currentColour = black

// Setup - Sprite.

// We could use primitives (`drawBox()`) but we'll use sprites. I like sprites.
img = createImage(50, 50, IMAGE_RGB, false)
logo = createSprite()
setSpriteImage(logo, img)
setSpriteLocation(logo, gWidth() / 2, gHeight() / 2)

// OK, so the requirement of the 1 pixel per tick. This can be done 1 of two ways. Here I'll do
// it the more 'sprite' way which is to set a speed and just forget about it. We use 60 becuse
// this equates to 60fps and the sprite engine works out the rest.
//
// The alternative way to do this would be to not use speed at all and directly manipulate the
// sprites X and Y co-ordinates. In that case we would simply do `logo.x += 1 * xSpeed` (same for Y)
// xSpeed and ySpeed would be either 1 or -1 and you would do it in the main game loop. That would
// also work. But this is so much cleaner if you ask me
setSpriteSpeed(logo, 60, 60)

// Apply our random direction
if (rnd(2) == 1) then logo.x_speed *= -1 endif
if (rnd(2) == 1) then logo.y_speed *= -1 endif

currentColour = changeColour()

/**
 * Change to a new random colour that is not the same as the previous colour
 */
function changeColour()
    // Feels like there should be a tidier way of doing this but my brain's not working!
    newColour = { rnd(255) / 255, rnd(255) / 255, rnd(255) / 255, 1 }	// We could randomise the alpha channel if we wanted, but we wont
    while newColour == currentColour loop
        newColour = { rnd(255) / 255, rnd(255) / 255, rnd(255) / 255, 1 }
    repeat
    
    // Now change the colour of the image - there are other ways to do this but this way demos
    // an important, powerful yet simple concept of drawTargets. Note that it doesn't matter that
    // this is our sprite, it's still a full draw target. We could render an entire game to the
    // surface of the sprite if we wanted!
    setDrawTarget(img)
    clear(newColour)
    setDrawTarget(frameBuffer)
return newColour

/**
 * Handle the movement logic which also changes colour if we need to
 * I imagine this would be pretty much the same in any framework?
 */
function updateLogo()
    if logo.x + 25 > gWidth() or logo.x - 25 < 0 then
        logo.x_speed *= -1
        currentColour = changeColour()
    endif
    if logo.y + 25 > gHeight() or logo.y - 25 < 0 then
        logo.y_speed *= -1
        currentColour = changeColour()
    endif
return void

/**
 * Check for the user pausing with the 'A' button
 */
oldC = controls(0)
function checkKeys()
    c = controls(0)
    if c.a and !oldC.a then isPaused = !isPaused endif
    oldC = c
return void

// Main loop - every good game should have one :)
loop
    clear()

    checkKeys()
    if !isPaused then
        updateLogo()
        updateSprites()
    endif
   
    drawSprites()

    printAt(1, 1, "Press A to pause - because we can't guarantee the user has a space bar!")

    update()
repeat
