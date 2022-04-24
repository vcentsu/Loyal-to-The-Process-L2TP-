import SwiftUI

struct ContentView: View {
    @State private var isClickAboutBtn = false
    @Binding var isClickPlayBtn : Bool
    
    var body: some View {
        ZStack{
            //Color.white
            VStack {
                Spacer()
                Spacer()
                Text("Mindset Game:")
                    .font(.system(size: 50, weight: .semibold, design: .default))
                    .foregroundColor(Color.gray.opacity(0.5))
                TextShimmer(text: "Loyal to")
                    .padding(0)
                TextShimmer(text: "The Process")
                    .padding(.bottom, 40)
                
                Button("PLAY"){
                    self.isClickPlayBtn = true
                }
                    .padding(20)
                    .font(.largeTitle)
                    .background(.green)
                    .cornerRadius(24)
                    .foregroundColor(.white)
                Spacer()
                Button{
                    isClickAboutBtn = true
                }label: {
                    Text("About Developer")
                    Image(systemName: "chevron.up")
                }
                    .padding()
                    .font(.title)
                    .background(.clear)
                    .border(.orange, width: 3)
                    .foregroundColor(.orange)
                .sheet(isPresented: $isClickAboutBtn) {
                    AboutDeveloperView()
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct TextShimmer: View {
    var text: String
    @State var animation = false
    
    var body: some View{
        ZStack{
            Text(text)
                .font(.system(size: 100, weight: .bold))
                .foregroundColor(Color.gray.opacity(0.4))
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 0){
                ForEach(0..<text.count, id: \.self){ index in
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 100, weight: .bold))
                        .foregroundColor(RandColor())
                        .multilineTextAlignment(.center)
                }
            }
            .mask(
                Rectangle()
                    .fill(
                        LinearGradient(gradient: .init(colors: [Color.white.opacity(0.5), Color.white, Color.gray, Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    )
                    .rotationEffect(.init(degrees: 70))
                    .padding()
                    .offset(x: -250)
                    .offset(x: animation ? 500 : 0)
            )
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: true)){
                    animation.toggle()
                }
            })
        }
    }
}

func RandColor()->Color {
    let color = UIColor(red: 1, green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    return Color(color)
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(isClickPlayBtn: Binding<Bool>)
//    }
//}
