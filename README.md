# PostSNS-swift

SNSへの投稿ライブラリ

# Usage

    // 共有する項目
    let shareText = "testText"
    let shareWebsite = NSURL(string: "https://www.apple.co.jp")!
    // let shareImage = UIImage(named: "test.jpg")!
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
