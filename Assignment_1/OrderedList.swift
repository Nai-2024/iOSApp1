import SwiftUI

struct OrderedList: View {
    @Binding var orderedItems: [MenuItem]

    var body: some View {
        VStack {
            Text("Your Ordered Items")
                .font(.title)
                .padding()

            // Display the ordered items in a list
            List(orderedItems, id: \.name) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)  // Larger image size
                        .cornerRadius(10)
                    
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.medium)
                }
                .padding()
            }
            .listStyle(PlainListStyle()) // Optional: Simplify list style
        }
        .padding()
    }
}

#Preview {
    OrderedList(orderedItems: .constant([]))
}
