//
//  RealmStorageDemoApp.swift
//  RealmStorageDemo
//
//  Created by mimi on 3/6/21.
//

import SwiftUI
import RealmSwift

@main
struct RealmStorageDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    //Use terminal to open up the file in your realm browser
                    print(Realm.Configuration.defaultConfiguration.fileURL ?? "")
                    
                }
        }
    }
}

