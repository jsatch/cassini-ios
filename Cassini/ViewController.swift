//
//  ViewController.swift
//  Cassini
//
//  Created by Hernan Quintana on 25/12/15.
//  Copyright © 2015 Jsatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController{
            if let identifier = segue.identifier{
                switch identifier{
                    case "Earth":
                        ivc.imageURL = DemoURL.NASA.Earth
                        ivc.title = "Earth"
                    case "Cassini":
                        ivc.imageURL = DemoURL.NASA.Cassini
                        ivc.title = "Cassini"
                    case "Saturn":
                        ivc.imageURL = DemoURL.NASA.Saturn
                        ivc.title = "Saturn"
                    default:
                        break;
                }
            }
        }
    }

}

