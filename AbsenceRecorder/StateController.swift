//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 01/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    init(){
//        divisions = Division.examples
        loadFromFile()
    }
    func loadFromFile(){
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json"){
            divisions = loaded
        }
    }
    func saveToFile(){
        FileManager.default.save(to: "divisions.json", object: divisions)
    }
    
}
