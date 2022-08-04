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

x1 = view_xview + 25
x2 = view_xview + global.width - 25
y1 = view_yview + 25
y2 = view_yview + 200

draw_health_bar(x1, y1, x2, y2, image, name, healthTotal, healthCurrent, barColor, backBarColor,
    imageBoxColor, nameplateColor, imageBoxAlpha, nameplateAlpha, font, side, imagePosition)
