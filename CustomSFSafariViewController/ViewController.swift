//
//  ViewController.swift
//  CustomSFSafariViewController
//
//  Created by mono on 2017/02/14.
//  Copyright © 2017 mono. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    @IBOutlet private weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let webVC = SFSafariViewController(url: URL(string: "http://qiita.com/mono0926")!)
        let webView = webVC.view!
        addChildViewController(webVC)
        webVC.didMove(toParentViewController: self)
        containerView.addSubview(webView)

        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: -64).isActive = true
        webView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        webView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 44).isActive = true
        webView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
    }


    @IBAction func buttonDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "(　´･‿･｀)", message: sender.title(for: .normal)!, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

