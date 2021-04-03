//
//  DetailViewController.swift
//  MilestoneChallenge1-3
//
//  Created by Marko Zivanovic on 3.4.21..
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var pictureView: UIImageView!
    
    var selectedPicture: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareFlag))
        
        if let imageToLoad = selectedPicture {
            pictureView.image = UIImage(named: imageToLoad)
        }

    }
    @objc func shareFlag() {
        let dvc = UIActivityViewController(activityItems: [selectedPicture!], applicationActivities: [])
        dvc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(dvc, animated: true)
    }
    
}
