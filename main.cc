// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#include "game.h"
#include "othello.h"
/**\file
* @brief this file contains the main that starts the game
  @author Brock Ferrell
*/
using namespace main_savitch_14;

/**
* @brief This function instantiates the game object and executes its playing
* @param Take no parameters
* @return Returns an integer and without error should return 0
*/
int main()
{
	Othello theGame;
	theGame.restart();
	theGame.play();
}
