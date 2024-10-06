//
//  ContentView.swift
//  Counter
//
//  Created by Manato Abe on 2024/10/06.
//

import SwiftUI

// View: カウントを表示し、ボタンでカウントを増やす
struct ContentView: View {
    // ViewModelを使って状態管理
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.counterValue)")
                .font(.largeTitle)
                .padding()
            
            //countを増やすボタン
            Button(action: {
                viewModel.increment()
            }) {
                Text("Increment")
                    .font(.title)
                    .frame(minWidth: 140)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            //countを減らすボタン
            Button(action: {
                viewModel.decrement()
            }) {
                Text("Decrement")
                    .font(.title)
                    .frame(minWidth: 140)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
