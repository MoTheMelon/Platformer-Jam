array_text = array_create(0);
index = 0;

alarm[0] = 50;


typist = scribble_typist();
typist.in(0,1);


var prefix = "[font_Dialogue][fa_left][scale, 0.5]";
var suffix = "[/scale]";

array_text[0] = prefix + "[c_black][shake]Hey!![/shake][delay,900]This is the [/c][rainbow]murder zone[/rainbow][c_black], so get lost!!" + suffix;
array_text[1] = prefix + "bottom text" + suffix;

text_width = (sprite_get_width(sDialogueBox) * image_xscale) - 10;
text_height = (sprite_get_height(sDialogueBox) * image_yscale) - 10;