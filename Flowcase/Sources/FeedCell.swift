//
//  FeedCell.swift
//  FeedConcept
//
//  Created by Travis on 2019-07-23.
//  Copyright © 2019 Travis. All rights reserved.
//

import Foundation
import UIKit

class FeedCell: UICollectionViewCell, ToggleButtonDelegate {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var byLine: UILabel!
    @IBOutlet weak var webButton: UIButton!
    @IBOutlet weak var likeButton: LikeButtonTimelineButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var container: UIView!
    var delegate: FeedCellLikeDelegate!

    /// Variable to hold the data for the cell
    var data: FeedCellData!

    override func awakeFromNib() {
        style()
        createButtonTargets()
        likeButton.delegate = self
    }

    /// Styles the cell
    func style() {
        container.layer.cornerRadius = 23.0
        container.layer.masksToBounds = true
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.35
        if let bold = UIFont(name: "BasierCircle-Bold", size: title.font.pointSize) {
            title.font = bold
        }
        if let regular = UIFont(name: "BasierCircle-Regular", size: byLine.font.pointSize) {
            byLine.font = regular
        }
    }

    func updateContent() {
        title.text = data.title
        byLine.text = data.author
        likeButton.isSelected = data.liked
    }

    /// Links buttons with the methods they should trigger
    func createButtonTargets() {
        webButton.addTarget(self, action: #selector(launchWeb(sender:)), for: UIControl.Event.touchUpInside)
    }

    /// Launches Safari
    @objc
    func launchWeb(sender: UIButton) {
        guard let url = URL(string: data.url), UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

    func didToggle(sender: ToggleButton) {
        data.liked = sender.isSelected
        delegate.likeStatusChanged(cell: self)
    }
}

/// For linking the cell with its delegate, allowing another object to know when the like button changed
protocol FeedCellLikeDelegate {
    func likeStatusChanged(cell: FeedCell)
}
