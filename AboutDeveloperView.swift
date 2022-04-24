//
//  AboutDeveloperView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 21/04/22.
//

import SwiftUI

struct AboutDeveloperView: View {
    @State private var desc = "Hi WWDC2022! My name is Vincentius Sutanto, or just call me Centsu. I'm a Computer Science Student and an Intern in Apple Developer Academy @GOP BINUS. I am extremely excited with coding. And currently am in a journey to becoming a world class developer and a lifelong learner. Nice to meet you!\n\n The photo shown above is when I was a young boy with dreams and (if you tap) you can see young Centsu went through during the process of becoming a man of value. Yup, Process! To join this challenge, I want to be part of the process itsef. For me, the most important thing is not in the result but rather than the process."
    @State private var imageStatus = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("About Developer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                if !imageStatus{
                    Image("Little Centsu")
                        .resizable()
                        .aspectRatio(contentMode: .fit )
                        .frame(width: 300, height: 300)
                        .padding()
                        .onTapGesture {
                            imageStatus = true
                        }
                }
                if imageStatus{
                    Image("Centsu")
                        .resizable()
                        .aspectRatio(contentMode: .fit )
                        .frame(width: 300, height: 300)
                        .padding()
                        .onTapGesture {
                            imageStatus = false
                        }
                }
                Text("Tap the photo to see magic 🔮")
                    .font(.headline)
                    .italic()
                Text(desc)
                    .padding(.vertical, 10)
                    .font(.system(size: 22, weight: .light, design: .rounded))
                    //.font(.title2)
                    .multilineTextAlignment(.center)
                    .frame(width: 500)
                    .frame(minHeight: 300)
                    .padding()
                Spacer()
            }
                .padding()
        }
    }
}

struct AboutDeveloperView_Previews: PreviewProvider {
    static var previews: some View {
        AboutDeveloperView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

