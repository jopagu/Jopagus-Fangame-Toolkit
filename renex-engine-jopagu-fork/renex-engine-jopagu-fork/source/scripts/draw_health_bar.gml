//draw_health_bar(locations image, name, healthTotal, healthCurrent, colors, imageBoxAlpha, nameplateAlpha, imageAlpha font, side, imagePosition)

locations = argument0

x1 = locations[0]
y1 = locations[1]
x2 = locations[2]
y2 = locations[3]

image = argument1
name = argument2
healthTotal = argument3
healthCurrent = argument4

colors = argument5

barColor = colors[0]
backBarColor = colors[1]
imageBoxColor = colors[2]
nameplateColor = colors[3]

imageBoxAlpha = argument6
nameplateAlpha = argument7
imageAlpha = argument8

font = argument9

side = argument10
imagePosition = argument11

imageBoxWidth = 70
imageBorderWidth = 3

//Set up sprite position w/in image box
if(imagePosition == "Center"){
    imageXSpriteOffset = 2
    imageYSpriteOffset = 2
}else if(imagePosition == "Left" || imagePosition == "Right"){
    imageXSpriteOffset = 0
    imageYSpriteOffset = 2
}else if(imagePosition == "Top" || imagePosition == "Bottom"){
    imageXSpriteOffset = 2
    imageYSpriteOffset = 0
}else{
    imageXSpriteOffset = 0
    imageYSpriteOffset = 0
}

imageSpriteWidth = imageBoxWidth - (2 * imageBorderWidth) - (2 * imageXSpriteOffset) + 1
imageSpriteHeight = imageBoxWidth - (2 * imageBorderWidth) - (2 * imageYSpriteOffset) + 1

sh = string_height(name)
sw = string_width(name)

//Scale Sprite
w = sprite_get_width(image)
h = sprite_get_height(image)
if (w > h){
    xscale = (imageSpriteWidth / w)
    yscale = (imageSpriteHeight / h) * (h / w)
}else{
    xscale = (imageSpriteWidth / w) * (w / h)
    yscale = (imageSpriteHeight / h)
}
w *= xscale
h *= yscale

//Further set up sprite position
if(imagePosition == "Right"){
    imageXSpriteOffset = imageSpriteWidth - w
}else if(imagePosition == "Bottom"){
    imageYSpriteOffset = imageSpriteHeight - h
}

draw_set_color(c_black)
draw_set_alpha(1)
if (side == "Left"){
    //draw image box
    draw_rectangle(x1, y1, x1 + imageBoxWidth, y2, false)

    draw_set_color(imageBoxColor)
    draw_set_alpha(imageBoxAlpha)
    draw_rectangle(x1 + imageBorderWidth + 1, y1 + imageBorderWidth + 1,
        x1 + imageBoxWidth - imageBorderWidth -1, y2 - imageBorderWidth - 1, false)


    if(imagePosition == "Center"){
        draw_sprite_ext(image, 0, x1 + imageBorderWidth + ((imageSpriteWidth + (2 * imageXSpriteOffset) - w) / 2),
            y1 + imageBorderWidth + ((imageSpriteWidth + (2 * imageYSpriteOffset) - h) / 2), xscale, yscale, 0, -1, imageAlpha )
    }else{
        draw_sprite_ext(image, 0, x1 + imageBorderWidth + imageXSpriteOffset,
            y1 + imageBorderWidth + imageYSpriteOffset, xscale, yscale, 0, -1, imageAlpha )
    }

    draw_set_color(c_black)
    draw_set_alpha(1)

    draw_rectangle(x1 + imageBoxWidth + 1, y1, x1 + imageBoxWidth + sw + 5, y1 + imageBorderWidth, false)
    draw_line(x1 + imageBoxWidth + sw + 4, y1, x1 + imageBoxWidth + sw + sh + 4, y1 - imageBorderWidth + sh + 4)
    draw_line(x1 + imageBoxWidth + sw + 5, y1, x1 + imageBoxWidth + sw + sh + 5, y1 - imageBorderWidth + sh + 4)
    draw_line(x1 + imageBoxWidth + sw + 6, y1, x1 + imageBoxWidth + sw + sh + 6, y1 - imageBorderWidth + sh + 4)


    draw_set_color(nameplateColor)
    draw_set_alpha(nameplateAlpha)
    draw_rectangle(x1 + imageBoxWidth + 1, y1 + imageBorderWidth + 1,
                    x1 + imageBoxWidth + sw + 5, y1 - imageBorderWidth + sh + 4, false)
    //draw_triangle(x1 + imageBoxWidth + sw + 6, y1 - imageBorderWidth + sh + 4,
    //                x1 + imageBoxWidth + sw + 6, y1 + imageBorderWidth, x1 + imageBoxWidth + sw + sh + 6, y1 - imageBorderWidth + sh + 4, false)


}else{

    //draw image box
    xscale = -xscale
    draw_rectangle(x2 - imageBoxWidth, y1, x2, y2, false)

    draw_set_color(imageBoxColor)
    draw_set_alpha(imageBoxAlpha)
    draw_rectangle(x2 - imageBoxWidth + imageBorderWidth, y1 + imageBorderWidth,
        x2 - imageBorderWidth, y2 - imageBorderWidth, false)

    if(imagePosition == "Center"){
        draw_sprite_ext(image, 0, x2  + 1 - imageBorderWidth - ((imageSpriteWidth + (2 * imageXSpriteOffset) - w) / 2),
            y1 + imageBorderWidth + ((imageSpriteWidth + (2 * imageYSpriteOffset) - h) / 2), xscale, yscale, 0, -1, imageAlpha )
    }else{
        draw_sprite_ext(image, 0, x2  + 1 - imageBorderWidth - imageXSpriteOffset,
            y1 + imageBorderWidth + imageYSpriteOffset, xscale, yscale, 0, -1, imageAlpha )
    }
}

draw_set_alpha(1)
