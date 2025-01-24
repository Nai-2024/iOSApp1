

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        TabView {
            // Welcome Tab
            VStack {
                Spacer() // Pushes content down
                
                Text("Welcome to Tim Hortons")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding()

                Text("Order your favorite coffee, donuts, and more with ease.")
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)

                Spacer() // Pushes content up from the bottom
            }
            .tabItem {
                Text("Welcome")
            }
            
            // Menu Tab (Showing the menu items)
            ContentView() // Displays the menu
                .tabItem {
                    Text("Menu")
                }
            
            // Ordered Items Tab (Placeholder)
            Text("Ordered items will appear here.")
                .tabItem {
                    Text("Ordered Items")
                }
        }
        .tabViewStyle(PageTabViewStyle()) // PageTabViewStyle for swipeable pages
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // Show page index dots
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

