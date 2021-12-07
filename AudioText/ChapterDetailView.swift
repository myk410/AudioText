//
//  ContentView.swift
//  AudioText
//
//  Created by G. Michael Fortin Jr on 12/6/21.
//

import SwiftUI
import AVKit

struct ChapterDetailView: View {
    
    @State var isPlaying: Bool = false
    @State var player = AVAudioPlayer()
    
    var body: some View {
        
        HStack {
            Button(action: self.playPause, label:
                    {Image(systemName: "arrow.left.circle").resizable ()})
                .frame(width: 70, height: 70).foregroundColor(Color.black.opacity(0.2))
            Button(action: self.playPause, label:
                    {Image(systemName: isPlaying ? "pause.circle.fill" :  "play.circle.fill").resizable ()})
                .frame(width: 70, height: 70)
            Button(action: self.playPause, label:
                    {Image(systemName: "arrow.right.circle").resizable ()})
                .frame(width: 70, height: 70)
                .foregroundColor(Color.black.opacity(0.2))
        }.onAppear(perform: {
            let song = Bundle.main.url(forResource: "01", withExtension: "mp3")
            if song != nil {
                self.player = try! AVAudioPlayer(contentsOf: song!)
            }
        })
    }
    func playPause() {
        if isPlaying {
            self.player.pause()
        }else{
            self.player.play()
        }
        self.isPlaying.toggle()
        
    }
    
    func next() {
        
    }
    
    func previous() {
        
    }
}

struct ChapterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterDetailView()
    }
}
