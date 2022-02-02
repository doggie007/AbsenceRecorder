//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 02/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject{
    let student: Student
    @Published var isAbsent: Bool
    init(student: Student){
        self.student = student
        self.isAbsent = false
    }
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
}
