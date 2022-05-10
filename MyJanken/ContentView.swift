//
//  ContentView.swift
//  MyJanken
//
//  Created by 内芝弘尭 on 2022/05/09.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        VStack {
            if answerNumber == 0 {
                Text("これからジャンケンをします")
            } else if answerNumber == 1 {
                Image("gu")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                Text("グー")
            } else if answerNumber == 2 {
                Image("choki")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                Text("チョキ")
            } else {
                Image("pa")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                Text("パー")
            }
            Button("ジャンケンをする") {
                print("たっぷされたよ！")
                answerNumber = Int.random(in: 1...3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
