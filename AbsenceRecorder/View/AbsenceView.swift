//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 01/02/2022.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    var body: some View {
        Text("Absence View - \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
