//
//  ListRow.swift
//  test
//
//  Created by salome on 09.12.23.
//

import SwiftUI

struct ListRow: View {
    
    let notes: Notes
    var body: some View {
        HStack {
            UnevenRoundedRectangle(
                topLeadingRadius: 7.5,
                bottomLeadingRadius: 7.5
            )
                .frame(width:15, height:80)
                .foregroundColor(notes.color)
            
            VStack{
                Text(notes.shortNote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image("Group 30")
                    Text(notes.date)
                        .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            .foregroundColor(.white)
            Spacer()
            Image(systemName: notes.wasDone ? "checkmark": "circle")
                .resizable()
                .background(.purple)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .frame(width: 26, height: 26)
                .padding( .trailing, 20)
                .foregroundColor(.white)
            
        }
    }
}

