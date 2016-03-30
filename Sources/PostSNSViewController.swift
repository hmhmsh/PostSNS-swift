//
//  PostSNSViewController.swift
//  PostSNS-swift
//
//  Created by 長谷川瞬哉 on 2016/03/30.
//  Copyright © 2016年 長谷川瞬哉. All rights reserved.
//

import Foundation
import UIKit
import Social

class PostSNSViewController: NSObject {
	
	static func showPostSNS(parent: UIViewController, activityItems: [AnyObject]?, excludedActivityTypes: [String]?) {
		
		let avc = UIActivityViewController(activityItems: activityItems ?? [], applicationActivities: nil)
		
		avc.excludedActivityTypes = excludedActivityTypes
		
		parent.presentViewController(avc, animated: true, completion: nil)

	}
}