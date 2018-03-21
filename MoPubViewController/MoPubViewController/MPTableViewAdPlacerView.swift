//
//  MPTableViewAdPlacerView.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/20.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

let deviceWidth = UIScreen.main.bounds.width
let deviceHeight = UIScreen.main.bounds.height

class MPTableViewAdPlacerView: UIView, MPNativeAdRendering {

     var titleLabel = UILabel()
     var mainTextLabel = UILabel()
     var iconImageView = UIImageView()
     var mainImageView = UIImageView()
     var privacyInformationIconImageView = UIImageView()
     var ctaLabel = UILabel()
 
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code

        titleLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
//        titleLabel.text = "Title"
        self.addSubview(titleLabel)
        
        mainTextLabel.font = UIFont.systemFont(ofSize: 14.0)
//        mainTextLabel.text = "Text"
        mainTextLabel.numberOfLines = 2
        self.addSubview(mainTextLabel)
        
        self.addSubview(iconImageView)
        
        mainImageView.clipsToBounds = true
        mainImageView.contentMode = UIViewContentMode.scaleAspectFill
        self.addSubview(mainImageView)
        
        ctaLabel.font = UIFont .systemFont(ofSize: 14.0)
//        ctaLabel.text = "CTA Text"
        ctaLabel.textColor = .green
        ctaLabel.textAlignment = NSTextAlignment.right
        self.addSubview(ctaLabel)
        
        self.addSubview(privacyInformationIconImageView)
        
        self.backgroundColor = UIColor.init(white: 0.21, alpha: 1.0)
        titleLabel.textColor = UIColor.init(white: 0.86, alpha: 1.0)
        mainTextLabel.textColor = UIColor.init(white: 0.86, alpha: 1.0)
        
        self.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        titleLabel.frame = CGRect (x: 75, y: 10, width: 212, height: 60)
        iconImageView.frame = CGRect (x: 10, y: 10, width: 60, height: 60)
        privacyInformationIconImageView.frame = CGRect (x: deviceWidth - 30, y: 10, width: 20, height: 20)
        ctaLabel.frame = CGRect (x: deviceWidth - 100, y: 270, width: 90, height: 48)
        mainTextLabel.frame = CGRect (x: deviceWidth / 2 - 150, y: 68, width: 300, height: 50)
        mainImageView.frame = CGRect (x: deviceWidth / 2 - 150, y: 119, width: 300, height: 156)
    }
    
    func nativeMainTextLabel() -> UILabel! {
        return mainTextLabel
    }
    func nativeTitleTextLabel() -> UILabel! {
        return titleLabel
    }
    func nativeCallToActionTextLabel() -> UILabel! {
        return ctaLabel
    }
    func nativeIconImageView() -> UIImageView! {
        return iconImageView
    }
    func nativeMainImageView() -> UIImageView! {
        return mainImageView
    }
    func nativePrivacyInformationIconImageView() -> UIImageView! {
        return privacyInformationIconImageView
    }

}
