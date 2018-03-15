//
//  ViewController.swift
//  FLAnimatedImageDemo-tvOS
//
//  Created by Isaac Overacker on 2/6/16.
//  Copyright © 2016 Flipboard. All rights reserved.
//

import UIKit
import FLAnimatedImage

class ViewController: UIViewController {

    @IBOutlet weak var animatedImageView: FLAnimatedImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        let image = FLAnimatedImage(animatedGIFData: try? Data(contentsOf: Bundle.main.url(forResource: "rock", withExtension: "gif")!))
        animatedImageView.animatedImage = image
    }

}

