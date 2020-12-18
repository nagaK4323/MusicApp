//
//  TableViewCell.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import UIKit

class TableViewCell: UITableViewCell {

//    @IBOutlet weak var ArtistImageView: UIImageView!
    @IBOutlet weak var ArtistName: UILabel!
    
    @IBOutlet weak var songName: UILabel!
        
    @IBOutlet weak var CountryLabel: UILabel!
    var artist : Result? {
        didSet {
            ArtistName.text = "Artist Name: \(String(describing: artist?.artistName))"
            songName.text = "Song Name: \(String(describing: artist?.collectionCensoredName))"
            CountryLabel.text = "Country: \(String(describing: artist?.country))"
//            ArtistImageView.loadThumbnail(urlSting: artist?.artworkUrl60 ?? "")
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
    
}
