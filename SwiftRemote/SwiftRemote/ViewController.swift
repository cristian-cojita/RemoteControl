//
//  ViewController.swift
//  SwiftRemote
//
//  Created by Cristian Cojita on 9/16/14.
//  Copyright (c) 2014 Cristian Cojita. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var DoorBtn: UIButton!
    @IBOutlet weak var GateBtn: UIButton!
    @IBOutlet weak var UserMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GateTouchDown(sender: UIButton) {
        println("Gate touch down")
        Alamofire.request(.POST, "https://api.spark.io/v1/devices/53ff70065075535126451187/led", parameters: ["access_token":"c90aee533c514ae2b0efd5ecd1f765ae927c03a8", "params":"l1,HIGH"])
            .responseJSON {(request, response, JSON, error) in
                println(JSON)
        }
        
    }
    
    @IBAction func GateTouchUpInside(sender: UIButton) {
        println("Gate up inside")
        Alamofire.request(.POST, "https://api.spark.io/v1/devices/53ff70065075535126451187/led", parameters: ["access_token":"c90aee533c514ae2b0efd5ecd1f765ae927c03a8", "params":"l1,LOW"])
            .responseJSON {(request, response, JSON, error) in
                println(JSON)
        }
    }
    
    @IBAction func DoorTouchDown(sender: UIButton) {
        println("Door touch down")
        Alamofire.request(.POST, "https://api.spark.io/v1/devices/53ff70065075535126451187/led", parameters: ["access_token":"c90aee533c514ae2b0efd5ecd1f765ae927c03a8", "params":"l2,HIGH"])
            .responseJSON {(request, response, JSON, error) in
                println(JSON)
        }
        
    }
    
    @IBAction func DoorTouchUpInside(sender: UIButton) {
        println("Door up inside")
        Alamofire.request(.POST, "https://api.spark.io/v1/devices/53ff70065075535126451187/led", parameters: ["access_token":"c90aee533c514ae2b0efd5ecd1f765ae927c03a8", "params":"l2,LOW"])
            .responseJSON {(request, response, JSON, error) in
                println(JSON)
        }
    }



}

