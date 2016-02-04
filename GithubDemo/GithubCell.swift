//
//  GithubCell.swift
//  GithubDemo
//
//  Created by Lainie Wright on 2/4/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GithubCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repoContent: GithubRepo! {
        didSet{
            userLabel.text = repoContent.ownerHandle
            repoNameLabel.text = repoContent.name
            starsLabel.text = "\(repoContent.stars!)"
            forksLabel.text = "\(repoContent.forks!)"
            descriptionLabel.text = repoContent.repoDescription
            avatarImageView.setImageWithURL(NSURL(string: repoContent.ownerAvatarURL!)!)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
