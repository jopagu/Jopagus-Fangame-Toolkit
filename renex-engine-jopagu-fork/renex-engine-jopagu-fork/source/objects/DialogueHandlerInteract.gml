#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
extantArrow = false

event_inherited()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


//progress dialogue
if (global.key_pressed[key_shoot] && messageIndex >= 0) {
    //play transitionSound
    if( sound != "no_sound" && messageIndex != totalMessages -1){
        sound_play(sound)
    }

    //activate transitionTrigger
    if(trigger != noone){
        instance_create(0, 0, trigger)
        with(trigger){
            event_user(0)
        }
    }
    if (messageIndex == totalMessages){
        event_user(0)
    }
    if(messageIndex != -1){
        messageIndex += 1
    }

}
//skip dialogue
if (global.key_pressed[key_skip] && skippable && messageIndex >= 0){
    event_user(0)
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//Get rid of up arrow if the player is no longer touching
if(!place_meeting(x, y, Player) && extantArrow){
    with (myArrow){
        instance_destroy()
    }
    extantArrow = false
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


okay = true

//check flags
for (i = 0; i < ds_list_size(requiredFlags); i +=1 ){
    if(!check_dialogue_flag(ds_list_find_value(requiredFlags, i))){
        okay = false
    }
}

//check false flags
for (i = 0; i < ds_list_size(requiredFalseFlags); i +=1 ){
    if(check_dialogue_flag(ds_list_find_value(requiredFalseFlags, i))){
        okay = false
    }
}



//create an up arrow
if(!extantArrow && okay){
    myArrow = instance_create(Player.x - 4, Player.y - 32, UpArrow)
    extantArrow = true
}

//start the dialogue
if(global.key_pressed[key_up] && messageIndex == -1 && okay){
    messageIndex = 0
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=dialogue end
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
messageIndex = -1
initialized = false
frozen=false
startSoundPlayed = false

if (endSound != "no_sound"){
    sound_play(endSound)
}

//activate endTrigger
if(endTrigger != noone){
    instance_create(0, 0, endTrigger)
    with(endTrigger){
        event_user(0)
    }
}

//unfreeze time
with(freezer){
    instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(messageIndex != totalMessages){
    event_inherited()
}else{
    event_user(0)
}
