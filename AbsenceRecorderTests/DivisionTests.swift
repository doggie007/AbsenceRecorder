//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Tcheng, James (BJH) on 02/02/2022.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWIthAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateFuture = Date(timeIntervalSinceNow: 100000000000000)
        
        let absence1 = Absence(date: dateFuture, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual{
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }

    }


}
