//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 23/01/2022.
//

import SwiftUI

struct ContentView: View {
    var firstDivision = Division.examples[0]
    var firstDivisionStudents = Division.examples[0].students
    var body: some View {
        VStack{
            Text("\(firstDivisionStudents[0].forename) \(firstDivisionStudents[0].surname)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
