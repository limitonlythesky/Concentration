//
//  WelcomeViewController.swift
//  Concetration
//
//  Created by Danel Baikadamova on 25.02.2022.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Welcome to the game by Danelya"
        lbl.font = .systemFont(ofSize: 28, weight: .bold)
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
    }()
    
    private let nextButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = Colors.buttonBackground
        btn.setTitle("Next", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        btn.layer.cornerRadius = 16
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.mainBackground
        
        setupUI()
        
        nextButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
    }
    
    
    @objc private func handleNextButton() {
        self.navigationController?.pushViewController(MainViewController(), animated: true)
    }
    
    
    private func setupUI() {
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(100)
            make.height.equalTo(48)
        }
    }
    
}

