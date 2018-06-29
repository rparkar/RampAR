//
//  RampPickerViewController.swift
//  RampRamp
//
//  Created by Rehan Parkar on 2018-06-29.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit
import SceneKit

class RampPickerViewController: UIViewController {

    //variables
    var sceneView: SCNView!
    var size: CGSize! //popover size
    

    init(size: CGSize) {
        super.init(nibName: nil, bundle: nil)
        self.size = size
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.frame = CGRect(origin: CGPoint.zero, size: size)
        sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        view.insertSubview(sceneView, at: 0)
        
        preferredContentSize = size

    }


}
