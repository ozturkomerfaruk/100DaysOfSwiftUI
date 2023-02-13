# 100DaysOfSwiftUI

## Circle, Ellipse, Capsule, Rectangle, RoundedRectangle

### fill, foregroundColor, stroke, trim, frame
```
//Circle ()
//Ellipse ()
//Capsule (style: circular)
//Rectangle ()
RoundedRectangle(cornerRadius: 10)
//.fill (Color .green)
//.foregroundColor (pink)
//.stroke ()
//.stroke (Color.red) //.stroke(Color.blue, lineWidth: 30)
//.stroke(Color.orange, style:
//StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
.trim(from: 0.4, to: 1.0)
//.stroke (Color.purple, lineWidth: 50)
.frame (width: 300, height: 200)
```

## Color - Gradient Color

```
RoundedRectangle (cornerRadius: 25.0)
.fill (
    //Color primary
    //Color(.red))
    //.linearGradient(Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
    //.radialGradient(Gradient(colors: [.red, .black]), center: .center, startRadius: 5, endRadius: 200)
    .angularGradient(Gradient(colors: [.white, .green]), center: .center, startAngle: .degrees(10), endAngle: .degrees(40))
    )
.frame (width: 300, height: 200)
.shadow(color: .black.opacity(1), radius: 20.0, x: -20, y: -20)
```
