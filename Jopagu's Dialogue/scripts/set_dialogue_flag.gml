//set_dialogue_flag(flag)
//sets a flag to true

m = global.dialogueFlags
flag = argument0

if(ds_map_exists(m, flag)){
    ds_map_replace(m, flag, true)
}else{
    ds_map_add(m, flag, true)
}
