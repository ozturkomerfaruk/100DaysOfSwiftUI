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

## Icon

```
Image (systemName: "star.fill")
    //.renderingMode (.original)
        .font(.largeTitle)
    //.font (.system(size: 200))
    //.font (.largeTitle)
        .foregroundColor(.blue)
    //.resizable ()
    //.aspectRatio(contentMode:.fit)
    //.scaledToFit ()
    //.scaledToF111 ()
    //.frame (width: 300, height: 300)
    //.clipped()
```

## Image

```
Image("omer")
    .resizable()
//.aspectRatio(contentMode: .fit)
    .scaledToFit()
//.scaledToFill()
    .foregroundColor(.black)
    .frame(width: 300, height: 500)
//.clipped()
//.cornerRadius(30)
    .clipShape(Circle())
```
## Frame

```
Text("Hello, World!")
    .background(Color.orange)
    .frame(height: 100)
    .background(Color.blue)
    .frame(width: 150, height: 150)
    .background(Color.green)
    .frame(width: .infinity, height: 200, alignment: .top)
    .background(Color.red)
    .frame(width: 350, height: 700, alignment: .leading)
    .background(Color.pink)
```

## HStack, VStack, ZStack

```
ZStack (alignment: .center) {
            Rectangle ()
                .fill (Color.red)
                .frame (width: 300, height: 500)
            VStack {
                Text("Ömer")
                    .underline(color: Color.green)
                Rectangle ()
                    .fill (Color.black)
                    .frame (width: 50, height: 50)
                Rectangle ()
                    .fill (Color.blue)
                    .frame (width: 100, height: 100)
                HStack {
                    Rectangle ()
                        .fill (Color.orange)
                        .frame (width: 50, height: 50)
                    Rectangle ()
                        .fill (Color.green)
                        .frame (width: 100, height: 100)
                }
                .background(Color.purple)
            }
            .background(Color.white)
        }
```

## Padding

```
VStack {
    Text("Hello, World!")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding(.bottom, 20)
    Text ("This is therdescription of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
}
.padding(.horizontal, 20)
.background(
    Color.white
        .padding(.horizontal, 20)
        .shadow(color: Color.blue, radius: 30)
)
```
## Spacer

```
 VStack {
    Rectangle()
        .fill(Color.green)
        .frame(width: 100, height: 100)
    Rectangle()
        .fill(Color.red)
        .frame(width: 100, height: 100)
    Spacer()
        .frame(width: 20)
        .background(Color.orange)
        .cornerRadius(20)
        .padding(20)
    Rectangle()
        .fill(Color.yellow)
        .frame(width: 100, height: 100)
    Rectangle()
        .fill(Color.blue)
        .frame(width: 100, height: 100)
}
```

## ScrollView

```
ScrollView (.vertical) {
    VStack (alignment: .center) {
        ForEach(0..<5) { i in
            ScrollView (.horizontal) {
                HStack (alignment: .center) {
                    ForEach (0..<10)  { i in
                        RoundedRectangle (cornerRadius: 25.0)
                            .fill (Color.white)
                            .frame (width: 100, height: 75)
                            .shadow (radius: 10)
                            .padding(.leading, 90)
                            .padding(.top, 40)
                            .padding(.bottom, 40)
                    }
                }
            }
        }
    }
}
```

## LazyVGrid

```
 let columns: [GridItem] = [
    GridItem(.fixed(25), spacing: nil, alignment: nil),
    GridItem(.fixed(50), spacing: nil, alignment: nil),
    GridItem(.fixed(75), spacing: nil, alignment: nil),
    GridItem(.fixed(75), spacing: nil, alignment: nil),
    GridItem(.fixed(50), spacing: nil, alignment: nil),
    GridItem(.fixed(25), spacing: nil, alignment: nil)
]

var body: some View {
    ScrollView {
        LazyVGrid (columns: columns) {
            ForEach(1..<101) {
                i in
                Circle()
            }
        }
    }
}
```

## Button
```
Button {

} label: {
    Text("Save")
        .font(.caption)
        .bold()
        .foregroundColor(.gray)
        .padding()
        .background(Capsule()
            .stroke(Color.gray, lineWidth: 3))
}
```

https://www.youtube.com/watch?v=zyuSUrfelw8&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=53
