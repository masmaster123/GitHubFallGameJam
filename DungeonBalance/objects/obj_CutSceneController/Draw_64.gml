if(displayDialog){
	draw_sprite_ext(spr_textBox,0,textBoxX,textBoxY,15,4,0,c_white,.75);
	scribble(displayText).wrap(450).draw(textX,textY,typist);
}


if(playerWin){
	draw_set_font(fnt_Big);
	draw_text(view_get_wport(0)/2,view_get_hport(0)/2,"You Win!! \n Thanks for playing!")
}



