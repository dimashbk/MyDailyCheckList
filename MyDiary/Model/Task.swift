//
//  Task.swift
//  MyDiary
//
//  Created by Dinmukhamed on 03.12.2022.
//

import Foundation

protocol TaskProtocol {
    
    var title: String { get set }
    var type: TaskPriority { get set }
    var status: TaskStatus { get set }
}

enum TaskPriority{
    case normal
    case important
    
}

enum TaskStatus: Int{
    case planned
    case completed
}

struct Task: TaskProtocol {
    var title: String
    var type: TaskPriority
    var status: TaskStatus
}

