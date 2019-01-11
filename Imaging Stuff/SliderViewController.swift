//
//  SliderViewController.swift
//  Imaging Stuff
//
//  Created by Marcos Torres on 1/10/19.
//  Copyright © 2019 HSoft Mobile. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
	
	let images = [ UIImage(named: "girl-1"), UIImage(named: "girl-2"), UIImage(named: "girl-5") ]
	
	@IBOutlet weak var containerView: UIView!
	@IBOutlet weak var mainScrollView: UIScrollView!
	
	var imageViews: [UIImageView] = []
	
	// Slider tutorial by Jared Davidson:
	// https://www.youtube.com/watch?v=LaWnv5sRpho
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		for i in 0..<images.count {
			let imageView = UIImageView()
			imageView.image = images[i]
			imageView.contentMode = .scaleAspectFit
			imageViews.append(imageView)
			mainScrollView.addSubview(imageView)
		}
		
		print("Container:", containerView.frame.width, containerView.frame.height)
		print("Scroll view:", mainScrollView.frame.width, mainScrollView.frame.height)
    }
	
	override func viewDidLayoutSubviews() {
		for i in 0..<images.count {
			let xPos: CGFloat = containerView.frame.width * CGFloat(i)
			imageViews[i].frame = CGRect(x: xPos, y: 0.0, width: containerView.frame.width, height: containerView.frame.height)
		}
		mainScrollView.contentSize.width = containerView.frame.width * CGFloat(images.count)
		
		print("Container:", containerView.frame.width, containerView.frame.height)
		print("Scroll view:", mainScrollView.frame.width, mainScrollView.frame.height)
	}
	
}
