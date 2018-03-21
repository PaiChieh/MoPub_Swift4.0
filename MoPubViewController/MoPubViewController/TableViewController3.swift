//
//  TableViewController3.swift
//  MoPubViewController
//
//  Created by タケル on 2018/3/19.
//  Copyright © 2018年 OBfirm. All rights reserved.
//

import UIKit
import MoPub

class TableViewController3: UITableViewController {

    // MARK: - Property
    var placer = MPTableViewAdPlacer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAdView()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func setupAdView() {
        
        let targeting = MPNativeAdRequestTargeting()
//        targeting.location = CLLocation (latitude: 37.7793, longitude: -122.4175)
        targeting.desiredAssets = NSSet (objects: kAdIconImageKey, kAdMainImageKey, kAdCTATextKey, kAdTextKey, kAdTitleKey) as! Set<AnyHashable>
        
        let nativeAdSettings = MPStaticNativeAdRendererSettings()
        nativeAdSettings.renderingViewClass = MPTableViewAdPlacerView.self
        nativeAdSettings.viewSizeHandler = {(maxWidth: CGFloat) -> CGSize in
            let size:CGSize = CGSize(width: maxWidth, height: 333)
            return size
        }
        
        var nativeAdConfig = MPNativeAdRendererConfiguration()
        nativeAdConfig = MPStaticNativeAdRenderer.rendererConfiguration(with: nativeAdSettings)
        nativeAdConfig.supportedCustomEvents = ["MPMoPubNativeCustomEvent","FlurryNativeCustomEvent"]
        
        self.placer = MPTableViewAdPlacer.init(tableView: self.tableView, viewController: self, rendererConfigurations: [nativeAdConfig])
        
        placer .loadAds(forAdUnitID: "76a3fefaced247959582d2d2df6f4757", targeting: targeting)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.mp_dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell
        
        
        cell.textLabel?.text = "Test"

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.mp_deselectRow(at: indexPath, animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension TableViewController3 : MPTableViewAdPlacerDelegate{
//
//    func nativeAdWillPresentModal(for placer: MPTableViewAdPlacer!) {
//        print("Table view ad placer will present modal.")
//    }
//    func nativeAdDidDismissModal(for placer: MPTableViewAdPlacer!) {
//        print("Table view ad placer did dismiss modal.")
//    }
//    func nativeAdWillLeaveApplication(from placer: MPTableViewAdPlacer!){
//        print("Table view ad placer will leave application.")
//    }
//}

