//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 02/02/2022.
//

import Foundation
class Absence{
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]){
        self.takenOn = date
        studentAbsences = students.map({ student in
            StudentAbsence(student: student)
        })
    }
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
