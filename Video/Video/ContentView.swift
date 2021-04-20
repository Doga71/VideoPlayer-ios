//
//  ContentView.swift
//  Video
//
//  Created by Aditya kumar on 20/04/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
//    private let player = AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)
    var body: some View {
        NavigationView{
        NavigationLink(
            destination: home(),
            label: {
                Text("CONTINUE")
                    .bold()
                    .frame(width: 280, height: 70, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(15)
            })
            .navigationBarItems(trailing:
                Button(action: {
                    print("Edit button pressed...")
                }) {
                    Text("return")
                }
            )
        }
//    VideoPlayer(player: player)
//               .onAppear() {
//                   player.play()
//               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


