//
//  GameTwoView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 22/04/22.
//

import SwiftUI

struct GameTwoView: View {
    @State private var isClickHintBtn = false
    @State private var alreadyDrag = false
    @State private var showWin = false
    @State private var showAlert = false
    @State var isDragging = false
    @State var position: CGSize = .zero
    
    var body: some View {
        ZStack {
            VStack {
                //Spacer()
                Text("Trust The Process")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .padding(.bottom, 10)
                    .padding(.top, 50)
                Text("Each Color Represent Each Process, What will happen when it moved?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 700)
                    .padding()
                    .background(.orange)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(10)
                Button{
                    isClickHintBtn = true
                }label: {
                    Text("Hint?")
                        .underline()
                        .padding(20)
                        .font(.title2)
                }
                    .cornerRadius(10)
                    .foregroundColor(.orange)
                    .sheet(isPresented: $isClickHintBtn) {
                        Hint2()
                    }
                    .padding(.bottom, 50)
                Spacer()
                HStack{
                    //Red Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.red)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Orange Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.orange)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Yellow Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.yellow)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Green Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.green)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Blue Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.blue)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Indigo Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.indigo)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                    //Purple Color
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 120, height: 120)
                        .padding(10)
                        .offset(x: position.width, y: position.height)
                        .foregroundColor(.purple)
                        .scaleEffect(isDragging ? 1.5 : 1)
                        .animation(.spring())
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isDragging = true
                                    alreadyDrag = true
                                    position = value.translation
                                })
                                .onEnded({ value in
                                    isDragging = false
                                    position = .zero
                                })
                        )
                }
                Spacer()
                Button{
                    if (alreadyDrag == true) {
                        showWin = true
                    }else{
                        showAlert = true
                    }
                }label: {
                    Text("DONE")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                }
                    .foregroundColor(.white)
                    .padding(20)
                    .background(.green)
                    .cornerRadius(24)
                    .alert("WOHOOOOOO!!!!", isPresented: $showAlert, actions: {
                        Button("OK", role: .cancel) { }
                    }, message: {
                        Text("You have to drag all colors first.. Try it now!!")
                    })
                    .sheet(isPresented: $showWin) {
                        Win2()
                    }
                Spacer()
            }
        }
    }
}

struct Hint2: View {
    var body: some View {
        ZStack{
            Color.yellow
            VStack{
                Text("Hint!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(10)
                Text("Try to drag the color..")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .frame(width: 600)
                Text("Click Done to see the summarize..")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .frame(width: 600)
            }
        }
    }
}

struct Win2: View {
    var body: some View {
        ZStack{
            Color.green
            VStack{
                Text("🥳🎉🎊 HEH33HE3HEE.. 🥳🎉🎊")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                    .foregroundColor(.white)
                Text("Yeeppp!! There are no real challenge in this second game. Still, congrats to you.. So, what did you learn?")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 600)
                    .padding(.bottom, 60)
                Text("WHAT WE CAN LEARN:")
                    .foregroundColor(.white)
                Text("Each color has their own beauty. However, when the colors are combined, isn't it beautiful? A true beauty. It's just the same as the process, every process is beautiful, but when it comes together, it won't let you down.  Did you know that the rainbow always comes after the rain? A diligent process is always followed by good results. Yet, what does a good result mean? Does good result means that we have to win WWDC2022? Or does good result always have to be in our favor? Often, we feel like we're failing at something if we don't succeed in fulfilling our desires. Beside that, we just don't see if it can be a very valuable lesson for us. So, trust every process that you had")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 600)
                    .padding(4)
            }
        }
    }
}

struct GameTwoView_Previews: PreviewProvider {
    static var previews: some View {
        GameTwoView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct Hint2_Previews: PreviewProvider {
    static var previews: some View {
        Hint2()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct Win2_Previews: PreviewProvider {
    static var previews: some View {
        Win2()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
