//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 1200
let preferredHeight = 1200
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen to draw on the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//Move origin to middle
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

//Draw a grid
canvas.drawAxes(withScale: true,
                by: 20,
                color: Color.black)

// Middle
p.goto(dx: -100, dy: 0)
p.drawTo(dx: 100, dy: 200)
p.drawTo(dx: -50, dy: 100)
p.goto(dx: 50, dy: -100)
p.drawTo(dx: 100, dy: -200)
p.drawTo(dx: -200, dy: 0)
p.drawTo(dx: 300, dy: 0)
p.goto(dx: -300, dy: 0)
// Inner Layer
p.goto(dx: 50, dy: 300)
p.drawTo(dx: -160, dy: -300)
p.drawTo(dx: 0, dy: -500)
p.goto(dx: -20, dy: 0)
p.drawTo(dx: 0, dy: 500)
p.drawTo(dx: 180, dy: 340)
p.drawTo(dx: 180, dy: -340)

// Where am I?
print(p.currentHeading)
print(p.currentPosition())



/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
