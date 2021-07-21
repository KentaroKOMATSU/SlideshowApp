//
//  SliderCell.swift
//  SlideshowApp
//
//  Created by P01575 on 2021/07/21.
//

import UIKit

class SliderCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!

    var image: UIImage! {
        didSet {
          imgView.image = image
        }
    }
}
