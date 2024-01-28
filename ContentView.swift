import SwiftUI

let greetingsMessage = "Hello, Paul Grin!"

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(greetingsMessage)
        }
    }
}
