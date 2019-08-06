# SwiftExtensions

These are common extensions that I use withen my own projects. I have them split into two categories UI Extensions and Foundation extensoins. Feel free to use any of them!

## UI Extentions

### UIColor
* `convenience init(hexString: String, alpha: CGFloat)`: allows you to create a new UIColor based on a hex string input.
*  `func toHexString() -> String`:  returns a hex string of the UIColor.

### UIImage
* `func scale(sizeChange:CGSize) -> UIImage`: returns a UIImage that has been scaled up or down to match the given CGSize.
* `func scale(withPercentage percentage: CGFloat) -> UIImage?`: returns a UIImage that has been sclaed based on a percentage given as a CGFloat.
* `static func from(color: UIColor) -> UIImage?`: returns a UIImage of 1x1 dimensions that matches the given color.

### UITextField
* `func configure(color: UIColor, font: UIFont, cornerRadius: CGFloat, borderColor: UIColor?, backgroundColor: UIColor, borderWidth: CGFloat?)`: a standard configuration I use for most of my text fields, shortens the lines of code needed when configuring multiple buttons.

### UIViewController
* `func presentAlert(title: String, message: String?)`: display an alert to user with title and message as input.
* `func hideKeyboardWhenTappedAround()` : minimizes the keyboard whenver the user presses the screen off of the keyboard. Requires `@objc func dismissKeyboard()` helper method.

## Foundation Extensions

### Date
* `static var startOfDay: Date { return Date().startOfDay }`: returns the start of current day.
* `static var endOfDay: Date { return Date().endOfDay }`: returns the end of current day.
* `static var hours: [Date] { return Date().getHours() }`: returns a Date for every hour of current day.

### StringProtocol
* `var words: [SubSequence]`: returns an array of all the words in a String.
    example:
    `let sentence = "A test sentence"`
    `let words = sentence.words`
    `\\words = {"A", "test", "sentance"}`

### Collection

* `subscript(safe index: Index) -> Element?`: a safe return for requesting elements from an array.
example:
`let words = {"A", "test", "sentance"}`
`let word = words[10] \\app crashes`
`let word = words[safe 10] \\ returns nil`
