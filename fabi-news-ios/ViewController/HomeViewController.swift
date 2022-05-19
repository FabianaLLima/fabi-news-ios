//
//  ViewController.swift
//  fabi-news-ios
//
//  Created by Anderson Chagas on 16/05/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let listNews: [NewsViewModel] = [NewsViewModel(title:"qualquer coisa", source: "tudo alguma coisa", image: .checkmark), NewsViewModel(title:"qualquer coisa", source: "tudo alguma coisa", image: .checkmark)]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let newsLargeImage = UINib(nibName: "NewsWithLargeImagem", bundle: .main)
        tableView.register(newsLargeImage, forCellReuseIdentifier: "newsLargeImage")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "newsLargeImage", for: indexPath) as? NewsLargeImageTableViewCell else {
            return UITableViewCell()
        }
        cell.config(viewModel: listNews[indexPath.row])
        return cell
    }
}

