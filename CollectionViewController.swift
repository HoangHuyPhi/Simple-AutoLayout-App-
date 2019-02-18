//
//  CollectionViewController.swift
//  AutoLayout
//
//  Created by Phi Hoang Huy on 2/17/19.
//  Copyright © 2019 Phi Hoang Huy. All rights reserved.
//

import UIKit


class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .red
        collectionView?.register(pageCell.self, forCellWithReuseIdentifier: "cellPage")
        collectionView?.isPagingEnabled = true
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPage", for: indexPath)
        return cell
    }
    // height of cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    // spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
