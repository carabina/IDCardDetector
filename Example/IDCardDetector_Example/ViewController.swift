//
//  ViewController.swift
//  IDCardDetector_Example
//
//  Created by Administrator on 13/12/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import IDCardDetector
class ViewController: UIViewController {
@IBOutlet weak var testImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        testImageView.circleImageView(borderColor: UIColor.white , borderWidth: 2.0)
        testImageView.downloadedFrom(link: "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg")
    }
}

