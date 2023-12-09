//
//  ContentView.swift
//  test
//
//  Created by salome on 08.12.23.
//

import SwiftUI



struct ContentView: View {
    @State private var doneList = Notes.doneList()
    @State private var toDoList = Notes.toDoList()
    @State private var doneQuantity = 0
    @State private var wasDone = false
    var body: some View {
        VStack {
            HStack{
                Text("You have \(doneList.count) tasks to complete")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                    .frame(width:188, height:50)
                    .lineLimit(2)
                Spacer()
                Image("image 7")
                  
                    .resizable()
                    .frame(width:44, height:44)
                    .clipShape(.circle)
                    .overlay {
                        Circle()
                            .frame(width: 15, height:15)
                            .foregroundColor(.red)
                            .offset(x: 15, y: 15)

                        Text("\(toDoList.count)")
                            .foregroundColor(.white)
                            .offset(x: 15, y: 15)
                    }
                
            }
            Button(action: {
                doneList.append(contentsOf: toDoList)
                toDoList.removeAll()
                doneQuantity += doneList.count
                wasDone = true
            }, label: {
                Text("Complete All")
                    .font(.system(size: 16))
                    .frame(width:350, height: 50)
                    .background(LinearGradient(colors: [Color.purple, Color.pink], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(8)
            })
            Text("Progress")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size:20))
            
            VStack(spacing: 5) {
                Text("Daily Task")
                    .font(.system(size:18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                Text("0/0 Task Completed")
                    .font(.system(size:16))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                HStack{
                    Text("Keep  working")
                        .font(.system(size:14))
                        .foregroundColor(.gray)
                    Spacer()
                    Text("50%")
                    
                }
                .padding([.leading, .trailing], 20)
            }
            .frame(width:390, height:140)
            .background(Color(#colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)))
            
            Text("Completed Tasks")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size:22))
            
            List {
                Section{
                    ForEach(doneList) {notes in
                        ListRow(notes: notes)
                    }
                }
                .background(Color(#colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)).edgesIgnoringSafeArea(.all))
                .listRowInsets(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
                Section{
                    ForEach(toDoList) {notes in
                        ListRow(notes: notes)
                    }
                    
                }
                .scrollContentBackground(.hidden)
                .background(Color(#colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)).edgesIgnoringSafeArea(.all))
                .listRowInsets(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
                
            }
            
            
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .padding([.leading, .trailing], 20)
        .foregroundColor(.white)
        
    }
}

#Preview {
    ContentView()
}
