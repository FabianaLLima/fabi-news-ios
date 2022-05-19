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

    func config(viewModel: NewsViewModel) {
        largeImageView.image = viewModel.image
        self.source.text = viewModel.source
        self.title.text = viewModel.title
    }

}
