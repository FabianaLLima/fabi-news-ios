//
//  NewsLargeImageTableViewCell.swift
//  fabi-news-ios
//
//  Created by Anderson Chagas on 18/05/22.
//

import UIKit

class NewsLargeImageTableViewCell: UITableViewCell {

    @IBOutlet weak var largeImageView: UIImageView!
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func config(image: UIImage, source: String, title: String) {
        largeImageView.image = image
        self.source.text = source
        self.title.text = title
    }

}
