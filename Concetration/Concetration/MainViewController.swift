//
//  MainViewController.swift
//  Concetration
//
//  Created by Danel Baikadamova on 26.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let startButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = Colors.buttonBackground
        btn.setTitle("Start new game", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        btn.layer.cornerRadius = 16
        return btn
    }()
    
    private let statisticsButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = Colors.buttonBackground
        btn.setTitle("View Statistics", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        btn.layer.cornerRadius = 16
        return btn
    }()
    
    private let logoImage: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "logo")
        return imgView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Colors.mainBackground
        
        setupUI()
        
        startButton.addTarget(self, action: #selector(handleStartButton), for: .touchUpInside)
        
        statisticsButton.addTarget(self, action: #selector(handleStatisticsButton), for: .touchUpInside)
    }
    
    @objc private func handleStartButton(){
        self.navigationController?.pushViewController(GameViewController(), animated: true)
    }
    
    @objc private func handleStatisticsButton(){
        self.navigationController?.pushViewController(StatisticsViewController(), animated: true)
    }
    
    private func setupUI() {
        
        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(200)
            make.height.equalTo(48)
        }
        
        
        view.addSubview(statisticsButton)
        statisticsButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(startButton.snp.bottom).offset(50)
            make.height.equalTo(48)
        }
        
        view.addSubview(logoImage)
        logoImage.snp.remakeConstraints{ make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(40)
            make.top.equalToSuperview().offset(200)
        }
    }
    

}

