

# Sample Project On How To Implement Gesture Recognizers In iOS (Swift).
**UIGestureRecognizer** is the base class for the gesture recognizers. It is an **abstract class** and we only use its concrete subclasses to recognize gestures/touches.

**UIGestureRecognizer** provides a **state** property which gives information about the current state of the gesture. We use this property to make changes accordingly in the UI. 

There are two steps involved in using a gesture recognizer.

● Adding a gesture recognizer to the view, the view that will recognize the gesture (This can be done programmatically or using the Storyboard.)

● Providing a method to "handle" or "execute" when the recognizer recognises the gesture.

### UITapGestureRecognizer
Double tap to scale by 2x. Single tap to reset to original size.

![UITapGestureRecognizer](/tap-gesture-preview.gif?raw=true "Tap Gesture")


### UIPinchGestureRecognizer
Pinch to zoom in/out.

![UIPinchGestureRecognizer](/pinch-gesture-preview.gif?raw=true "Pinch Gesture")


### UIRotationGestureRecognizer
Rotate to change the orientation.

![UIRotationGestureRecognizer](/rotate-gesture-preview.gif?raw=true "Rotation Gesture")


### UISwipeGestureRecognizer
Swipe up, down, left, or right to move the label up, down, left or right respectively.

![UISwipeGestureRecognizer](/swipe-gesture-preview.gif?raw=true "Swipe Gesture")


### UIPanGestureRecognizer
Touch the label and move it anywhere across the screen. 

![UIPanGestureRecognizer](/pan-gesture-preview.gif?raw=true "Pan Gesture")

