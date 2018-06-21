//
//  ViewController.swift
//  Study-RxSwift
//
//  Created by Takayuki Sei on 2018/06/12.
//  Copyright © 2018年 Takayuki Sei. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    private let disposeBag = RxSwift.DisposeBag()
    private var viewModel: TextViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let viewModel = TextViewModel(input: textInput.rx.text.orEmpty.asDriver())
//        viewModel.outputText
//        .drive(self.label.rx.text)
//        .disposed(by: self.disposeBag)
//        self.viewModel = viewModel
        
        let scheduler = SerialDispatchQueueScheduler(qos: .default)
        let subscription = Observable<Int>.interval(0.3, scheduler: scheduler)
            .subscribe { event in
                print(event)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

