//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Tcheng, James (BJH) on 10/02/2022.
//

import Foundation

extension FileManager{
    private func getDocumentDirectory()->URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        return userPath
    }
    
    
    func save<T:Codable>(to filePath: String, object: T){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object){
            if let json = String(data: encoded, encoding: .utf8){
                let url = getDocumentDirectory().appendingPathComponent(filePath)
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func load<T: Codable>(from filepath: String)->T?{
        let url = getDocumentDirectory().appendingPathComponent(filepath)
        if let data = try? Data(contentsOf: url){
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data){
                return loaded
            }else{
                print("Failed to decode")
                return nil
            }
        }else{
            print("Failed to find file at given path")
            return nil
        }
    }
    
}
