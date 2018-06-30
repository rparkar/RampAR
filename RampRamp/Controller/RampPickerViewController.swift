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
        
        let scene = SCNScene(named: "art.scnassets/ramps.scn")!
        sceneView.scene = scene
        
        let camera = SCNCamera()
        camera.usesOrthographicProjection = true
        scene.rootNode.camera = camera

        //adding pipe to popover
        var obj = SCNScene(named: "art.scnassets/pipe.dae")
        var node = obj?.rootNode.childNode(withName: "pipe", recursively: true)!
        
        node?.scale = SCNVector3Make(0.0022, 0.0022, 0.0022)
        node?.position = SCNVector3Make(-1, 0.7, -1)
        scene.rootNode.addChildNode(node!)
        
        //adding pyramid
        obj = SCNScene(named: "art.scnassets/pyramid.dae")
        node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)!
        node?.scale = SCNVector3Make(0.0059, 0.0059, 0.0059)
        node?.position = SCNVector3Make(-1, -0.45, -1)
        scene.rootNode.addChildNode(node!)
        
        //adding quarter
        obj = SCNScene(named: "art.scnassets/quarter.dae")
        node = obj?.rootNode.childNode(withName: "quarter", recursively: true)!
        node?.scale = SCNVector3Make(0.0059, 0.0059, 0.0059)
        node?.position = SCNVector3Make(-1, -2.2, -1)
        scene.rootNode.addChildNode(node!)
        
    }


}
