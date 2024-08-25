//
//  PostCell.swift
//  GroceryAppUI
//
//  Created by Vijay Lal on 20/08/24.
//

import Foundation
import UIKit
class PostCell: UITableViewCell, UICollectionViewDelegateFlowLayout{
    var MiniPictureArray = ["four", "man"]
    var HomePagePictureArray = ["sea", "fishing"]
    var nameDetailArray = ["Diana Susan", "Danial Mike"]
    var yearDetailArray = ["28-09-2022", "20-7-2024"]
    @IBOutlet weak var pictureCollectionView: UICollectionView!
    override func awakeFromNib() {
        pictureCollectionView.delegate = self
        pictureCollectionView.dataSource = self
    }
}
extension PostCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCollectionViewCell", for: indexPath) as! sectionCollectionViewCell
        cell.miniProfilePicture.image = UIImage(named: MiniPictureArray[indexPath.row])
        cell.postImages.image = UIImage(named: HomePagePictureArray[indexPath.row])
        cell.nameDetails.text = nameDetailArray[indexPath.row]
        cell.yearDetails.text = yearDetailArray[indexPath.row]
        return cell
    }
//    func cellHeight() -> Int {
//        let layout = pictureCollectionView.collectionViewLayout as! UICollectionViewLayout
//        let numberOfItems = pictureCollectionView.numberOfItems(inSection: 0)
//        let height = Int(pictureCollectionView.contentSize.height) * numberOfItems
//        return height
//    }
    
}
