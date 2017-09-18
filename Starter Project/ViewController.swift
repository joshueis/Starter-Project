//
//  ViewController.swift
//  Starter Project
//
//  Created by Israel Carvajal on 9/18/17.
//  Copyright © 2017 Israel Carvajal. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADInterstitialDelegate {

    var interstitial: GADInterstitial!
    
    @IBAction func showAds(_ sender: Any) {
        
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
            
        }
        
    }
    func createAndLoadInterstitial()-> GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        interstitial.delegate = self
        interstitial.load(GADRequest())
        return interstitial
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitial = createAndLoadInterstitial()
    }
    
    @IBOutlet weak var showAd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the interstitial add with adInid ID
        interstitial = createAndLoadInterstitial()
        //interstitial.delegate = self
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
//*Mark - Ads events  https://developers.google.com/admob/ios/interstitial

/*/// Tells the delegate an ad request succeeded.
 func interstitialDidReceiveAd(_ ad: GADInterstitial) {
 print("interstitialDidReceiveAd")
 }
 
 /// Tells the delegate an ad request failed.
 func interstitial(_ ad: GADInterstitial, didFailToReceiveAdWithError error: GADRequestError) {
 print("interstitial:didFailToReceiveAdWithError: \(error.localizedDescription)")
 }
 
 /// Tells the delegate that an interstitial will be presented.
 func interstitialWillPresentScreen(_ ad: GADInterstitial) {
 print("interstitialWillPresentScreen")
 }
 
 /// Tells the delegate the interstitial is to be animated off the screen.
 func interstitialWillDismissScreen(_ ad: GADInterstitial) {
 print("interstitialWillDismissScreen")
 }
 
 /// Tells the delegate the interstitial had been animated off the screen.
 func interstitialDidDismissScreen(_ ad: GADInterstitial) {
 print("interstitialDidDismissScreen")
 }
 
 /// Tells the delegate that a user click will open another app
 /// (such as the App Store), backgrounding the current app.
 func interstitialWillLeaveApplication(_ ad: GADInterstitial) {
 print("interstitialWillLeaveApplication")
 }
 */

