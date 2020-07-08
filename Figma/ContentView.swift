//
//  ContentView.swift
//  Figma
//
//  Created by Jordan Singer on 7/7/20.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Set<Int> = [0]
    
    var body: some View {
        NavigationView {
            List(selection: self.$selection) {
                Label("Rectangle", systemImage: "square")
                    .tag(0)
                Label("Ellipse", systemImage: "circle")
                Label("Rectangle", systemImage: "square")
                Label("Hello, world!", systemImage: "textformat.alt")
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 212, idealWidth: 212, maxWidth: 212, maxHeight: .infinity)
            
            Canvas()
        }
        .navigationTitle("")
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "line.horizontal.3")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "cursorarrow")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "square")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "text.cursor")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "hand.raised")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "bubble.left")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: { }) {
                    Image(systemName: "person")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: { }) {
                    Image(systemName: "play")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: { }) {
                    Text("100%")
                    Image(systemName: "chevron.down")
                }
            }
        }
    }
}

struct Canvas: View {
    var body: some View {
        NavigationView {
            CanvasView()
            .frame(width: 540)
            .background(Color(NSColor.controlBackgroundColor))
            
            List {
                HStack {
                    Image(systemName: "text.alignleft")
                    Spacer()
                    Image(systemName: "rectangle.portrait.arrowtriangle.2.inward")
                    Spacer()
                    Image(systemName: "text.aligncenter")
                    Spacer()
                    Image(systemName: "rectangle.portrait.arrowtriangle.2.outward")
                    Spacer()
                    Image(systemName: "text.alignright")
                }
                
                Group {
                    Divider()
                    
                    HStack {
                        Text("Layer")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Fill")
                        Spacer()
                        Image(systemName: "plus")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Stroke")
                        Spacer()
                        Image(systemName: "plus")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Effects")
                        Spacer()
                        Image(systemName: "plus")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Export")
                        Spacer()
                        Image(systemName: "plus")
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .frame(width: 212)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
