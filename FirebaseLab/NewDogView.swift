//
//  NewDogView.swift
//  FirebaseLab
//
//  Created by Gaming Lab on 1/12/24.
//

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack{
            TextField("Dog", text: $newDog)
            Button {
                dataManager.adDog(dogBreed: newDog)
            } label: {
                Text("Save")
            }
        }.padding()
   
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
