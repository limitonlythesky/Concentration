//
//  CardCell.swift
//  Concetration
//
//  Created by Danel Baikadamova on 27.02.2022.
//

import UIKit
import SnapKit

class CardCell: UICollectionViewCell {

    // MARK: - Properties
    
    private let frontImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let backImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = Colors.hiddenCardBackground
        return iv
    }()
    
    var card: Card? {
        didSet {
            guard let card = card else { return }
            frontImageView.image = card.image
            
            frontImageView.layer.cornerRadius = 5.0
            backImageView.layer.cornerRadius = 5.0
            
            frontImageView.layer.masksToBounds = true
            backImageView.layer.masksToBounds = true
        }
    }
    
    var shown: Bool = false
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        [backImageView, frontImageView].forEach { self.addSubview($0) }
        
        [backImageView, frontImageView].forEach { $0.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        } }
    }
    
    // MARK: - Methods

    func showCard(_ show: Bool, animated: Bool) {
        frontImageView.isHidden = false
        backImageView.isHidden = false
        shown = show
        
        if animated {
            if show {
                UIView.transition(
                    from: backImageView,
                    to: frontImageView,
                    duration: 0.5,
                    options: [.transitionFlipFromRight, .showHideTransitionViews],
                    completion: { (finished: Bool) -> () in
                })
            } else {
                UIView.transition(
                    from: frontImageView,
                    to: backImageView,
                    duration: 0.5,
                    options: [.transitionFlipFromRight, .showHideTransitionViews],
                    completion:  { (finished: Bool) -> () in
                })
            }
        } else {
            if show {
                bringSubviewToFront(frontImageView)
                backImageView.isHidden = true
            } else {
                bringSubviewToFront(backImageView)
                frontImageView.isHidden = true
            }
        }
    }
}

