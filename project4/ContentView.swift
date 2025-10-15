import SwiftUI

struct ContentView: View {
    @State private var hobbies = ""
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("BackgroundColor", bundle: nil), Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 30) {
                    
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 120)
                        .foregroundColor(.blue)
                        .padding(.top, 40)
                    
                    Text("My name is user")
                        .font(.title2).bold()
                        .foregroundColor(Color("LabelColor", bundle: nil))
                    
                    Text("User is an active user of the application, interested in technology and modern services. Always prefers accurate and fast ways to obtain information, is open to new features and improvements in the application. Likes to experiment with settings and personalize their user experience.")
                        .padding(.horizontal, 20)
                        .foregroundColor(Color("LabelColor", bundle: nil))
                        
                    
                    HStack {
                        Text("Hobbies")
                            .font(.title2)
                            .foregroundColor(Color("TextColor", bundle: nil))
                            .frame(width: 80, alignment: .leading)
                        
                        TextField("Enter your hobbies", text: $hobbies)
                            .padding(10)
                            .background(colorScheme == .light ? Color.gray.opacity(0.1) : Color.gray.opacity(0.50))
                            .cornerRadius(8)
                            .font(.body)
                            .foregroundColor(colorScheme == .light ? .black : .white)
                    }
                    .padding(.horizontal, 30)
                    
                    Button(action: {}) {  Text("Confirm") .font(.title3.bold()) .foregroundColor(.white) .padding(.vertical, 12) .padding(.horizontal, 50) .background(Color.blue) .cornerRadius(10) .shadow(radius: 5) } .padding(.top, 20)
                    
                    
                    Spacer(minLength: 50)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
