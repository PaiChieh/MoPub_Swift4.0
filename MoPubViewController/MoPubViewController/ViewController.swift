//
//  ViewController.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/16.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

class ViewController: UIViewController {

    var bannerAdView : MPAdView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adSize: CGSize = UI_USER_INTERFACE_IDIOM() == .phone ? MOPUB_MEDIUM_RECT_SIZE : MOPUB_MEDIUM_RECT_SIZE
        bannerAdView = MPAdView.init(adUnitId: "0ac59b0996d947309c33f59d6676399f", size: adSize)
        
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

extension ViewController: MPAdViewDelegate {
    func viewControllerForPresentingModalView() -> UIViewController! {
        return self
    }
    
    
}

