// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#ifndef PIECE_H
#define PIECE_H
/**\file
* @brief This file contains piece class function definitions and declarations.
* @author Brock Ferrell
*/
enum color {black, white, blank};

class piece {
public:
	piece() {theColor = blank;}

/**
* @brief this function flips the color of a piece
* @param no parameters
* @return returns nothing
*/

	void flip()
	{
		if (theColor == white) {
			theColor = black;
		}
		else if (theColor == black) {
			theColor = white;
		}
	}

	bool is_blank()const {return theColor == blank;}
	bool is_black()const {return theColor == black;}
	bool is_white()const {return theColor == white;}
	void set_white() {theColor = white;}
	void set_black() {theColor = black;}

private:
	color theColor;

};

#endif

