//
//  home.swift
//  Video
//
//  Created by Aditya kumar on 20/04/21.
//

import SwiftUI
import AVKit

struct home: View {
    
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        
        return scale
    }
    
    var body: some View {
       
        VStack{
            player().frame(height: UIScreen.main.bounds.height / 3).offset(y: -33)
            ScrollView {
                ZStack{
                ScrollView(.horizontal) {
                    HStack(spacing: 50) {
                        ForEach(0..<3) { num in
                            GeometryReader { proxy in
                                VStack {
                                            let scale = getScale(proxy: proxy)
                                            
                                            Image("a")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 300)
                                                .clipped()
                                                .cornerRadius(5)
                                                .shadow(radius: 5)
                                                .scaleEffect(CGSize(width: scale, height: scale))
                                                .animation(.easeOut(duration: 0.5))
                                        }
                                .padding(.top, 25)
                            }
                            .frame(width: 300, height: 450)
                        }
                    }.padding()
                }
                }
            }
            
            Spacer()
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

struct player : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        let url = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        let player1 = AVPlayer(url: URL(string: url)!)
        controller.player = player1
        return controller
    }
    
    func updateUIViewController(_ UIViewController: AVPlayerViewController,
                                context: UIViewControllerRepresentableContext<player>){
        
    }
}
