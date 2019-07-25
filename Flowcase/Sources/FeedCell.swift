//
//  FeedCell.swift
//  FeedConcept
//
//  Created by Travis on 2019-07-23.
//  Copyright © 2019 Travis. All rights reserved.
//

import Foundation
import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var byLine: UILabel!
    @IBOutlet weak var webButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var container: UIView!
    var delegate: FeedCellLikeDelegate!

    /// Variable to hold the data for the cell
    var data: FeedCellData! {
        /// Set labels and image status after a new data object has been set
        didSet {
            title.text = data.title
            byLine.text = data.author
            likeButton.isSelected = data.liked
        }
    }

    override func awakeFromNib() {
        style()
        createButtonTargets()
    }

    /// Styles the cell
    func style() {
        container.layer.cornerRadius = 23.0
        container.layer.masksToBounds = true
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.35
    }

    /// Links buttons with the methods they should trigger
    func createButtonTargets() {
        likeButton.addTarget(self, action: #selector(toggleLikeButton(sender:)), for: UIControl.Event.touchUpInside)
        webButton.addTarget(self, action: #selector(launchWeb(sender:)), for: UIControl.Event.touchUpInside)
    }

    /// Toggles the visible status of the like buttton
    @objc
    func toggleLikeButton(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        data.liked = sender.isSelected
        delegate.likeStatusChanged(cell: self)
    }

    /// Launches Safari
    @objc
    func launchWeb(sender: UIButton) {
        guard let url = URL(string: data.url), UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

/// For linking the cell with its delegate, allowing another object to know when the like button changed
protocol FeedCellLikeDelegate {
    func likeStatusChanged(cell: FeedCell)
}
