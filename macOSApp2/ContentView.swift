//
//  ContentView.swift
//  macOSApp2
//
//  Created by Jain, Eshan on 1/24/24.
//

import SwiftUI

struct Option: Hashable {
    let title: String
    let imageName: String
}

struct ContentView: View {
    
    let options: [Option] = [
        .init(title: "Home", imageName: "house"),
        .init(title: "About", imageName: "info.circle"),
        .init(title: "Settings", imageName: "gear"),
        .init(title: "Social", imageName: "message"),
        ]
        
    var body: some View {
        NavigationView {
            ListView(options: options)
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
}

struct ListView: View {
    let options: [Option]
    var body: some View {
        VStack {
            ForEach(options, id: \.self) {
                option in
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                    
                    Text(option.title)
                    
                    Spacer()
                }
                .padding(5)
            }
            Spacer()
        }
    }
}

struct MainView: View {
    var body: some View {
        VStack {
            Image("Mango")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
