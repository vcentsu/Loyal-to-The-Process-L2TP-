// INTRODUCTION
/*
 
 Hi WWDC2022! My name is Vincentius Sutanto, or just call me Centsu. I'm a Computer Science Student and an Intern in Apple Developer Academy @GOP BINUS. Nice to meet you!
 
 This is my swift playground project called "Loyal to The Process (L2TP)" about mindset on focusing on the process, rather than chasing the end result. My main target is for children and teenager to understand and enjoy every process.
 
 It's the same as what I'm doing, focusing on learning, joining and submitting the Student Swift Challenge as a process. Because I believe, doing these challenges, will be very beneficial for myself in the long run. For me, Winning WWDC is just only the bonus of these processes. (Too see more, read in READ ME)
 
 Thank you for reviewing my app, and hope you have a wonderful day!
 
*/


// CREDITS
/*
 
 Background Music by vizion-studios from Pixabay
 Emoji and Memoji originally from Apple
 
 Logo L2TP are drawn by myself
 Photo of mine, handsome right? JK
 
 */


import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            AppContentView()
                .onAppear(perform: {
                    playMusic(sound: "background-music", type: "mp3")
                })
        }
    }
}
