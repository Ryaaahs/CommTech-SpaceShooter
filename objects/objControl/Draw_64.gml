/// @description 
//UI Stuff 


//Resize Font
if(instance_exists(objCamera)){
	if(objCamera.size == 1){
		draw_set_font(fntGameFont);
		draw_text(16, 16, "SCORE:" + string(global.gameScore));
		draw_text(16, 32, "COMBO:" + string(global.combo)); 
	}else{
		draw_set_font(fntGameFontZoomTwo); 
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		var _windHeight = window_get_height();
		var _windWidth = window_get_width();
		
		var xHSInt = 120; 
		var xGS = 60;
		var yGS = 30; 
		var textMovement = 8;
		//Game Score UI 
		if(global.gameScore = 0){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));
		}else if(global.gameScore < 100){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));
		}else if(global.gameScore < 1000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));	
		}else if(global.gameScore < 10000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));
		}
		
		var xHS = 95;
		var xHSInt = 200; 
		var yHS = 60; 
		var textMovement = 6; 
		//High Score UI
		if(global.highScore = 0){
			draw_set_colour(c_red); 
			draw_text(xHS, yHS, "HIGHSCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt, yHS, string(global.highScore));
		}else if(global.highScore < 100){
			draw_set_colour(c_red); 
			draw_text(xHS, yHS, "HIGHSCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), yHS, string(global.highScore));
		}else if(global.highScore < 1000){
			draw_set_colour(c_red); 
			draw_text(xHS, yHS, "HIGHSCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), yHS, string(global.highScore));	
		}else if(global.highScore < 10000){
			draw_set_colour(c_red); 
			draw_text(xHS, yHS, "HIGHSCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), yHS, string(global.highScore));
		}
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		if(global.combo == 1){
			draw_text(_windWidth - 140, _windHeight - 20, "COMBO:" + string(global.combo));
		}else{
			draw_text(_windWidth - 190, _windHeight - 20, "COMBO:" + string(global.combo));	
		}
	}
}

//Screen Flash with Bomb mechanic 
if(global.flash){
	if(instance_exists(objCamera)){
		draw_rectangle(0, 0, room_width * objCamera.size , room_height * objCamera.size, false); 
	}
	global.flash = false; 
}