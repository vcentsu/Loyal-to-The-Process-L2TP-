//
//  GameOneData.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 23/04/22.
//

import Foundation

struct GameOneQuestion {
    var question: [Int]
    var answer: [Int]
}

let OneQuestions = [
    GameOneQuestion(question: [1,2,3,4,5,6,7,8], answer: [1,2,3,4,5,6,7,8]),
    GameOneQuestion(question: [8,5,2,1,3,4,7,6], answer: [1,2,3,4,5,6,7,8]),
    GameOneQuestion(question: [10,3,1,6,2,8,5,7], answer: [1,2,3,5,6,7,8,10]),
    GameOneQuestion(question: [3,6,7,4,8,10,5,12], answer: [3,4,5,6,7,8,10,12]),
    GameOneQuestion(question: [7,9,10,11,5,16,28,17], answer: [5,7,9,10,11,16,17,28]),
]
