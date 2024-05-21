//
//  ViewController.swift
//  KakaoProfile
//
//  Created by Minjae Kim on 5/21/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topButtons: [UIButton]!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    
    @IBOutlet var bottomButtons: [UIButton]!
    @IBOutlet var bottomLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }

    private func configUI() {
        backgroundImageConfig()
        topButtonConfig()
        profileImageConfig()
        labelConfig(self.profileNameLabel, 
                    text: "스티치",
                    font: .boldSystemFont(ofSize: 20))
        labelConfig(self.descriptionLabel, 
                    text: "노는 게 제일 좋아.",
                    font: .systemFont(ofSize: 15))
        dividerConfig()
        bottomButtonConfig()
        bottomLabelConfig()
    }
    
    private func backgroundImageConfig() {
        let image = UIImage.background.withRenderingMode(.alwaysOriginal)
        self.backgroundImageView.image = image
        self.backgroundImageView.contentMode = .scaleAspectFill
        
    }
    
    private func topButtonConfig() {
        let buttonImages: [UIImage?] = [UIImage(systemName: "xmark"), UIImage(systemName: "gift.circle"), UIImage(systemName: "circle.grid.3x3.circle"), UIImage(systemName: "gearshape.circle")]
        
        for i in 0..<topButtons.count {
            let button = self.topButtons[i]
            
            button.setImage(buttonImages[i], for: .normal)
            button.tintColor = .white
        }
    }
    
    private func profileImageConfig() {
        let image = UIImage.stitch.withRenderingMode(.alwaysOriginal)
        self.profileImageView.image = image
        self.profileImageView.contentMode = .scaleAspectFill
        self.profileImageView.layer.cornerRadius = 50
    }
    
    private func labelConfig(_ label: UILabel, text: String, font: UIFont) {
        label.text = text
        label.textColor = .white
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = font
    }
    
    private func dividerConfig() {
        self.dividerView.backgroundColor = .darkGray
    }
    
    private func bottomButtonConfig() {
        let buttonImages: [UIImage?] = [UIImage(systemName: "message.fill"), UIImage(systemName: "pencil"), UIImage(systemName: "quote.closing")]
        
        for i in 0..<bottomButtons.count {
            let button = self.bottomButtons[i]
            
            button.setImage(buttonImages[i], for: .normal)
            button.tintColor = .white
        }
    }
    
    private func bottomLabelConfig() {
        let labelTexts = ["나와의 채팅", "프로필 편집", "카카오스토리"]
        
        for i in 0..<bottomLabels.count {
            let label = self.bottomLabels[i]
            
            label.text = labelTexts[i]
            label.font = .systemFont(ofSize: 11)
            label.textColor = .white
            label.textAlignment = .center
            label.numberOfLines = 1
        }
    }
}

