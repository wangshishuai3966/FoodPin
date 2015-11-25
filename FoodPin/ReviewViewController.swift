//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Jessie on 15/11/24.
//  Copyright © 2015年 jay. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var ratingStackView: UIStackView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var goodButton: UIButton!
    @IBOutlet weak var greatButton: UIButton!
    var rating:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let blurEffect = UIBlurEffect(style: .Light)
        
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = view.bounds
        
        backgroundImageView.addSubview(blurEffectView)
        
        //let scale = CGAffineTransformMakeScale(0.0, 0.0)
        
        let translate = CGAffineTransformMakeTranslation(0, 500)
        
        //ratingStackView.transform = CGAffineTransformConcat(scale, translate)
        
        dislikeButton.transform = translate
        
        goodButton.transform = translate
        
        greatButton.transform = translate
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3, delay: 0.0, options: [], animations: {
            self.dislikeButton.transform = CGAffineTransformIdentity
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.3, options: [], animations: {
            self.goodButton.transform = CGAffineTransformIdentity
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.6, options: [], animations: {
            self.greatButton.transform = CGAffineTransformIdentity
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ratingSelected(sender:UIButton){
        
        switch(sender.tag){
        case 100:rating="dislike"
        case 200:rating="good"
            
        case 300:rating="great"
        default:break
        }
        
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
