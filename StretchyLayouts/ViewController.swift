//
//  ViewController.swift
//  StretchyLayouts
//
//  Created by Simeon on 26/10/17.
//  Copyright © 2017 Enabled. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let button = UIButton(type: .system)
        view.addSubview(button)
        
        button.snp.makeConstraints {
            make in
            
            make.center.equalTo(view)
        }
        
        button.setTitle("Present Stretchy", for: .normal)
        
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }

    @objc private func buttonPressed(_ sender: UIButton) {
        let vc = StretchyViewController()
        
        present(vc, animated: true, completion: nil)
    }
}

