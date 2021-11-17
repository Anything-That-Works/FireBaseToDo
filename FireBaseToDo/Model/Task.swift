//
//  Task.swift
//  FireBaseToDo
//
//  Created by Promal on 17/11/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Task: Codable, Identifiable {
    @DocumentID var id: String?
    var title : String
    var completed : Bool
    @ServerTimestamp var createdTime: Timestamp?
    var userID: String?
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement UI", completed: true),
    Task(title: "Connect to fireBase", completed: false),
    Task(title: "??", completed: false),
    Task(title: "Profit", completed: false)
]
#endif

