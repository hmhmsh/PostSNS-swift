//
//  ViewController.swift
//  PostSNS-swift
//
//  Created by 長谷川瞬哉 on 2016/03/30.
//  Copyright © 2016年 長谷川瞬哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let button = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
		button.setTitle("共有", forState: UIControlState.Normal)
		button.backgroundColor = UIColor.lightGrayColor()
		button.addTarget(self, action: #selector(ViewController.push(_:)), forControlEvents: UIControlEvents.TouchUpInside)
		self.view.addSubview(button)
	}

	func push(button: UIButton) {
		
		// 共有する項目
		let shareText = "testText"
		let shareWebsite = NSURL(string: "https://www.apple.co.jp")!
//		let shareImage = UIImage(named: "test.jpg")!
		let shareItems = [shareText, shareWebsite]

		// 使用しないアクティビティタイプ
		let excludedActivityTypes = [
			UIActivityTypePostToWeibo,
			UIActivityTypeSaveToCameraRoll,
			UIActivityTypePrint,
			UIActivityTypeCopyToPasteboard,
			UIActivityTypeAirDrop,
			UIActivityTypeAssignToContact,
			UIActivityTypeAddToReadingList,
			UIActivityTypeMail,
			UIActivityTypeMessage
		]

		PostSNSViewController.showPostSNS(self, activityItems: shareItems, excludedActivityTypes: excludedActivityTypes)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

