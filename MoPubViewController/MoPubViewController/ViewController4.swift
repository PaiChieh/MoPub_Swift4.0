//
//  ViewController4.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/16.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

class ViewController4: UIViewController {

    var interstitial:MPInterstitialAdController?
    let btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        interstitial = MPInterstitialAdController (forAdUnitId: "4f117153f5c24fa6a3a92b818a5eb630")
//        interstitial?.delegate = self
//        self.interstitial?.loadAd()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.interstitial?.loadAd()
    }
    @IBAction func btn(_ sender: Any) {
        self.interstitial?.show(from: self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
