class_name ItemContainerView extends ColorRect

var itemContainerImpl : ItemContainer

func setup_view(itemContainer : ItemContainer):
	itemContainerImpl = itemContainer
	setup_signals()

func setup_signals():
	self.gui_input.connect(handle_click_input)

func handle_click_input(event : InputEvent):
	if (event is InputEventMouseButton and event.is_pressed()):
		itemContainerImpl.handle_click()
