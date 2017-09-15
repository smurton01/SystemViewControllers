//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Saya Murton on 9/15/17.
//  Copyright © 2017 Saya Murton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func safariButtonTapped(_ sender: Any) {
    }
    @IBAction func cameraButtonTapped(_ sender: Any) {
    }
    @IBAction func emailButtonTapped(_ sender: Any) {
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

