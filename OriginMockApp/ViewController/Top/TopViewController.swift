//
//  ViewController.swift
//  OriginMockApp
//
//  Created by Hiroaki-Hirabayashi on 2022/05/23.
//

import UIKit

/// Top画面
final class TopViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Top"
        let cellName = String(describing: TopCollectionViewCell.self)
        collectionView.register(UINib(nibName: cellName, bundle: nil), forCellWithReuseIdentifier: TopCollectionViewCell.cellId)
    }

    // MARK: - IBActions
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension TopViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopCollectionViewCell.cellId, for: indexPath) as? TopCollectionViewCell else {
            fatalError("TopCollectionViewCell読み込み失敗")
        }
        return cell
    }

    
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension TopViewController: UICollectionViewDelegateFlowLayout {

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

      return collectionView.bounds.size
  }
}

