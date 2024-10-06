//
//  CounterViewModel.swift
//  Counter
//
//  Created by Manato Abe on 2024/10/06.
//

import Foundation

// ViewModel: データの管理
class CounterViewModel: ObservableObject {
    @Published private var counter = Counter() // Modelを参照
    
    var counterValue: Int {
        counter.value
    }
    
    // カウントを増やす
    func increment() {
        counter.value += 1
    }
    
    //カウントを減らす
    func decrement() {
        counter.value -= 1
    }
}
