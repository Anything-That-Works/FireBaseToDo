//
//  FireBaseToDoApp.swift
//  FireBaseToDo
//
//  Created by Promal on 17/11/21.
//

import SwiftUI
import Firebase
@main
struct FireBaseToDoApp: App {
    init(){
        FirebaseApp.configure()
        Auth.auth().signInAnonymously()
    }
    
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
    }
}
