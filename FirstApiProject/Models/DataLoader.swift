//
//  DataLoader.swift
//  FirstApiProject
//
//  Created by Ufuoma Okoro on 19/05/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

//Dataloader for the API call
import Foundation
import SwiftUI


/*API UK Police Forces

 URL - https://data.police.uk/api/forces
*/


struct ResponseUKForce: Codable {
    
    var id: String
    var name: String
    
}



class PoliceForceData {
    
    //NBA URL Sessions
    func loadForceData(completion: @escaping ([ResponseUKForce]) -> ()) {
        
        //Check the URL
        guard let url = URL(string: "https://data.police.uk/api/forces") else {
            
            print("Invalid URL")
            return
            
        }//End the check
        
        //Set variable to the session
        let request = URLRequest(url: url)
        
        //Now to create the session
        URLSession.shared.dataTask(with: request) {data, response, error in
            
            if let data = data {
                
                if let decodedResponse = try? JSONDecoder().decode([ResponseUKForce].self, from: data) {
                    
                    
                    DispatchQueue.main.async {
                        completion(decodedResponse)
                    }
                    
                    
                    
                }
                
            
                
                
            }
        
        
        
        }.resume()
        
        
        
        
        
        
    }//End of function
    
            
}//End of Class



