//
//  Source.swift
//  HeadlinesApp
//
//  Created by David Szemenkar on 2018-04-18.
//  Copyright © 2018 David Szemenkar. All rights reserved.
//

import Foundation

class Source {
    
    var id :String
    var name :String
    var description :String
    
    init(sourceViewModel: SourceViewModel) {
        self.id = sourceViewModel.id
        self.name = sourceViewModel.name
        self.description = sourceViewModel.description 
    }
    
    
    init?(dictionary :[String:Any]) {
        
        guard let id = dictionary["id"] as? String,
              let name = dictionary["name"] as? String,
            let description = dictionary["description"] as? String else {
                return nil
        }
        
        self.id = id
        self.name = name
        self.description = description
    }
}


