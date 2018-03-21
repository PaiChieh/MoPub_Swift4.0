//
//  ViewController5.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/16.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

class ViewController5: UIViewController,MPRewardedVideoDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        MoPub.sharedInstance().initializeRewardedVideo(withGlobalMediationSettings: nil, delegate: self)
        MPRewardedVideo.loadAd(withAdUnitID: "8f000bd5e00246de9c789eed39ff6096", withMediationSettings: [])
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
//        MPRewardedVideo.loadAd(withAdUnitID: "8f000bd5e00246de9c789eed39ff6096", withMediationSettings: [])
    }
    
    @IBAction func btn(_ sender: Any) {
        MPRewardedVideo.presentAd(forAdUnitID: "8f000bd5e00246de9c789eed39ff6096", from: self, with: nil)
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
