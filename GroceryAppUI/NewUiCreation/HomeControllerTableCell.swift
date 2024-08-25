//
//  HomeControllerTableCell.swift
//  GroceryAppUI
//
//  Created by Vijay Lal on 20/08/24.
//

import Foundation
import UIKit
class HomeControllerTableCell: UITableViewCell, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    lazy var imageview: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    var profileImages = ["one", "two", "three","one", "two", "three","one", "two", "three","one"]
    var bacgroundImages = ["1", "2", "3", "1", "2", "3", "1", "2", "3", "1"]
    override func awakeFromNib() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
extension HomeControllerTableCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewSnapsCollectionViewCell", for: indexPath) as! NewSnapsCollectionViewCell
        cell.profileView.layer.cornerRadius = 20
        cell.profileView.layer.borderWidth = 2
        cell.profileView.layer.borderColor = UIColor.white.cgColor
        cell.profilePicture.image = UIImage(named: profileImages[indexPath.row])
        cell.backgroundProfile.image = UIImage(named: bacgroundImages[indexPath.row])
        cell.backgroundProfile.layer.cornerRadius = 6
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.width / 3
        let h = collectionView.frame.height
        return CGSize(width: w, height: h )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0 , left: 20, bottom: 0, right: 20)
    }
}
