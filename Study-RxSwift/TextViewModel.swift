//
//  TextViewModel.swift
//  Study-RxSwift
//
//  Created by Takayuki Sei on 2018/06/12.
//  Copyright © 2018年 Takayuki Sei. All rights reserved.
//

import RxSwift
import RxCocoa

struct TextViewModel {
    let outputText: Driver<String>
    
    init(input inputText: Driver<String>) {
        self.outputText = inputText
            .map { text in text.uppercased()}
            .asDriver()
    }
}
