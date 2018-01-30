//
//  TableHeaderView.swift
//  CollectionViewIntoUIView
//
//  Created by Tsunemasa Hachiya on 2018/01/30.
//  Copyright © 2018年 Tsunemasa Hachiya. All rights reserved.
//

import UIKit

class TableHeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "customCollectionViewCell")
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        loadNib()
    }

    class func instance() -> TableHeaderView {
        return Bundle.main.loadNibNamed("TableHeaderView", owner: self, options: nil)?.first as! TableHeaderView
    }
    
//    private func loadNib() {
//        let view = Bundle.main.loadNibNamed("TableHeaderView", owner: self, options: nil)?.first as! TableHeaderView
//        view.frame = self.bounds
//        self.addSubview(view)
//
//        collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "customCollectionViewCell")
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 150)
    }
}
