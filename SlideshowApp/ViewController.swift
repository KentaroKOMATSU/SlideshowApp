//
//  ViewController.swift
//  SlideshowApp
//
//  Created by P01575 on 2021/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    let imageArr = [
      UIImage(named: "1")!,
 //       UIImage(named: "2")!,
//        UIImage(named: "3")!,
//        UIImage(named: "4")!,
//        UIImage(named: "5")!,
//        UIImage(named: "6")!,
//        UIImage(named: "7")!,
 //       UIImage(named: "8")!,
      UIImage(named: "2")!
    ]

    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imageArr.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SliderCell", for: indexPath) as! SliderCell
    cell.image = imageArr[indexPath.item]
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
  }
  
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    currentIndex = Int(scrollView.contentOffset.x / collectionView.frame.size.width)
  }
}

