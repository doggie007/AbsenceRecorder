//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 23/01/2022.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date){
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    #if DEBUG
    static let example = Student(forename: "Mark", surname: "Zuckerberg", birthday: Date())
    static let examples = [
        Student(forename: "Mark", surname: "Zuckerberg", birthday: Date()),
        Student(forename: "James", surname: "Tcheng", birthday: Date()),
        Student(forename: "Tim", surname: "Cook", birthday: Date())
    ]
    #endif
}
