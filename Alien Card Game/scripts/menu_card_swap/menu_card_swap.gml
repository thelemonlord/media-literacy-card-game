// This script is called by our sequence that fans the cards out on the menu.
// It makes a layer visible, thus swapping out the assets in the sequence for actual card objects
// So that when the player mouses over them they get highlighted.
function menu_card_swap(){
	// Get our layer with our actual cards.
	var _lay_id = layer_get_id("Cards");
	// Make them visible.
	layer_set_visible(_lay_id, true);
}