//
//  StatisticsViewController.swift
//  Concetration
//
//  Created by Danel Baikadamova on 26.02.2022.
//

import UIKit
import SnapKit

class StatisticsViewController: UIViewController {
    private let scoreLabel1: UILabel = {
        let scrLbl = UILabel()
        scrLbl.backgroundColor = Colors.labelBackground
        scrLbl.text = "Total Games: \(Statistics.instance.totalGames)"
        scrLbl.font = .systemFont(ofSize: 20, weight: .bold)
        return scrLbl
    }()
    
    private let scoreLabel2: UILabel = {
        let scrLbl = UILabel()
        scrLbl.backgroundColor = Colors.labelBackground
        scrLbl.text = "Total Wins: \(Statistics.instance.totalWins)"
        scrLbl.font = .systemFont(ofSize: 20, weight: .bold)
        return scrLbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.mainBackground
    
        setupUI()
    }
    
    private func setupUI(){
        view.addSubview(scoreLabel1)
        scoreLabel1.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(75)
        }
        
        view.addSubview(scoreLabel2)
        scoreLabel2.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(scoreLabel1.snp.bottom).offset(50)
            make.height.equalTo(75)
        }
    }
}
