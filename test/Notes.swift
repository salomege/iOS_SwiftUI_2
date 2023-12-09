//
//  Notes.swift
//  test
//
//  Created by salome on 08.12.23.
//

import SwiftUI

struct Notes: Identifiable, Hashable {
    let id = UUID()
    let color: Color
    let shortNote: String
    let date: String
    let wasDone: Bool
    
    
    
    static func doneList() -> [Notes] {
        return [Notes(color: .yellow, shortNote:"Mobile App Research", date: "4 Oct", wasDone: true),
                Notes(color: .blue, shortNote:"Prepare Wireframe for Main Flow", date: "4 Oct", wasDone: true),
                Notes(color: .pink, shortNote:"Prepare ScreensPrepare Screens", date: "4 Oct", wasDone: true),
        ]
    }
    
    static func toDoList() -> [Notes] {
        return [Notes(color: .yellow, shortNote:"Website Research", date: "5 Oct", wasDone: false),
                Notes(color: .blue, shortNote:"Prepare Wireframe for Main Flow", date: "5 Oct", wasDone: false),
                Notes(color: .pink, shortNote:"Prepare Screens", date: "5 Oct", wasDone: false),
        ]
    }
}
