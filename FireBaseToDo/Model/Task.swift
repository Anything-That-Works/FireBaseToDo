//
//  Task.swift
//  FireBaseToDo
//
//  Created by Promal on 17/11/21.
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title : String
    var completed : Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement UI", completed: true),
    Task(title: "Connect to fireBase", completed: false),
    Task(title: "??", completed: false),
    Task(title: "Profit", completed: false)
]
#endif

