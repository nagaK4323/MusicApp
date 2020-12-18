//
//  ViewController.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import UIKit

class ViewController: UIViewController {

    private var musicVM : MusicViewModel!
    private var dataSource : MusicTableViewDataSource<TableViewCell,Result>!

    @IBOutlet weak var ArstistTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        ArstistTableView.register(nib, forCellReuseIdentifier: "ArtistCell")

        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
         
         self.musicVM =  MusicViewModel()
        self.musicVM.bindMusicViewModelToController = {
            self.updateDataSource()
        }
        
     }
     
     func updateDataSource(){
         

        self.dataSource = MusicTableViewDataSource(cellIdentifier: "ArtistCell", items: self.musicVM.artistData.results , configureCell: { (cell, artist) in
            
            cell.ArtistName.text = "Artist Name: \(artist.artistName)"
            cell.songName.text = "Song Name : \(artist.collectionName ?? " N/A ")"
            cell.CountryLabel.text = "Country : \(artist.country ?? " N/A ")"
         })
        
       
        
         DispatchQueue.main.async {
             self.ArstistTableView.dataSource = self.dataSource
             self.ArstistTableView.reloadData()
         }
     }

}

