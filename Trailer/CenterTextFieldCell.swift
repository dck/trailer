
class CenterTextFieldCell: NSTextFieldCell {

	var verticalTweak: CGFloat = 0

	override func drawingRectForBounds(theRect: NSRect) -> NSRect {
		var newRect = super.drawingRectForBounds(theRect)
		let textSize = cellSizeForBounds(theRect)
		let heightDelta = newRect.size.height - textSize.height
		if heightDelta != 0 {
			newRect.size.height -= heightDelta;
			newRect.origin.y += floor(heightDelta * 0.5);
		}
		return newRect;
	}

	override func drawInteriorWithFrame(cellFrame: NSRect, inView controlView: NSView) {
		super.drawInteriorWithFrame(NSOffsetRect(cellFrame, 0, verticalTweak), inView: controlView)
	}
}
