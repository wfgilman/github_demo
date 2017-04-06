//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Sean McRoskey on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starsCountLabel: UILabel!
    @IBOutlet weak var forksCountLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet{
            nameLabel.text = repo.name
            starsCountLabel.text = ("\(repo.stars!)")
            forksCountLabel.text = ("\(repo.forks!)")
            ownerLabel.text = repo.ownerHandle
            avatarImageView.setImageWith(NSURL(string: repo.ownerAvatarURL!) as URL!)
            descriptionLabel.text = repo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        nameLabel.text = nil
        starsCountLabel.text = nil
        forksCountLabel.text = nil
        ownerLabel.text = nil
        avatarImageView.image = nil
        descriptionLabel.text = nil
    }

}
