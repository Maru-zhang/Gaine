//
//  ViewController.swift
//  Gaine
//
//  Created by Maru-zhang on 03/06/2018.
//  Copyright (c) 2018 Maru-zhang. All rights reserved.
//

import UIKit
import Gaine

class MyType {
    var name: String?
}

class Demo {

    lazy var foo = Gaine(CGSize()) {
        $0.width = 100
        $0.height = 200
    }
}

class ViewController: UIViewController {}

