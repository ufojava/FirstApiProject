//
//  ContentView.swift
//  FirstApiProject
//
//  Created by Ufuoma Okoro on 19/05/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //Get API Data
    //@State private var posts: [Post] = []
  
    
    
    
    var body: some View {
        
        UKForces()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//UK Forces
struct UKForces: View {
    
      @State private var forces: [ResponseUKForce] = []
    
    var body: some View {
        
        List {
        
                ForEach(forces,id: \.id) {force in
                    
                    VStack(alignment: .leading) {
                        
                        Text("Id: \(force.id)")
                            .foregroundColor(Color.blue)
                        Text("Name: \(force.name)")
                            .font(.system(size: 15))
                    }
                }//End of List
            
            }.padding()
        .onAppear() {
            
            PoliceForceData().loadForceData { force in
                
                self.forces = force
                
                
            }//Loop through the
            
            
        }//End on Appear
        
        
        
        
        
        
        
        
        
    }
}
