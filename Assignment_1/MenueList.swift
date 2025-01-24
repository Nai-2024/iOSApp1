

import SwiftUI

struct ContentView: View {
    let menuItems = [
        MenuItem(name: "Coffee", imageName: ""),
        MenuItem(name: "Bagels", imageName: "bagel"),
        MenuItem(name: "Tea", imageName: "tea"),
        MenuItem(name: "Donuts", imageName: "donuts"),
        MenuItem(name: "Cookies", imageName: "Cookies"),
        MenuItem(name: "Smoothies", imageName: "Smoothie"),
        MenuItem(name: "Sandwiches", imageName: "Sandwitch"),
      
    ]
    
    var body: some View {
            // Order Menu Tab
            VStack {
                Text("Welcome to Order Menu")
                    .foregroundColor(.red)  // Red color
                    .fontWeight(.bold)      // Bold text
                    .italic()               // Italic text
                    .padding()

                // Menu List with Images
                List(menuItems, id: \.name) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 30)
                            .cornerRadius(10)
                        
                        Text(item.name)
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                    .padding()
                }
            }
        
        .tabViewStyle(PageTabViewStyle()) // PageTabViewStyle for swipeable pages
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // Show page index dots
        .padding()
    }
}

struct MenuItem {
    var name: String
    var imageName: String
}

#Preview {
    ContentView()
}
