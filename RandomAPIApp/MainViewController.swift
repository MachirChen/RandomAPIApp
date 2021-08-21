//
//  MainViewController.swift
//  RandomAPIApp
//
//  Created by Machir on 2021/8/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    func fetchImage() {
        let urlStr = "https://loremflickr.com/320/240"
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    DispatchQueue.main.async {
                        self.imageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()

    }
    

    @IBAction func chanegeImageButton(_ sender: Any) {
        fetchImage()
    }
}
