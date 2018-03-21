//
//  ViewController2.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/16.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

class ViewController2: UIViewController {

    var bannerAdView : MPAdView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adSize: CGSize = UI_USER_INTERFACE_IDIOM() == .phone ? MOPUB_MEDIUM_RECT_SIZE : MOPUB_MEDIUM_RECT_SIZE
        bannerAdView = MPAdView.init(adUnitId: "2aae44d2ab91424d9850870af33e5af7", size: adSize)
        bannerAdView?.delegate = self
        setupAdView()
        bannerAdView?.loadAd()
        
    }
    
    func setupAdView() {
        
        let bounds : CGRect = view.bounds
        var adFrame : CGRect = CGRect.zero
        
        adFrame.size = bannerAdView!.sizeThatFits(bounds.size)
                adFrame.origin.x = (bounds.size.width-adFrame.size.width)/2
                adFrame.origin.y = (bounds.size.height-adFrame.size.height)/2+20
        
        bannerAdView!.frame = adFrame
        self.view?.addSubview(bannerAdView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

extension ViewController2: MPAdViewDelegate {
    func viewControllerForPresentingModalView() -> UIViewController! {
        return self
    }
    
    
}
