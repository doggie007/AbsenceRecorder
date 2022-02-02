//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 23/01/2022.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code:String){
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to:date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence{
        if let existingAbsence = self.getAbsence(for: date){
            return existingAbsence
        } else{
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
    }
    
    #if DEBUG
    static func createDivision(code:String, of size: Int)->Division{
        let division = Division(code: code)
        for i in 1...size{
            division.students.append(Student(forename: "Firstname \(i)", surname: "Surname \(i)", birthday: Date()))
        }
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),Division.createDivision(code: "vDY-2", of: 12),Division.createDivision(code: "eVY-1", of: 15),Division.createDivision(code: "vBc-2", of: 14)]
    #endif
}
