//
//  ViewController.swift
//  Media Example
//
//  Created by Richard Mallion on 12/01/2015.
//  Copyright (c) 2015 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    @IBAction func mediaSegments(sender: AnyObject) {
        
        var filePath : String?
        
        switch sender.selectedSegmentIndex
        {
        case 0:
            //filePath = NSBundle.mainBundle().pathForResource("mypdf", ofType: "pdf")
             myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-realtime.herokuapp.com/")!))
        case 1:
            //filePath = NSBundle.mainBundle().pathForResource("excel", ofType: "xlsx")
             myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-govuk-realtime.herokuapp.com/")!))
        case 2:
            //filePath = NSBundle.mainBundle().pathForResource("mykeynote", ofType: "ppt")
             myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-leaderboard.herokuapp.com/")!))
        case 3:
            //filePath = NSBundle.mainBundle().pathForResource("movie", ofType: "m4v")
             myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-slides.herokuapp.com/")!))
        case 4:
            //filePath = NSBundle.mainBundle().pathForResource("movie", ofType: "m4v")
             myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-map.herokuapp.com/")!))
        default:
            println("Segment not found")
        }
    
    //    myWebView.loadRequest(NSURLRequest(URL:NSURL(fileURLWithPath: filePath!)!))

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filePath = NSBundle.mainBundle().pathForResource("mypdf", ofType: "pdf")
        //myWebView.loadRequest(NSURLRequest(URL:NSURL(fileURLWithPath: filePath!)!))
         myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://gds-screens-realtime.herokuapp.com/")!))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

