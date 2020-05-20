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
    @State private var forces: [ResponseUKForce] = []
    
    
    
    var body: some View {
        

        
        List(forces,id: \.id) {force in
            
            VStack {
            Text(force.id)
            Text(force.name)
            }
        }
        .onAppear() {
            
            PoliceForceData().loadForceData { force in
                
                self.forces = force
                
                
            }//Loop through the
            
            
        }//End on Appear
        
        
   
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
