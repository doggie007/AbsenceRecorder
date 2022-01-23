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
    init(code:String){
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code:String, of size: Int)->Division{
        let division = Division(code: code)
        for i in 1...size{
            division.students.append(Student(forename: "\(i)", surname: "\(i)", birthday: Date()))
        }
        return division
    }
    #endif
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),Division.createDivision(code: "vDY-2", of: 12),Division.createDivision(code: "eVY-1", of: 15),Division.createDivision(code: "vBc-2", of: 14)]
}
