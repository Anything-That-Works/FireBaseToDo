//
//  TasksCellViewModel.swift
//  FireBaseToDo
//
//  Created by Promal on 17/11/21.
//

import Foundation
import Combine


class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    @Published var taskRepository = TaskRepository()
    var id : String = ""
    @Published var completionStateIconName : String = ""
    private var cancellable = Set<AnyCancellable>()
    
    init (task: Task){
        self.task = task
        
        $task
            .map { task in
            task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completionStateIconName, on: self)
        .store(in: &cancellable)
        
        $task
            .compactMap { task in
            task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellable)
        
        $task
            .dropFirst()
            .debounce(for: 0.8, scheduler: RunLoop.main)
            .sink{ task in
                self.taskRepository.updatetask(task)
            }
            .store(in: &cancellable)
    }
}
