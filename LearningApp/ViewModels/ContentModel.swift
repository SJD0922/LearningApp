//
//  ContentModel.swift
//  LearningApp
//
//  Created by PM HTML5 - Stevie Davis  on 11/30/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        getLocalData()
        
    }
    func getLocalData(){
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        do{
        //Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
           
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
       
        //Assign parsed modules to modules properly
            self.modules = modules
        }
        catch{
            print("Couldn't pares local data")
          
        }
   //Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            // Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        }
        catch{
            //log error
            print("Couldn't parse style data")
        }
    }
}
