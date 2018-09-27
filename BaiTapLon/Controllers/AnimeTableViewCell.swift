//
//  AnimeTableViewCell.swift
//  BaiTapLon
//
//  Created by Vũ Hải Đăng on 9/25/18.
//  Copyright © 2018 haidang.baitaplon. All rights reserved.
//

import UIKit
import Kingfisher

class AnimeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animeImage: UIImageView!
    @IBOutlet weak var animeName: UILabel!
    
    var anime: Anime! {
        didSet {
            animeName.text = anime.title
            if let url = URL(string: anime.image_url) {
                animeImage.kf.setImage(with: url, placeholder: #imageLiteral(resourceName: "default_image"))
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
