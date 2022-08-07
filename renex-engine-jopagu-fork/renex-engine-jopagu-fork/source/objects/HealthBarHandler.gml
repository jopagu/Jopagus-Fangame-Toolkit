#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/



image = global.defaultHBImage
name = global.defaultHBName

iFrames = global.defaultHBIFrames

backBarColor = global.defaultHBBackBarColor
imageBoxColor = global.defaultHBImageBoxColor
nameplateColor = global.defaultHBNameplateColor

imageBoxAlpha = global.defaultHBImageBoxAlpha
nameplateAlpha = global.defaultHBNameplateAlpha
imageAlpha = global.defaultHBImageAlpha

font = global.defaultHBFont

position = global.defaultHBPosition
side = global.defaultHBSide
imagePosition = global.defaultHBImagePosition
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


barColor = c_green
healthTotal = 10
healthCurrent = 10

//set up position
if(position == "Bottom"){
    x1 = view_xview + 25
    x2 = view_xview + global.width - 25
    y1 = view_yview + global.height - 95
    y2 = view_yview + global.height - 25
}else{
    x1 = view_xview + 25
    x2 = view_xview + global.width - 25
    y1 = view_yview + 25
    y2 = view_yview + 95
}

locations[0] = x1
locations[1] = y1
locations[2] = x2
locations[3] = y2

colors[0] = barColor
colors[1] = backBarColor
colors[2] = imageBoxColor
colors[3] = nameplateColor

draw_health_bar(locations, image, name, healthTotal, healthCurrent, colors, imageBoxAlpha, nameplateAlpha, imageAlpha, font, side, imagePosition)
