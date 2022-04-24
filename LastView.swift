//
//  LastView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 24/04/22.
//

import SwiftUI

struct LastView: View {
    @Binding var isClickPlayBtn : Bool
    @State private var showAlert = false
    
    var body: some View {
        ZStack{
            VStack {
                
                Text("Loyal to The Process")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                Text("Is The Key")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill )
                    .frame(width: 400, height: 350)
                Text("- Vincentius Sutanto, \nWWDC2022")
                    .font(.system(size: 20, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.orange)
                    .padding(.bottom, 50)
                    .padding(.top, 5)
                Button{
                    showAlert = true
                }label: {
                    VStack {
                        Text("BACK TO HOME")
                            .fontWeight(.bold)
                            .font(.title2)
                    }
                }
                .foregroundColor(.white)
                .padding(20)
                .background(.orange)
                .cornerRadius(24)
                .alert("Are You Sure To Exit?", isPresented: $showAlert, actions: {
                    Button("Cancel", role: .cancel) { }
                    Button("Exit", role: .destructive) {
                        self.isClickPlayBtn = false
                    }
                }, message: {
                    Text("You may lost your changes")
                })
                
            }
        }
        .padding(50)
        .border(.orange, width: 5)
    }
}

//struct LastView_Previews: PreviewProvider {
//    static var previews: some View {
//        LastView()
//    }
//}
