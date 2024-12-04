//
//  ListView.swift
//  FirebaseLab
//
//  Created by Gaming Lab on 1/12/24.
//

import SwiftUI
struct ListView: View{
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    var body: some View{
        NavigationView{
            List(dataManager.dogs, id: \.id){ dog in
                Text(dog.breed)
                
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Image(systemName: "plus")
            }
                                                ))
            .sheet(isPresented: $showPopup) {
                NewDogView()
            }
        }
        
    }
}

struct ListView_Previews: PreviewProvider{
    static var previews: some View{
        ListView()
    }
}
