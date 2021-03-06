//
//  GameItemTableViewCell.swift
//  iOSCarePlus
//
//  Created by Jercy on 2020/12/16.
//

import Kingfisher
import UIKit

class GameItemTableViewCell: UITableViewCell {
    private var model: GameItemModel? {
        didSet {
            setUIFromModel()
        }
    }
    @IBOutlet private weak var gameImageView: UIImageView!
    @IBOutlet private weak var gameTitleLabel: UILabel!
    @IBOutlet private weak var gameOriginPrice: UILabel!
    @IBOutlet private weak var gameCurrentPrice: UILabel!
    
    func setModel(_ model: GameItemModel) {
        self.model = model
    }
    
    func setUIFromModel() {
        guard let model = model else { return }
        
        let imageURL: URL? = URL(string: model.imageURL)
        gameImageView.kf.setImage(with: imageURL)
        
        gameImageView.layer.cornerRadius = 9
        gameImageView.layer.borderWidth = 1
        gameImageView.layer.borderColor = UIColor(red: 236 / 255.0, green: 236 / 255.0, blue: 236 / 255.0, alpha: 1).cgColor
        
        gameTitleLabel.text = model.gameTitle
        if let discountPrice: Int = model.gameDiscountPrice {
            gameCurrentPrice.text = "\(discountPrice)"
            gameOriginPrice.text = "\(model.gameOriginPrice)"
        } else {
            gameCurrentPrice.text = "\(model.gameOriginPrice)"
            gameOriginPrice.isHidden = true
        }
    }
}
