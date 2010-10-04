package reflex.components
{
	import reflex.behaviors.ButtonBehavior;
	import reflex.behaviors.MovieClipSkinBehavior;
	import reflex.behaviors.SelectBehavior;
	import reflex.binding.Bind;

	public class CheckBox extends ButtonDefinition
	{
		public function CheckBox()
		{
			super();
			skin = new ButtonGraphic(); // needs graphic
			behaviors.addItem(new MovieClipSkinBehavior(this));
			behaviors.addItem(new ButtonBehavior(this));
			behaviors.addItem(new SelectBehavior(this));
			Bind.addBinding(this, "skin.label.text", this, "label", false);
		}
	}
}