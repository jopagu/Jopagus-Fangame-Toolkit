//set_dialogue_flag(flag)
//sets a flag to false

m = global.dialogueFlags
flag = argument0

if(ds_map_exists(m, flag)){
    ds_map_replace(m, flag, false)
}else{
    ds_map_add(m, flag, false)
}
