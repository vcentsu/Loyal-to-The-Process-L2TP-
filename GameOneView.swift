//
//  GameOneView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 22/04/22.
//

import SwiftUI

struct GameOneView: View {
    //@Binding var isClickPlayBtn : Bool
    @State private var isClickHintBtn = false
    @State private var showAlert = false
    @State private var showWin = false
    @State var pickedAnswer = 0
    @State var curr = [Int]()
    @State var answerFixed = [1,2,3,4,5,6,7,8]
    @State var indexQuestion = 0//Int.random(in: 0..<OneQuestions.count)
    
    @State var btnAState = true
    @State var btnBState = true
    @State var btnCState = true
    @State var btnDState = true
    @State var btnEState = true
    @State var btnFState = true
    @State var btnGState = true
    @State var btnHState = true
    
    var body: some View {
        ZStack{
            //Color.white
            VStack {
                VStack {
                    Text("Learn from The Process")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .padding(.bottom, 10)
                        .padding(.top, 50)
                    Text("All Cases Represent The Process, Complete Each Case Below!")
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
                        Text("How To Play?")
                            .underline()
                            .padding(20)
                            .font(.title2)
                    }
                        .cornerRadius(10)
                        .foregroundColor(.orange)
                        .sheet(isPresented: $isClickHintBtn) {
                            Hint()
                        }
                }
                Spacer()
                Text("Case No.\(indexQuestion+1)")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                Spacer()
                HStack{
                    if (pickedAnswer >= 1) {
                        Text("\(curr[0])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 2) {
                        Text("\(curr[1])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 3) {
                        Text("\(curr[2])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 4) {
                        Text("\(curr[3])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 5) {
                        Text("\(curr[4])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 6) {
                        Text("\(curr[5])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 7) {
                        Text("\(curr[6])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                    if (pickedAnswer >= 8) {
                        Text("\(curr[7])")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }else {
                        Text("_")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    }
                }
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[0])
                            pickedAnswer += 1
                            btnAState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[0])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnAState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[1])
                            pickedAnswer += 1
                            btnBState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[1])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnBState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[2])
                            pickedAnswer += 1
                            btnCState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[2])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnCState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[3])
                            pickedAnswer += 1
                            btnDState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[3])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnDState ? 1 : 0 )
                        Spacer()
                    }
                    .padding(.bottom, 30)
                    HStack {
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[4])
                            pickedAnswer += 1
                            btnEState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[4])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnEState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[5])
                            pickedAnswer += 1
                            btnFState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[5])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnFState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[6])
                            pickedAnswer += 1
                            btnGState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[6])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnGState ? 1 : 0 )
                        Spacer()
                        Button{
                            curr.append(OneQuestions[indexQuestion].question[7])
                            pickedAnswer += 1
                            btnHState = false
                        }label: {
                            Text("\(OneQuestions[indexQuestion].question[7])")
                                .padding(20)
                                .font(.largeTitle)
                        }
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .opacity(btnHState ? 1 : 0 )
                        Spacer()
                    }
                }
                Spacer()
                
                HStack{
                    Spacer()
                    Button{
                        reset()
                    }label: {
                        Text("RESET")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                    }
                        .foregroundColor(.white)
                        .padding(20)
                        .background(.red)
                        .cornerRadius(24)
                    Spacer()
                    Button{
                        print(curr)
                        if (curr == OneQuestions[indexQuestion].answer) {
                            
                            reset()
                            
                            if (indexQuestion == OneQuestions.count-1) {
                                showWin = true
                                indexQuestion = 0
                            }else{
                                indexQuestion += 1
                            }
                        }else{
                            showAlert = true
                            
                            reset()
                        }
                    }label: {
                        Text("SUBMIT")
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
                            Text("Its ok to have wrong answer.. Keep your head up and please try again!")
                        })
                        .sheet(isPresented: $showWin) {
                            Win()
                        }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func reset(){
        pickedAnswer = 0
        curr = []
        btnAState = true
        btnBState = true
        btnCState = true
        btnDState = true
        btnEState = true
        btnFState = true
        btnGState = true
        btnHState = true
    }
}

struct Hint: View {
    var body: some View {
        ZStack{
            Color.yellow
            VStack{
                Spacer()
                VStack{
                    Text("How To Play?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(10)
                    Text("Sort the numbers from the smallest to the largest, click submit to check the answers. If it is true, it will go to the next case (5 cases in total).")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                }
                .padding(.bottom, 30)
                VStack {
                    Text("Hint!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(10)
                    Text("Be carefull with the order of number you choose..")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                    Text("The number will dissapear once clicked..")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                    Text("There can be no numbers left..")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                    Text("No need to hurry, there is no time ticking..")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                }
                .padding(.bottom, 50)
                VStack {
                    Text("NOTE:")
                    Text("Winning means successfully completing all cases")
                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                        .padding(.bottom, 30)
                    Text("ESTIMATED TIME:")
                    Text("to complete all the cases it will take 1 minute")
                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .frame(width: 600)
                }
                Spacer()
            }
        }
    }
}

struct Win: View {
    var body: some View {
        ZStack{
            Color.green
            VStack{
                Text("🥳🎉🎊 Congratulationss... 🥳🎉🎊")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                    .foregroundColor(.white)
                Text("Horray! Cheers to you, you have successfully completed the first game... Then, What did you learn?")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 600)
                    .padding(.bottom, 60)
                Text("WHAT WE CAN LEARN:")
                    .foregroundColor(.white)
                Text("Each case represents a process, each case has its own challenges, some are easy and some are difficult. Maybe some of us have encountered an failure in doing so. Maybe some us need more time than others to complete the tasks. But, no matter how difficult and how much time it takes, we must stay Loyal to The Process. Stay focus on the process we are going through, instead of focusing on the end result. Never stop trying and give up. And, that's the meaning of the PROCESS")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 600)
                    .padding(4)
            }
        }
    }
}

struct GameOneView_Previews: PreviewProvider {
    static var previews: some View {
        GameOneView()
    }
}

struct Win_Previews: PreviewProvider {
    static var previews: some View {
        Win()
    }
}
