//
//  Models.swift
//  LearningApp
//
//  Created by PM HTML5 - Stevie Davis  on 11/30/21.
//

import Foundation

struct Module: Decodable, Identifiable {
    var id: Int
    var catagory: String
    var content: Content
    var test: Test
}
struct Content: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var desciption: String
    var lessons: [Lesson]
}
struct Lesson: Decodable, Identifiable {
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}
struct Test: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var question: [Question]
}
struct Question: Decodable, Identifiable {
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}
