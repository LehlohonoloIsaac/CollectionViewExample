//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by dvt on 2017/11/01.
//  Copyright © 2017 dvt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var images = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        (0...700).forEach({
            print($0)
            images.append("\($0)")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController: UICollectionViewDelegate {

}

extension ViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! MyCollectionViewCell
        cell.thumbnailImage.image = UIImage(named: "\(images[indexPath.row])")
        return cell
    }
}

