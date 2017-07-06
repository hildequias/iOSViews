//
//  NoScrollCollectionView.swift
//  Pods
//
//  Created by Hildequias Silas dos Santos Junior on 05/07/17.
//
//

import UIKit

public class NoScrollCollectionView: UICollectionView {

    override public var contentSize: CGSize {
        
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIViewNoIntrinsicMetric, height: contentSize.height)
    }

}
