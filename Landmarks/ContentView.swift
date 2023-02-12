//
//  ContentView.swift
//  Landmarks
//
//  Created by student on 2/11/23.
//

import SwiftUI

/*content view represents what will be
visble on the canvas. From here I will
 construct the app through code
 
 In canvas: cmd + click: brings up menu
    show swiftUI inspector brings up properties window for element.
 
 In complier: cmd + click gives options to embed as vstack etc
 */

struct ContentView: View {
    var body: some View {
        VStack{
            MapView() //brings in the map view from other swiftView file
                .ignoresSafeArea(edges:.top)
                .frame(height: 300) //set the hieght of the view brought in
            CircleImage()
                .offset(y: -130)
                .padding(-130)

            VStack(alignment: .leading) { //aligment: .lead lines the V stack element with the H stack element on the left.
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer() //place text on the edges of the screen
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider() //creates a line and divider(see it below the text)
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("It's a landmark I guess...")
            }
            .padding() //this adds padding to both vstack and hstack.
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
