//
//  ViewController.swift
//  XLabel
//
//  Created by jowsing on 12/14/2024.
//  Copyright (c) 2024 jowsing. All rights reserved.
//

import UIKit
import XLabel
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = XLabel(frame: .zero)
        label.textInserts = .init(top: 10, left: 10, bottom: 10, right: 10)
        label.layer.cornerRadius = 10
        label.text = "99+"
        label.textColor = .white
        label.font = .systemFont(ofSize: 30, weight: .medium)
        label.layer.masksToBounds = true
        label.backgroundColor = .red
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

