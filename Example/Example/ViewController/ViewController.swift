//
//  ViewController.swift
//  Example
//
//  Created by William.Weng on 2022/12/15.
//  ~/Library/Caches/org.swift.swiftpm/
//  file:///Users/william/Desktop/WWCropViewController

import UIKit
import WWPrint
import WWSignInWith3rd_Apple
import WWSignInWith3rd_LINE

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initSetting()
    }
    
    /// [Line 第三方登入](https://developers.line.biz)
    @IBAction func signInWithLine(_ sender: UIButton) {
        
        WWSignInWith3rd.LINE.shared.login(presenting: self) { result in
            wwPrint(result)
        }
    }
}

// MARK: - 小工具
extension ViewController {
    
    func initSetting() {
        
        let channelId = "<channelId>"
        let channelSecret = "<channelSecret>"
        let universalLinkURL = "<universalLinkURL>"
        
        WWSignInWith3rd.LINE.shared.configure(channelId: channelId, channelSecret: channelSecret, universalLinkURL: universalLinkURL)
    }
}

