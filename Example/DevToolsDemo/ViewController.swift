//
//  ViewController.swift
//  DevToolsDemo
//
//  Created by Insu Byeon on 2022/11/09.
//

import UIKit
import DevTools

extension Bundle {
    var name: String {
        return bundleIdentifier!
    }
}

class ViewController: UIViewController {

    let logger = Logger(label: "\(Bundle.main.name).\(String(describing: ViewController.self))")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logger.info("Called viewDidLoad method")
        
        let subview = UIView()
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.backgroundColor = .systemBlue
        
        view.addSubview(subview)
        
        NSLayoutConstraint.activate([
            subview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            subview.widthAnchor.constraint(equalToConstant: 60),
            subview.heightAnchor.constraint(equalToConstant: 60),
            subview.heightAnchor.constraint(equalToConstant: 49) // ❌ Conflict!
        ])
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        logger.info("Called viewDidLayoutSubviews method")
    }

}

