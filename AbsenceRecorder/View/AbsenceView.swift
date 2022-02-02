//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 01/02/2022.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.forename){studentAbsence in
            AbsenceItem(studentAbsence: studentAbsence)
        }
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.example)
    }
}
