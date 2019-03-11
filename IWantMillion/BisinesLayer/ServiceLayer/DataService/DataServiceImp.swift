//
//  DataServiceImp.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


class DataServiceImpl: DataService {

    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let userDefault = UserDefaults.standard
    
    func saveResult(results: [Result])  {
        do {
            let data = try self.encoder.encode(results)
            userDefault.set(data, forKey: "results")
        }
        catch {
            print(error)
        }
    }
    
    func loadResults() -> [Result] {
        guard let data = userDefault.data(forKey: "results") else {return []}
        
        do {
            return try self.decoder.decode([Result].self, from: data)
        }
        catch {
            return []
        }
    }
}
